// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.model;

import QQPIM.*;
import android.content.Context;
import android.os.Handler;
import com.a.b.a.e;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.interfaces.ILoginModel;
import com.tencent.qqpim.utils.*;
import com.tencent.qqpim.utils.net.HttpDown;
import com.tencent.qqpim.utils.net.INetEngineObserver;
import com.tencent.tccsync.LoginUtil;
import java.io.*;
import java.util.regex.PatternSyntaxException;
import org.apache.http.HttpEntity;

public class MobileLoginModel
    implements ILoginModel, INetEngineObserver
{

    private MobileLoginModel(Context context, Handler handler)
    {
        configDao = null;
        mHttpEngine = null;
        mContext = null;
        mHandler = null;
        mNetRetryTime = 0;
        userStopped = false;
        configDao = ConfigDao.getInstance(context);
        mContext = context;
        mHandler = handler;
        if(context != null)
            QQPimUtils.APPLICATION_CONTEXT = context.getApplicationContext();
    }

    private byte[] constructLoginData(String s, byte abyte0[])
    {
        byte abyte1[];
        LoginReq loginreq;
        abyte1 = null;
        loginreq = getLoginRequest(s, abyte0);
        if(loginreq != null) goto _L2; else goto _L1
_L1:
        return abyte1;
_L2:
        byte abyte2[];
        e e1 = new e();
        e1.b();
        e1.c("mobile");
        e1.d("mobileLogin");
        e1.a("cinfo", loginreq);
        e1.a("UTF-8");
        abyte2 = e1.a();
        byte abyte3[] = XxteaCryptor.encrypt(abyte2, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        abyte1 = abyte3;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean doRetry()
    {
        boolean flag = false;
        mNetRetryTime = 1 + mNetRetryTime;
        if(3 <= mNetRetryTime)
        {
            mNetRetryTime = ((flag) ? 1 : 0);
        } else
        {
            loginByMd5(loginAccount, md5Password);
            flag = true;
        }
        return flag;
    }

    public static ILoginModel getInstance(Context context, Handler handler)
    {
        return new MobileLoginModel(context, handler);
    }

    private LoginReq getLoginRequest(String s, byte abyte0[])
    {
        LoginReq loginreq = new LoginReq();
        loginreq.setHeader(MobileUtil.getHeader(s, mContext));
        loginreq.setMd5pwd(MD5Util.toHexString(abyte0));
        return loginreq;
    }

    private void initHttpEngine()
    {
        if(mHttpEngine == null)
            mHttpEngine = new HttpDown(this);
        mHttpEngine.setContext(mContext);
    }

    private boolean processInputStream(InputStream inputstream)
    {
        e e1 = MobileUtil.getUniPacketFromInputStream(inputstream);
        if(e1 != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        LoginResp loginresp;
        try
        {
            loginresp = (LoginResp)e1.b("sinfo");
        }
        catch(Exception exception)
        {
            sendMsg(29, 103);
            loginresp = null;
        }
        processLoginResponse(loginresp);
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void processLoginResponse(LoginResp loginresp)
    {
        if(loginresp == null)
        {
            sendMsg(29, 103);
        } else
        {
            int i = loginresp.getHeader().getResult();
            if(i != 0)
            {
                sendMsg(30, i);
            } else
            {
                loginKey = loginresp.getLoginKey();
                LoginInformation logininformation = LoginInformation.getSingleInstance();
                logininformation.setLoginKey(loginKey);
                logininformation.setLoginedAccount(loginAccount);
                logininformation.setLogined(true);
                sendMsg(1, i);
            }
        }
    }

    private void sendMsg(int i, int j)
    {
        android.os.Message message = mHandler.obtainMessage(i, j, 0);
        mHandler.sendMessage(message);
    }

    public void addSavedAccount(String as[], String as1[], int i)
    {
        if(as == null || as1 == null || as.length != as1.length) goto _L2; else goto _L1
_L1:
        StringBuilder stringbuilder;
        int j;
        stringbuilder = new StringBuilder();
        j = 0;
_L6:
        if(j < i) goto _L4; else goto _L3
_L3:
        configDao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.SAVED_MOBILE_ACCOUNT, stringbuilder.toString());
_L2:
        return;
_L4:
        stringbuilder = stringbuilder.append(as[j]).append(":").append(QQPimUtils.getBase64CodeFromString(as1[j]));
        if(j != i + -1)
            stringbuilder = stringbuilder.append(";");
        j++;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void binaryPostResponse(int i, HttpEntity httpentity, String s)
    {
        if(!userStopped) goto _L2; else goto _L1
_L1:
        LoginInformation.getSingleInstance().clearLoginInformation();
        sendMsg(1, -1000);
_L4:
        return;
_L2:
        if(200 != i || httpentity == null)
        {
            if(!doRetry())
                sendMsg(28, -1);
        } else
        {
            try
            {
                mNetRetryTime = 0;
                if(!processInputStream(httpentity.getContent()))
                    sendMsg(29, 103);
            }
            catch(IllegalStateException illegalstateexception)
            {
                sendMsg(29, 103);
            }
            catch(IOException ioexception)
            {
                sendMsg(29, 103);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public String getDefaultAccount()
    {
        return configDao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_MOBILE_ACCOUNT);
    }

    public String getDefaultPWD()
    {
        return QQPimUtils.getStringFromBase64Code(configDao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_MOBILE_MD5PWD));
    }

    public String getLoginKey()
    {
        return loginKey;
    }

    public int getSavedAccount(String as[], String as1[], int i)
    {
        int j;
        String s;
        j = 0;
        QQPimUtils.writeToLog("MobileLoginModel", "getSavedAccount enter");
        s = configDao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.SAVED_MOBILE_ACCOUNT);
        QQPimUtils.writeToLog("MobileLoginModel", (new StringBuilder("accounts = ")).append(s).toString());
        if(s.length() <= 0)
            break MISSING_BLOCK_LABEL_278;
        String as2[];
        int k;
        as2 = s.split(";");
        if(as2 == null)
            break MISSING_BLOCK_LABEL_278;
        k = as2.length;
        Throwable throwable;
        PatternSyntaxException patternsyntaxexception;
        NullPointerException nullpointerexception;
        int l;
        int i1;
        if(k <= i)
            i = k;
        l = j;
        if(l < i) goto _L2; else goto _L1
_L1:
        QQPimUtils.writeToLog("MobileLoginModel", (new StringBuilder("getSavedAccount leave ret =")).append(i).toString());
        j = i;
_L4:
        return j;
_L2:
        i1 = as2[l].indexOf(":");
        as[l] = as2[l].substring(0, i1);
        as1[l] = QQPimUtils.getStringFromBase64Code(as2[l].substring(i1 + 1));
        l++;
        break MISSING_BLOCK_LABEL_88;
        nullpointerexception;
        QQPimUtils.writeToLog("MobileLoginModel", (new StringBuilder("getSavedAccount NullPointerException ")).append(nullpointerexception.getMessage()).toString());
        continue; /* Loop/switch isn't completed */
        patternsyntaxexception;
        QQPimUtils.writeToLog("MobileLoginModel", (new StringBuilder("getSavedAccount PatternSyntaxException ")).append(patternsyntaxexception.getMessage()).toString());
        continue; /* Loop/switch isn't completed */
        throwable;
        QQPimUtils.writeToLog("MobileLoginModel", (new StringBuilder("getSavedAccount Throwable ")).append(throwable.getMessage()).toString());
        if(true) goto _L4; else goto _L3
_L3:
        i = j;
        if(true) goto _L1; else goto _L5
_L5:
    }

    public boolean getSavedLoginPWDFlag()
    {
        return configDao.getBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.AUTO_LOGIN_FLAG_MOBILE);
    }

    public String getVerifyImageURL()
    {
        return null;
    }

    public int inputPimMD5Password(byte abyte0[])
    {
        return 0;
    }

    public int inputPimPassword(String s)
    {
        return 0;
    }

    public int inputVerifyCode(String s)
    {
        return 0;
    }

    public boolean isUserStopped()
    {
        return userStopped;
    }

    public int login(String s, String s1)
    {
        return 0;
    }

    public int loginByMd5(String s, byte abyte0[])
    {
        boolean flag = false;
        userStopped = flag;
        initHttpEngine();
        loginAccount = s;
        md5Password = abyte0;
        byte abyte1[] = constructLoginData(s, abyte0);
        if(abyte1 == null)
            flag = 201;
        else
            mHttpEngine.binaryRequest(QQPimUtils.getMobileServerURL(), abyte1);
        return ((flag) ? 1 : 0);
    }

    public void setDefaultAccount(String s)
    {
        configDao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_MOBILE_ACCOUNT, s);
    }

    public void setDefaultPWD(String s)
    {
        configDao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_MOBILE_MD5PWD, QQPimUtils.getBase64CodeFromString(s));
    }

    public void setSavedLoginPWDFlag(boolean flag)
    {
        configDao.setBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.AUTO_LOGIN_FLAG_MOBILE, flag);
    }

    public void stop()
    {
        QQPimUtils.writeToLog("MobileLoginModel", "stop");
        userStopped = true;
    }

    private static final int MAXNetRetryTime = 3;
    private IConfigDao configDao;
    protected int cryptType;
    protected String ctrlRecord;
    protected String imei;
    protected String lcString;
    protected String loginAccount;
    protected String loginKey;
    protected LoginUtil loginUtil;
    private Context mContext;
    private Handler mHandler;
    private HttpDown mHttpEngine;
    private int mNetRetryTime;
    protected byte md5Password[];
    protected byte md5PimPws[];
    protected String serverHost;
    private boolean userStopped;
    protected String verifyCode;
}

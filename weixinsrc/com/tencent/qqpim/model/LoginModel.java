// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.model;

import android.content.Context;
import com.tencent.a.b.e;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.interfaces.ILoginModel;
import com.tencent.qqpim.utils.*;
import com.tencent.tccsync.LoginUtil;
import com.tencent.tccsync.LoginUtilException;
import java.util.regex.PatternSyntaxException;

public class LoginModel
    implements ILoginModel
{

    private LoginModel(Context context)
    {
        configDao = null;
        userStopped = false;
        loginUtil = new LoginUtil();
        initLoginParam();
        configDao = ConfigDao.getInstance(context);
        if(context != null)
            QQPimUtils.APPLICATION_CONTEXT = context.getApplicationContext();
    }

    public static ILoginModel getInstance(Context context)
    {
        return new LoginModel(context);
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
        configDao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.SAVED_ACCOUNT, stringbuilder.toString());
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

    public String getDefaultAccount()
    {
        return configDao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_ACCOUNT);
    }

    public String getDefaultPWD()
    {
        return QQPimUtils.getStringFromBase64Code(configDao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_MD5PWD));
    }

    public String getLoginKey()
    {
        return loginUtil.getKey();
    }

    public int getSavedAccount(String as[], String as1[], int i)
    {
        int j;
        String s;
        j = 0;
        QQPimUtils.writeToLog("LoginModel", "getSavedAccount enter");
        s = configDao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.SAVED_ACCOUNT);
        QQPimUtils.writeToLog("LoginModel", (new StringBuilder("accounts = ")).append(s).toString());
        if(s.length() <= 0)
            break MISSING_BLOCK_LABEL_264;
        String as2[];
        int k;
        as2 = s.split(";");
        if(as2 == null)
            break MISSING_BLOCK_LABEL_264;
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
        QQPimUtils.writeToLog("LoginModel", (new StringBuilder("getSavedAccount leave ret =")).append(i).toString());
        j = i;
_L4:
        return j;
_L2:
        i1 = as2[l].indexOf(":");
        as[l] = as2[l].substring(0, i1);
        as1[l] = QQPimUtils.getStringFromBase64Code(as2[l].substring(i1 + 1));
        l++;
        break MISSING_BLOCK_LABEL_83;
        nullpointerexception;
        QQPimUtils.writeToLog("LoginModel", (new StringBuilder("getSavedAccount NullPointerException ")).append(nullpointerexception.getMessage()).toString());
        continue; /* Loop/switch isn't completed */
        patternsyntaxexception;
        QQPimUtils.writeToLog("LoginModel", (new StringBuilder("getSavedAccount PatternSyntaxException ")).append(patternsyntaxexception.getMessage()).toString());
        continue; /* Loop/switch isn't completed */
        throwable;
        QQPimUtils.writeToLog("LoginModel", (new StringBuilder("getSavedAccount Throwable ")).append(throwable.getMessage()).toString());
        if(true) goto _L4; else goto _L3
_L3:
        i = j;
        if(true) goto _L1; else goto _L5
_L5:
    }

    public boolean getSavedLoginPWDFlag()
    {
        return configDao.getBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.AUTO_LOGIN_FLAG);
    }

    public String getVerifyImageURL()
    {
        return loginUtil.getVerifyImageUrl();
    }

    protected void initLoginParam()
    {
        loginAccount = "";
        md5Password = null;
        md5PimPws = null;
        verifyCode = "";
        serverHost = QQPimUtils.getServerURL();
        imei = QQPimUtils.getUniqueMachineAppID(e.a());
        lcString = QQPimUtils.getLCString();
        ctrlRecord = "";
        cryptType = 16;
    }

    public int inputPimMD5Password(byte abyte0[])
    {
        md5PimPws = abyte0;
        return loginByMd5(loginAccount, md5Password);
    }

    public int inputPimPassword(String s)
    {
        md5PimPws = QQPimUtils.getMD5(s);
        return loginByMd5(loginAccount, md5Password);
    }

    public int inputVerifyCode(String s)
    {
        verifyCode = s;
        return loginByMd5(loginAccount, md5Password);
    }

    public boolean isUserStopped()
    {
        return userStopped;
    }

    public int login(String s, String s1)
    {
        loginAccount = s;
        md5Password = QQPimUtils.getMD5(s1);
        return loginByMd5(loginAccount, md5Password);
    }

    public int loginByMd5(String s, byte abyte0[])
    {
        userStopped = false;
        int i;
        try
        {
            loginAccount = s;
            md5Password = abyte0;
            if(userStopped)
            {
                i = -1000;
            } else
            {
                loginUtil.makeLoginRequestPackageMd5(serverHost, s, abyte0, md5PimPws, verifyCode, imei, lcString, ctrlRecord, 0, cryptType);
                if(userStopped)
                {
                    i = -1000;
                } else
                {
                    String s1 = loginUtil.getPostUrl();
                    byte abyte1[] = loginUtil.getPostBody();
                    HttpHelper httphelper = new HttpHelper();
                    if(userStopped)
                        i = -1000;
                    else
                    if(httphelper.postLogin(s1, abyte1) < 0)
                    {
                        initLoginParam();
                        loginUtil.clear();
                        QQPimUtils.writeToLog("[loginByMd5]", "post err");
                        i = -100;
                    } else
                    if(userStopped)
                    {
                        i = -1000;
                    } else
                    {
                        byte abyte2[] = httphelper.recv();
                        if(abyte2 == null)
                        {
                            initLoginParam();
                            loginUtil.clear();
                            QQPimUtils.writeToLog("[loginByMd5]", "recv err");
                            i = -100;
                        } else
                        if(userStopped)
                        {
                            i = -1000;
                        } else
                        {
                            i = loginUtil.solveLoginResponPackge(abyte2, abyte2.length);
                            if(userStopped)
                            {
                                LoginInformation.getSingleInstance().clearLoginInformation();
                                i = -1000;
                            } else
                            {
                                if(i == 0)
                                {
                                    loginKey = loginUtil.getKey();
                                    LoginInformation logininformation = LoginInformation.getSingleInstance();
                                    logininformation.setLoginKey(loginKey);
                                    logininformation.setLoginedAccount(loginAccount);
                                    logininformation.setLogined(true);
                                }
                                if(i != 101 && i != 209)
                                    loginUtil.clear();
                            }
                        }
                    }
                }
            }
        }
        catch(LoginUtilException loginutilexception)
        {
            QQPimUtils.writeToLog("ERR", loginutilexception.getMessage());
            i = -101;
        }
        catch(Throwable throwable)
        {
            QQPimUtils.writeToLog("ERR", throwable.getMessage());
            i = -101;
        }
        return i;
    }

    public void setDefaultAccount(String s)
    {
        configDao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_ACCOUNT, s);
    }

    public void setDefaultPWD(String s)
    {
        configDao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_MD5PWD, QQPimUtils.getBase64CodeFromString(s));
    }

    public void setSavedLoginPWDFlag(boolean flag)
    {
        configDao.setBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.AUTO_LOGIN_FLAG, flag);
    }

    public void stop()
    {
        QQPimUtils.writeToLog("LoginModel", "stop");
        userStopped = true;
    }

    public static final int MAX_SAVEDACCOUNT = 10;
    private IConfigDao configDao;
    protected int cryptType;
    protected String ctrlRecord;
    protected String imei;
    protected String lcString;
    protected String loginAccount;
    protected String loginKey;
    protected LoginUtil loginUtil;
    protected byte md5Password[];
    protected byte md5PimPws[];
    protected String serverHost;
    private boolean userStopped;
    protected String verifyCode;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import QQPIM.*;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.a.b.a.e;
import com.tencent.a.b.f;
import com.tencent.qqpim.UI.utils.SimpleTimer;
import com.tencent.qqpim.interfaces.ITimerHandler;
import com.tencent.qqpim.utils.net.HttpDown;
import com.tencent.qqpim.utils.net.INetEngineObserver;
import java.io.*;
import org.apache.http.HttpEntity;

// Referenced classes of package com.tencent.qqpim.utils:
//            MobileUtil, XxteaCryptor, QQPimUtils, MD5Util

public class MobileRegisterUtil
    implements ITimerHandler, INetEngineObserver
{

    public MobileRegisterUtil(Context context, Handler handler)
    {
        mContext = null;
        mHttpEngine = null;
        mCallbackHandler = null;
        mCurrentOperationStatus = -1;
        mAccount = "";
        mPWD = "";
        mMode = -1;
        mTimer = null;
        mWaitingTime = 30;
        mNetRetryTime = 0;
        mContext = context;
        mCallbackHandler = handler;
    }

    private byte[] constructGetStatusData(String s)
    {
        byte abyte0[];
        QQPIM.ReqHeader reqheader;
        abyte0 = null;
        reqheader = MobileUtil.getHeader(s, mContext);
        if(reqheader != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        byte abyte1[];
        StatusReq statusreq = new StatusReq();
        statusreq.setHeader(reqheader);
        e e1 = new e();
        e1.b();
        e1.c("mobile");
        e1.d("getRegStatus");
        e1.a("cinfo", statusreq);
        e1.a("UTF-8");
        abyte1 = e1.a();
        byte abyte2[] = XxteaCryptor.encrypt(abyte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        abyte0 = abyte2;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private byte[] constructGetSupportModeData()
    {
        byte abyte0[];
        RegReq regreq;
        abyte0 = null;
        regreq = getQuerySupportModeRequest();
        if(regreq != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        byte abyte1[];
        e e1 = new e();
        e1.b();
        e1.c("mobile");
        e1.d("validateMobile");
        e1.a("cinfo", regreq);
        e1.a("UTF-8");
        abyte1 = e1.a();
        byte abyte2[] = XxteaCryptor.encrypt(abyte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        abyte0 = abyte2;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private byte[] constructRegisterData(String s, String s1, byte byte0)
    {
        byte abyte0[];
        RegReq regreq;
        abyte0 = null;
        regreq = getRegisterRequest(s, s1, byte0);
        if(regreq != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        byte abyte1[];
        e e1 = new e();
        e1.b();
        e1.c("mobile");
        e1.d("validateMobile");
        e1.a("cinfo", regreq);
        e1.a("UTF-8");
        abyte1 = e1.a();
        byte abyte2[] = XxteaCryptor.encrypt(abyte1, "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        abyte0 = abyte2;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean doRetry()
    {
        boolean flag;
        flag = false;
        mNetRetryTime = 1 + mNetRetryTime;
        if(3 > mNetRetryTime) goto _L2; else goto _L1
_L1:
        mNetRetryTime = ((flag) ? 1 : 0);
_L3:
        return flag;
_L2:
        mCurrentOperationStatus;
        JVM INSTR tableswitch 0 3: default 60
    //                   0 63
    //                   1 60
    //                   2 91
    //                   3 84;
           goto _L3 _L4 _L3 _L5 _L6
_L4:
        register(mAccount, mPWD, mMode);
_L7:
        flag = true;
          goto _L3
_L6:
        startQueryIsSuccess();
          goto _L7
_L5:
        getSupportMode();
          goto _L7
    }

    private RegReq getQuerySupportModeRequest()
    {
        RegReq regreq = new RegReq();
        QQPIM.ReqHeader reqheader = MobileUtil.getHeader(mContext);
        if(reqheader == null)
        {
            regreq = null;
        } else
        {
            regreq.setHeader(reqheader);
            regreq.setMd5pwd("");
            regreq.setRegMethod((byte)1);
        }
        return regreq;
    }

    private RegReq getRegisterRequest(String s, String s1, byte byte0)
    {
        RegReq regreq = new RegReq();
        QQPIM.ReqHeader reqheader = MobileUtil.getHeader(s, mContext);
        if(reqheader == null)
        {
            regreq = null;
        } else
        {
            regreq.setHeader(reqheader);
            regreq.setMd5pwd(MD5Util.toHexString(QQPimUtils.getMD5(s1)));
            regreq.setRegMethod(byte0);
        }
        return regreq;
    }

    private void handleRegisterSuccess()
    {
        if(mTimer != null)
            mTimer.stopTimer();
        sendMsg(29, 101);
    }

    private void handleRegisterTimeOut()
    {
        mCurrentOperationStatus = -1;
        sendMsg(29, 102, 0, mAccount);
    }

    private void initData()
    {
        mCurrentOperationStatus = -1;
        mAccount = "";
        mPWD = "";
        mMode = -1;
        if(mTimer != null)
            mTimer.stopTimer();
        mWaitingTime = 30;
    }

    private void initHttpEngine()
    {
        if(mHttpEngine == null)
            mHttpEngine = new HttpDown(this);
        mHttpEngine.setContext(mContext);
    }

    private void processGetStatusResponse(StatusResp statusresp)
    {
        if(statusresp == null)
        {
            sendMsg(29, 105);
        } else
        {
            int i = statusresp.getHeader().getResult();
            if(i != 0)
            {
                if(-1 != mCurrentOperationStatus)
                    startQueryIsSuccess();
                else
                    sendMsg(30, i);
            } else
            {
                if(3 == mCurrentOperationStatus)
                {
                    mAccount = statusresp.getMobileno();
                    if(mAccount != null && mAccount.startsWith("+86"))
                    {
                        MobileUtil.setAreaCode("+86");
                        MobileUtil.setAccount(mAccount.substring("+86".length()));
                    }
                }
                handleRegisterSuccess();
            }
        }
    }

    private void processGetSupportModeResponse(RegResp regresp)
    {
        if(regresp == null)
            sendMsg(29, 103);
        else
        if(regresp.getHeader().getResult() != 0)
            sendMsg(29, 109);
        else
        if(1 == regresp.getRegMethod())
            sendMsg(26, 107);
        else
            sendMsg(26, 108);
    }

    private boolean processInputStream(InputStream inputstream)
    {
        e e1 = MobileUtil.getUniPacketFromInputStream(inputstream);
        if(e1 != null) goto _L2; else goto _L1
_L1:
        boolean flag;
        sendMsg(29, 103);
        flag = false;
_L4:
        return flag;
_L2:
        if(mCurrentOperationStatus != 0)
            break; /* Loop/switch isn't completed */
        processRegisterResponse((RegResp)e1.b("sinfo"));
_L5:
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
        if(1 == mCurrentOperationStatus || 3 == mCurrentOperationStatus)
            processGetStatusResponse((StatusResp)e1.b("sinfo"));
        else
        if(2 == mCurrentOperationStatus)
            processGetSupportModeResponse((RegResp)e1.b("sinfo"));
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private void processRegisterResponse(RegResp regresp)
    {
        if(regresp != null) goto _L2; else goto _L1
_L1:
        sendMsg(29, 103);
_L4:
        return;
_L2:
        int i = regresp.getHeader().getResult();
        if(i != 0)
        {
            sendMsg(30, i);
        } else
        {
            String s = regresp.getAccessNum();
            String s1 = regresp.getVerifyCode();
            byte byte0 = regresp.getRegMethod();
            if(1 == byte0)
            {
                sendSms(s, s1);
                startTimer(1000);
            } else
            if(2 == byte0)
                sendMsg(29, 106);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void sendMsg(int i, int j)
    {
        android.os.Message message = mCallbackHandler.obtainMessage(i, j, 0);
        mCallbackHandler.sendMessage(message);
    }

    private void sendMsg(int i, int j, int k)
    {
        android.os.Message message = mCallbackHandler.obtainMessage(i, j, k);
        mCallbackHandler.sendMessage(message);
    }

    private void sendMsg(int i, int j, int k, String s)
    {
        android.os.Message message = mCallbackHandler.obtainMessage(i, j, k, s);
        mCallbackHandler.sendMessage(message);
    }

    private boolean sendSms(String s, String s1)
    {
        boolean flag = false;
        if(s != null && s1 != null && s.length() > 0 && s1.length() > 0)
        {
            Intent intent = new Intent("com.tencent.qqpim.action_register_sms_sended");
            PendingIntent pendingintent = PendingIntent.getBroadcast(QQPimUtils.APPLICATION_CONTEXT, flag, intent, flag);
            flag = f.a().a(s, s1, pendingintent);
        }
        return flag;
    }

    private void startTimer(int i)
    {
        if(mTimer == null)
            mTimer = new SimpleTimer(this);
        mTimer.startTimer(i);
    }

    public void binaryPostResponse(int i, HttpEntity httpentity, String s)
    {
        if(-1 != mCurrentOperationStatus) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(200 != i || httpentity == null)
        {
            if(!doRetry())
            {
                initData();
                sendMsg(28, i);
            }
        } else
        {
            try
            {
                mNetRetryTime = 0;
                processInputStream(httpentity.getContent());
            }
            catch(IllegalStateException illegalstateexception)
            {
                sendMsg(29, 103);
            }
            catch(IOException ioexception)
            {
                sendMsg(29, 103);
            }
            catch(Exception exception)
            {
                sendMsg(29, 103);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String getAccount()
    {
        return mAccount;
    }

    public String getPWD()
    {
        return mPWD;
    }

    public void getSupportMode()
    {
        initHttpEngine();
        byte abyte0[] = constructGetSupportModeData();
        if(abyte0 == null)
        {
            sendMsg(29, 103);
        } else
        {
            mCurrentOperationStatus = 2;
            mAccount = "";
            mPWD = "";
            mHttpEngine.binaryRequest(QQPimUtils.getMobileServerURL(), abyte0);
        }
    }

    public void onTimeOut(int i)
    {
        mWaitingTime = -1 + mWaitingTime;
        if(mWaitingTime <= 0)
        {
            handleRegisterTimeOut();
        } else
        {
            sendMsg(29, 110, mWaitingTime);
            startTimer(1000);
        }
    }

    public void register(String s, String s1, byte byte0)
    {
        initHttpEngine();
        initData();
        byte abyte0[] = constructRegisterData(s, s1, byte0);
        if(abyte0 == null)
        {
            sendMsg(29, 103);
        } else
        {
            mCurrentOperationStatus = 0;
            mAccount = s;
            mPWD = s1;
            mMode = byte0;
            mHttpEngine.binaryRequest(QQPimUtils.getMobileServerURL(), abyte0);
        }
    }

    public void startQueryIsSuccess()
    {
        mCurrentOperationStatus = 3;
        byte abyte0[] = constructGetStatusData(mAccount);
        if(abyte0 == null)
            sendMsg(29, 105);
        else
            mHttpEngine.binaryRequest(QQPimUtils.getMobileServerURL(), abyte0);
    }

    public void stopRegister()
    {
        initData();
        if(mHttpEngine != null)
            mHttpEngine.stopNetwork();
        sendMsg(29, 104);
    }

    private static final int EXPIRED_TIMES = 30;
    private static final int MAXNetRetryTime = 3;
    private static final int STATUS_GET_REG_STATUS = 1;
    private static final int STATUS_GET_REG_STATUS_GETNO = 3;
    private static final int STATUS_GET_SUPPORT_MODE = 2;
    private static final int STATUS_REGISTER = 0;
    private static final int STATUS_STOP = -1;
    private static final int TIME_INTERVAL = 1000;
    private String mAccount;
    private Handler mCallbackHandler;
    private Context mContext;
    private int mCurrentOperationStatus;
    private HttpDown mHttpEngine;
    private byte mMode;
    private int mNetRetryTime;
    private String mPWD;
    private SimpleTimer mTimer;
    private int mWaitingTime;
}

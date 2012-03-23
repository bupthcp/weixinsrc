// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import QQPIM.*;
import android.content.Context;
import android.os.Handler;
import com.a.b.a.e;
import com.tencent.qqpim.utils.net.HttpDown;
import com.tencent.qqpim.utils.net.INetEngineObserver;
import java.io.*;
import org.apache.http.HttpEntity;

// Referenced classes of package com.tencent.qqpim.utils:
//            XxteaCryptor, MobileUtil, QQPimUtils

public class MobileManualActivateUtil
    implements INetEngineObserver
{

    public MobileManualActivateUtil(Context context, Handler handler)
    {
        mContext = null;
        mHttpEngine = null;
        mCallbackHandler = null;
        isUserCancel = false;
        mNetRetryTime = 0;
        mAccount = "";
        mActivateCode = "";
        mContext = context;
        mCallbackHandler = handler;
    }

    private byte[] constructActivateData(String s, String s1)
    {
        byte abyte0[];
        VerifyReq verifyreq;
        abyte0 = null;
        verifyreq = getVerifyReq(s, s1);
        if(verifyreq != null) goto _L2; else goto _L1
_L1:
        return abyte0;
_L2:
        byte abyte1[];
        e e1 = new e();
        e1.b();
        e1.c("mobile");
        e1.d("checkVerifyCode");
        e1.a("cinfo", verifyreq);
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
        boolean flag = false;
        mNetRetryTime = 1 + mNetRetryTime;
        if(3 <= mNetRetryTime)
        {
            mNetRetryTime = ((flag) ? 1 : 0);
        } else
        {
            activate(mAccount, mActivateCode);
            flag = true;
        }
        return flag;
    }

    private VerifyReq getVerifyReq(String s, String s1)
    {
        VerifyReq verifyreq = new VerifyReq();
        QQPIM.ReqHeader reqheader = MobileUtil.getHeader(s, mContext);
        if(reqheader == null)
        {
            verifyreq = null;
        } else
        {
            verifyreq.setHeader(reqheader);
            verifyreq.setVerifyCode(s1);
        }
        return verifyreq;
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
        boolean flag;
        if(e1 == null)
        {
            sendMsg(29, 103);
            flag = false;
        } else
        {
            processValifyResponse((VerifyResp)e1.b("sinfo"));
            flag = true;
        }
        return flag;
    }

    private void processValifyResponse(VerifyResp verifyresp)
    {
        if(verifyresp == null)
        {
            sendMsg(29, 103);
        } else
        {
            int i = verifyresp.getHeader().getResult();
            if(i != 0)
                sendMsg(30, i);
            else
                sendMsg(29, 101);
        }
    }

    private void sendMsg(int i, int j)
    {
        android.os.Message message = mCallbackHandler.obtainMessage(i, j, 0);
        mCallbackHandler.sendMessage(message);
    }

    public void activate(String s, String s1)
    {
        initHttpEngine();
        byte abyte0[] = constructActivateData(s, s1);
        if(abyte0 == null)
        {
            sendMsg(29, 103);
        } else
        {
            mAccount = s;
            mActivateCode = s1;
            mHttpEngine.binaryRequest(QQPimUtils.getMobileServerURL(), abyte0);
        }
    }

    public void binaryPostResponse(int i, HttpEntity httpentity, String s)
    {
        if(!isUserCancel) goto _L2; else goto _L1
_L1:
        sendMsg(29, 104);
_L4:
        return;
_L2:
        if(200 != i || httpentity == null)
        {
            if(!doRetry())
                sendMsg(28, i);
        } else
        {
            try
            {
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
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void stopActivate()
    {
        isUserCancel = true;
        if(mHttpEngine != null)
            mHttpEngine.stopNetwork();
        sendMsg(29, 104);
    }

    private static final int MAXNetRetryTime = 3;
    private boolean isUserCancel;
    private String mAccount;
    private String mActivateCode;
    private Handler mCallbackHandler;
    private Context mContext;
    private HttpDown mHttpEngine;
    private int mNetRetryTime;
}

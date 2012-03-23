// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import QQPIM.ReqHeader;
import android.content.Context;
import com.a.b.a.e;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import java.io.*;

// Referenced classes of package com.tencent.qqpim.utils:
//            XxteaCryptor

public class MobileUtil
{

    public MobileUtil()
    {
    }

    public static byte[] InputStreamToBytes(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[];
        try
        {
            do
            {
                int i = inputstream.read();
                if(i == -1)
                {
                    abyte0 = bytearrayoutputstream.toByteArray();
                    bytearrayoutputstream.close();
                    inputstream.close();
                    break;
                }
                bytearrayoutputstream.write(i);
            } while(true);
        }
        catch(IOException ioexception)
        {
            abyte0 = null;
        }
        return abyte0;
    }

    public static void clearAccountAndPWD()
    {
        mAreaCode = "";
        mMobileNo = "";
        mPWD = "";
    }

    public static String getAccount()
    {
        return mMobileNo;
    }

    public static String getAreaCode()
    {
        return mAreaCode;
    }

    public static ReqHeader getHeader(Context context)
    {
        ReqHeader reqheader = new ReqHeader();
        reqheader.setPlatformid((byte)1);
        reqheader.setLc(ConfigDao.getInstance(context).getLC());
        reqheader.setImei(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI));
        reqheader.setImsi(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMSI));
        reqheader.setVersion(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.VERSION));
        reqheader.setMobileno("");
        return reqheader;
    }

    public static ReqHeader getHeader(String s, Context context)
    {
        ReqHeader reqheader = null;
        if(s != null)
        {
            ReqHeader reqheader1 = new ReqHeader();
            reqheader1.setPlatformid((byte)1);
            reqheader1.setLc(ConfigDao.getInstance(context).getLC());
            reqheader1.setImei(ConfigDao.getInstance(reqheader).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI));
            reqheader1.setImsi(ConfigDao.getInstance(reqheader).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMSI));
            reqheader1.setVersion(ConfigDao.getInstance(reqheader).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.VERSION));
            reqheader1.setMobileno(s.replace(",", ""));
            reqheader = reqheader1;
        }
        return reqheader;
    }

    public static String getPWD()
    {
        return mPWD;
    }

    public static e getUniPacketFromInputStream(InputStream inputstream)
    {
        e e1;
        byte abyte0[];
        e1 = null;
        abyte0 = InputStreamToBytes(inputstream);
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        return e1;
_L2:
        byte abyte1[];
        e e2;
        abyte1 = XxteaCryptor.decrypt(abyte0, "DFG#$%^#%$RGHR(&*M<><".getBytes());
        e2 = new e();
        e2.a("UTF-8");
        e2.a(abyte1);
        e1 = e2;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean isNeedLoginAfterRegister()
    {
        return needLoginAfterRegister;
    }

    public static void loginMobileAfterRegister(Context context, String s, String s1, String s2)
    {
        if(context != null && s1 != null && s2 != null && s1.length() > 0 && s2.length() > 0)
            needLoginAfterRegister = true;
    }

    public static void setAccount(String s)
    {
        mMobileNo = null;
        mMobileNo = new String(s);
    }

    public static void setAreaCode(String s)
    {
        mAreaCode = null;
        mAreaCode = new String(s);
    }

    public static void setNeedLoginAfterRegister(boolean flag)
    {
        needLoginAfterRegister = flag;
    }

    public static void setPWD(String s)
    {
        mPWD = null;
        mPWD = new String(s);
    }

    public static final String DEFAULT_AREA_CODE = "+86";
    public static final String FUNCTION_NAME_CHECK_VERIFY_CODE = "checkVerifyCode";
    public static final String FUNCTION_NAME_GET_STATUS = "getRegStatus";
    public static final String FUNCTION_NAME_MOBILE_LOGIN = "mobileLogin";
    public static final String FUNCTION_NAME_REGISTER = "validateMobile";
    public static final String MOBILE_LOGIN_ACCOUNT_KEY = "mobile_login_account_key";
    public static final String MOBILE_LOGIN_AREACODE_KEY = "mobile_login_areacode_key";
    public static final String MOBILE_LOGIN_PWD_KEY = "mobile_login_pwd_key";
    public static final int MSG_PROCCESS_Cancel = 104;
    public static final int MSG_PROCCESS_DOWN_MODE_REQUEST_SUCCESS = 106;
    public static final int MSG_PROCCESS_Failed = 103;
    public static final int MSG_PROCCESS_RGISTER_FAILD_SMS = 105;
    public static final int MSG_PROCCESS_SEND_SMS_ERR = 111;
    public static final int MSG_PROCCESS_SUCCESS = 101;
    public static final int MSG_PROCCESS_SUPPORT_DOWN = 108;
    public static final int MSG_PROCCESS_SUPPORT_NOE = 109;
    public static final int MSG_PROCCESS_SUPPORT_UP = 107;
    public static final int MSG_PROCCESS_TIMEOUT = 102;
    public static final int MSG_PROCCESS_TIME_INTERVAL = 110;
    public static final String PARAM_IN = "cinfo";
    public static final String PARAM_OUT = "sinfo";
    public static final byte PLATFORM_ID = 1;
    public static final byte REQUEST_MODE_DOWN = 2;
    public static final byte REQUEST_MODE_UP = 1;
    public static final String RETCODE_SMS_SENED_KEY = "retcode_sms_sened_key";
    public static final String SERVER_NAME = "mobile";
    public static final String SUPPORT_MODE_KEY = "support_mode_key";
    public static String mAreaCode = "";
    public static String mMobileNo = "";
    public static String mPWD = "";
    private static boolean needLoginAfterRegister = false;

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;

import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;

// Referenced classes of package com.tencent.tccsync:
//            LoginUtilException

public class LoginUtil
{

    public LoginUtil()
    {
        cppInstance = newLoginUtilInstance();
        if(cppInstance == 0)
            throw new OutOfMemoryError();
        else
            return;
    }

    private native void clear(int i);

    private native void deleteLoginUtilObject(int i);

    private native String getKey(int i);

    private native byte[] getPostBody(int i);

    private native String getPostUrl(int i);

    private native String getVerifyImageUrl(int i);

    private native int makeLoginRequestPackage(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, int j, int k);

    private native int makeLoginRequestPackageMd5(int i, String s, String s1, byte abyte0[], byte abyte1[], String s2, String s3, 
            String s4, String s5, int j, int k);

    public static native String makeQQPhoneAndroidFeekBackUrl(String s, String s1, String s2, int i, int j, int k);

    public static native String makeQQPimFeekBackUrl(String s, String s1, String s2, int i, int j, int k);

    private native int newLoginUtilInstance();

    private native int solveLoginResponPackge(int i, byte abyte0[], int j);

    private void throwIfError(int i)
    {
        switch(i)
        {
        default:
            throw new LoginUtilException(i);

        case -4: 
            throw new OutOfMemoryError();

        case 0: // '\0'
            return;
        }
    }

    public void clear()
    {
        clear(cppInstance);
    }

    protected void finalize()
    {
        if(cppInstance != 0)
        {
            deleteLoginUtilObject(cppInstance);
            cppInstance = 0;
        }
    }

    public String getKey()
    {
        return getKey(cppInstance);
    }

    public byte[] getPostBody()
    {
        return getPostBody(cppInstance);
    }

    public String getPostUrl()
    {
        return getPostUrl(cppInstance);
    }

    public String getVerifyImageUrl()
    {
        return getVerifyImageUrl(cppInstance);
    }

    public void makeLoginRequestPackage(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            String s7, int i, int j)
    {
        throwIfError(makeLoginRequestPackage(cppInstance, s, s1, s2, s3, s4, s5, s6, s7, i, j));
    }

    public void makeLoginRequestPackageMd5(String s, String s1, byte abyte0[], byte abyte1[], String s2, String s3, String s4, 
            String s5, int i, int j)
    {
        throwIfError(makeLoginRequestPackageMd5(cppInstance, s, s1, abyte0, abyte1, s2, s3, s4, s5, i, j));
    }

    public int solveLoginResponPackge(byte abyte0[], int i)
    {
        return solveLoginResponPackge(cppInstance, abyte0, i);
    }

    public native int testIntFromCarson();

    public native String testStringFromCarson();

    public static final int EM_LOGIN_RES_ACCOUNT_BLACKLISTED = 33;
    public static final int EM_LOGIN_RES_ACCOUNT_FROZEN = 32;
    public static final int EM_LOGIN_RES_ALERT_DNA = 37;
    public static final int EM_LOGIN_RES_CLIENT_PARAM_ERROR = 207;
    public static final int EM_LOGIN_RES_FAIL = 201;
    public static final int EM_LOGIN_RES_FREQ_LIMIT = 202;
    public static final int EM_LOGIN_RES_LOGIN_OK = 0;
    public static final int EM_LOGIN_RES_NEED_PIM_PASSWORD = 1003;
    public static final int EM_LOGIN_RES_NEED_VERIFY_IMAGE = 101;
    public static final int EM_LOGIN_RES_NEED_VERIFY_SMS = 102;
    public static final int EM_LOGIN_RES_NETWORK_FAIL = -100;
    public static final int EM_LOGIN_RES_NOT_ALLOWED = 208;
    public static final int EM_LOGIN_RES_NOT_WHITELISTED = 1001;
    public static final int EM_LOGIN_RES_OTHER_FAIL = -101;
    public static final int EM_LOGIN_RES_QQ_NUM_NOT_EXIST = 18;
    public static final int EM_LOGIN_RES_RESTRICTED_IP = 20;
    public static final int EM_LOGIN_RES_SAFE_SESSION = 103;
    public static final int EM_LOGIN_RES_SERVICE_BLOCK = 40;
    public static final int EM_LOGIN_RES_SERVICE_MATURITY = 41;
    public static final int EM_LOGIN_RES_SYNC_SERVER_LIMIT = 1002;
    public static final int EM_LOGIN_RES_SYSTEM_ERROR = 255;
    public static final int EM_LOGIN_RES_SYSTEM_MAINTENANCE = 254;
    public static final int EM_LOGIN_RES_USER_STOP = -1000;
    public static final int EM_LOGIN_RES_WRONG_ID = 204;
    public static final int EM_LOGIN_RES_WRONG_PASSWORD = 203;
    public static final int EM_LOGIN_RES_WRONG_PASSWORD_AND_ALLOWED_IP = 19;
    public static final int EM_LOGIN_RES_WRONG_PASSWORD_AND_RESTRICTED_IP = 21;
    public static final int EM_LOGIN_RES_WRONG_PIM_PASSWORD = 1004;
    public static final int EM_LOGIN_RES_WRONG_QQ_NUM = 205;
    public static final int EM_LOGIN_RES_WRONG_SID = 206;
    public static final int EM_LOGIN_RES_WRONG_VERIFY_CODE = 209;
    private int cppInstance;

    static 
    {
        ConfigDao.getInstance(null).loadLibrary(ConfigDao.LIB_NAME);
    }
}

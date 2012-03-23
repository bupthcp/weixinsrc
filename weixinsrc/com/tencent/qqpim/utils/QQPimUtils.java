// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import com.tencent.a.b.g;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.issue.IssueSettings;
import com.tencent.qqpim.object.Base64;
import com.tencent.tccsync.LoginUtil;
import java.io.*;
import java.net.*;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

// Referenced classes of package com.tencent.qqpim.utils:
//            LoginInformation

public class QQPimUtils
{

    public QQPimUtils()
    {
    }

    public static boolean createFilesDir(boolean flag)
    {
        File file = new File(getMapDir(flag));
        if(!file.exists())
            file.mkdir();
        boolean flag1 = true;
_L2:
        return flag1;
        Throwable throwable;
        throwable;
        writeToLog("", (new StringBuilder("createFilesDir err: ")).append(throwable.toString()).toString());
        flag1 = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static List divideStringToList(String s, char ac[], char c)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return ((List) (obj));
_L2:
        int i;
        ArrayList arraylist;
        StringBuilder stringbuilder;
        int j;
        i = s.length();
        arraylist = new ArrayList();
        stringbuilder = new StringBuilder();
        j = 0;
_L7:
label0:
        {
            if(j < i)
                break label0;
            arraylist.add(stringbuilder.toString());
            obj = arraylist;
        }
        if(true) goto _L4; else goto _L3
_L3:
        char c1;
        c1 = s.charAt(j);
        if(c1 != '\\')
            break MISSING_BLOCK_LABEL_189;
        if(j + 1 >= i) goto _L6; else goto _L5
_L5:
        char c2;
        int k;
        c2 = s.charAt(j + 1);
        k = 0;
_L8:
        if(ac != null && k < ac.length)
        {
label1:
            {
                if(c2 != ac[k])
                    break label1;
                if(c2 == 'r')
                    stringbuilder.append('\r');
                else
                if(c2 == 'n')
                    stringbuilder.append('\n');
                else
                    stringbuilder.append(c2);
                j++;
            }
        }
_L9:
        j++;
          goto _L7
        k++;
          goto _L8
_L6:
        stringbuilder.append(c1);
          goto _L9
        if(c1 == c)
        {
            arraylist.add(stringbuilder.toString());
            stringbuilder = new StringBuilder();
        } else
        {
            stringbuilder = stringbuilder.append(c1);
        }
          goto _L9
    }

    public static String escapeString(String s, char ac[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        if(s == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if(i < s.length()) goto _L3; else goto _L2
_L2:
        return stringbuilder.toString();
_L3:
        char c = s.charAt(i);
        int j = 0;
        do
        {
label0:
            {
                if(ac != null && j < ac.length)
                    break label0;
                if(c != '\r' && c != '\n')
                    stringbuilder.append(c);
                i++;
            }
            if(true)
                continue;
            if(c == ac[j])
                if(c == '\r')
                    stringbuilder.append('\\').append('r');
                else
                if(c == '\n')
                    stringbuilder.append('\\').append('n');
                else
                    stringbuilder.append('\\');
            j++;
        } while(true);
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static byte[] getBase64Code(String s)
    {
        byte abyte1[] = Base64.encodeBase64(s.getBytes("UTF-8"));
        byte abyte0[] = abyte1;
_L2:
        return abyte0;
        Throwable throwable;
        throwable;
        writeToLog("QQPimUtils", (new StringBuilder("getBase64Code Throwable  ")).append(throwable.getMessage()).toString());
        abyte0 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static String getBase64CodeFromString(String s)
    {
        String s1 = null;
        if(s != null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        String s2;
        byte abyte0[] = Base64.encodeBase64(s.getBytes("UTF-8"));
        if(abyte0 == null)
            break MISSING_BLOCK_LABEL_68;
        s2 = new String(abyte0, "UTF-8");
_L3:
        s1 = s2;
          goto _L1
        Throwable throwable;
        throwable;
        writeToLog("QQPimUtils", (new StringBuilder("getBase64Code Throwable ")).append(throwable.getMessage()).toString());
          goto _L1
        s2 = s1;
          goto _L3
    }

    public static Bitmap getBitMap(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = null;
_L4:
        return bitmap;
_L2:
        URL url = new URL(s);
        try
        {
            HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
            httpurlconnection.setConnectTimeout(15000);
            httpurlconnection.setReadTimeout(15000);
            httpurlconnection.setDoInput(true);
            httpurlconnection.connect();
            InputStream inputstream = httpurlconnection.getInputStream();
            if(inputstream == null)
            {
                bitmap = null;
            } else
            {
                bitmap = BitmapFactory.decodeStream(inputstream);
                inputstream.close();
            }
        }
        catch(IOException ioexception)
        {
            bitmap = null;
        }
        catch(Throwable throwable)
        {
            bitmap = null;
        }
        continue; /* Loop/switch isn't completed */
        MalformedURLException malformedurlexception;
        malformedurlexception;
        bitmap = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String getBookmarkPath(boolean flag)
    {
        String s = LoginInformation.getSingleInstance().getLoginedAccount();
        String s1;
        if(s == null)
            s1 = null;
        else
            s1 = (new StringBuilder(String.valueOf(getMapDir(flag)))).append(s).append("_bookmark_db.map").toString();
        return s1;
    }

    public static String getCalllogMapPath(boolean flag)
    {
        String s = LoginInformation.getSingleInstance().getLoginedAccount();
        String s1;
        if(s == null)
            s1 = null;
        else
            s1 = (new StringBuilder(String.valueOf(getMapDir(flag)))).append(s).append("_calllog_db.map").toString();
        return s1;
    }

    public static String getContactMapPath(String s, boolean flag)
    {
        String s1;
        if(s == null)
            s1 = null;
        else
            s1 = (new StringBuilder(String.valueOf(getMapDir(flag)))).append(s).append("_contact_db.map").toString();
        return s1;
    }

    public static String getContactMapPath_LoginedAccount(boolean flag)
    {
        String s = LoginInformation.getSingleInstance().getLoginedAccount();
        String s1;
        if(s == null)
            s1 = null;
        else
            s1 = (new StringBuilder(String.valueOf(getMapDir(flag)))).append(s).append("_contact_db.map").toString();
        return s1;
    }

    public static String getFeedbackURL()
    {
        String s = ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI);
        String s1;
        if(LoginInformation.getSingleInstance().isLogined())
            s1 = LoginInformation.getSingleInstance().getLoginKey();
        else
            s1 = "";
        return LoginUtil.makeQQPimFeekBackUrl(s, s1, getLCString(), 2, 0, ConfigDao.VERSION_BUILD);
    }

    public static String getImei(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getDeviceId();
    }

    public static String getImsi(Context context)
    {
        return ((TelephonyManager)context.getSystemService("phone")).getSubscriberId();
    }

    public static String getLCString()
    {
        return ConfigDao.getInstance(APPLICATION_CONTEXT).getLC();
    }

    public static List getListFromString(String s, char c)
    {
        ArrayList arraylist = new ArrayList();
        if(s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        ArrayList arraylist1 = arraylist;
_L4:
        return arraylist1;
_L2:
        StringBuilder stringbuilder = new StringBuilder();
        int i = 0;
        do
        {
label0:
            {
                if(i < s.length())
                    break label0;
                if(stringbuilder.length() != 0)
                    arraylist.add(stringbuilder.toString());
                arraylist1 = arraylist;
            }
            if(true)
                continue;
            char c1 = s.charAt(i);
            if(c1 == c)
            {
                if(stringbuilder.length() != 0)
                    arraylist.add(stringbuilder.toString());
                stringbuilder = new StringBuilder();
            } else
            {
                stringbuilder.append(c1);
            }
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String getLocalStringFromTime(long l)
    {
        String s1 = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date(l));
        String s = s1;
_L2:
        return s;
        Throwable throwable;
        throwable;
        writeToLog("getStandardStringFromTime exception", throwable.getMessage());
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static byte[] getMD5(String s)
    {
        Object obj = null;
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        return ((byte []) (obj));
_L2:
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        obj = messagedigest;
_L4:
        try
        {
            ((MessageDigest) (obj)).update(s.getBytes("UTF-8"));
        }
        catch(UnsupportedEncodingException unsupportedencodingexception) { }
        obj = ((MessageDigest) (obj)).digest();
        if(true) goto _L1; else goto _L3
_L3:
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
          goto _L4
    }

    public static String getManufaturer()
    {
        if(getSDKVersion() <= 4) goto _L2; else goto _L1
_L1:
        g g1 = (g)Class.forName("com.tencent.qqphonebook.utils.OSPropertyUtil").newInstance();
        if(g1 == null) goto _L2; else goto _L3
_L3:
        String s1 = g1.a();
        String s = s1;
_L5:
        (new StringBuilder("manufaturer:")).append(s).toString();
        return s;
        Exception exception;
        exception;
        exception.toString();
_L2:
        s = "UNKNOW";
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static String getMapDir(boolean flag)
    {
        String s;
        if(flag)
        {
            s = SDCARD_MAP_DIR;
        } else
        {
            s = ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.QQPIM_DB_DIR);
            writeToLog("QQPimUtils", (new StringBuilder("getDBDir  DBDir = ")).append(s).toString());
        }
        return s;
    }

    public static String getMobileServerURL()
    {
        return "http://jsync.3g.qq.com/android";
    }

    public static String getMobileSynServerURL()
    {
        return getServerURL();
    }

    public static String getModel()
    {
        return Build.MODEL;
    }

    public static PHONETYPE getPhoneType()
    {
        if(phoneType == PHONETYPE.UNKNOWN)
            if(Build.MODEL.toLowerCase().startsWith("oms"))
                phoneType = PHONETYPE.OPHONE;
            else
            if(Build.BRAND.toLowerCase().startsWith("huawei") && Build.MODEL.toLowerCase().startsWith("u8500"))
                phoneType = PHONETYPE.HUAWEI_U8500;
            else
                phoneType = PHONETYPE.GENERAL;
        return phoneType;
    }

    public static String getReversePhone(String s)
    {
        String s1 = null;
        if(s == null) goto _L2; else goto _L1
_L1:
        int i = s.length();
        if(i <= 0) goto _L2; else goto _L3
_L3:
        char ac[];
        int k;
        int l;
        ac = new char[i + 1];
        int j = i + -1;
        k = 0;
        l = j;
_L7:
        if(l >= 0) goto _L5; else goto _L4
_L4:
        if(k > 0)
            s1 = String.valueOf(ac, 0, k);
        else
            s1 = "";
_L2:
        return s1;
_L5:
        char c = s.charAt(l);
        int i1;
        if(c >= '0' && c <= '9')
        {
            i1 = k + 1;
            ac[k] = c;
        } else
        {
            i1 = k;
        }
        l--;
        k = i1;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static File getSDCardDir()
    {
        return new File(Environment.getExternalStorageDirectory().getPath());
    }

    public static int getSDKVersion()
    {
        return (new Integer(android.os.Build.VERSION.SDK)).intValue();
    }

    public static String getSdcardSyncDeviceId(Context context)
    {
        String s = getImei(context);
        if(s == null)
            s = "000000000000000";
        return (new StringBuilder("COMMON:")).append(s).toString();
    }

    private static String getSdcardUniqueMachineAppID()
    {
        String s = ((TelephonyManager)APPLICATION_CONTEXT.getSystemService("phone")).getDeviceId();
        if(s == null || s.equals("000000000000000"))
            s = "123456789012345";
        return (new StringBuilder("COMN:")).append(s).toString();
    }

    public static String getServerURL()
    {
        String s = ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.QQPIM_SERVER_URL);
        writeToLog("QQPimUtils", (new StringBuilder("getServerURL  url = ")).append(s).toString());
        return s;
    }

    public static String getSmsMapPath(boolean flag)
    {
        String s = LoginInformation.getSingleInstance().getLoginedAccount();
        String s1;
        if(s == null)
            s1 = null;
        else
            s1 = (new StringBuilder(String.valueOf(getMapDir(flag)))).append(s).append("_sms_db.map").toString();
        return s1;
    }

    public static String getStringFromBase64Code(String s)
    {
        String s1;
        try
        {
            s1 = new String(Base64.decodeBase64(s.getBytes("UTF-8")), "UTF-8");
        }
        catch(Throwable throwable)
        {
            writeToLog("QQPimUtils", (new StringBuilder("getStringFromBase64Code Throwable ")).append(throwable.getMessage()).toString());
            s1 = "";
        }
        return s1;
    }

    public static String getUTCStringFromTime(long l)
    {
        String s1;
        char ac[];
        int i;
        int j;
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        simpledateformat.setTimeZone(TimeZone.getTimeZone("GMT-0"));
        s1 = simpledateformat.format(new Date(l));
        ac = new char[16];
        i = 0;
        j = 0;
_L4:
        if(i < s1.length()) goto _L2; else goto _L1
_L1:
        String s;
        int k;
        ac[j] = 'Z';
        s = String.valueOf(ac);
          goto _L3
        throwable;
        writeToLog("getStringFromTime exception", throwable.getMessage());
        s = null;
          goto _L3
_L2:
        char c = s1.charAt(i);
        if(c == ' ')
        {
            k = j + 1;
            ac[j] = 'T';
            break MISSING_BLOCK_LABEL_163;
        }
        Throwable throwable;
        if(c != '-' && c != ':')
        {
            k = j + 1;
            ac[j] = c;
            break MISSING_BLOCK_LABEL_163;
        }
        k = j;
        break MISSING_BLOCK_LABEL_163;
_L3:
        return s;
        i++;
        j = k;
          goto _L4
    }

    public static long getUTCTimeFromString(String s)
    {
        long l1;
        char ac[] = new char[5];
        s.getChars(0, 4, ac, 0);
        int i = Integer.valueOf(String.valueOf(ac, 0, 4)).intValue();
        s.getChars(4, 6, ac, 0);
        int j = Integer.valueOf(String.valueOf(ac, 0, 2)).intValue();
        s.getChars(6, 8, ac, 0);
        int k = Integer.valueOf(String.valueOf(ac, 0, 2)).intValue();
        s.getChars(9, 11, ac, 0);
        int i1 = Integer.valueOf(String.valueOf(ac, 0, 2)).intValue();
        s.getChars(11, 13, ac, 0);
        int j1 = Integer.valueOf(String.valueOf(ac, 0, 2)).intValue();
        s.getChars(13, 15, ac, 0);
        int k1 = Integer.valueOf(String.valueOf(ac, 0, 2)).intValue();
        GregorianCalendar gregoriancalendar = new GregorianCalendar(i, j + -1, k, i1, j1, k1);
        gregoriancalendar.setTimeZone(TimeZone.getTimeZone("GMT-0"));
        l1 = gregoriancalendar.getTimeInMillis();
        long l = l1;
_L2:
        return l;
        NullPointerException nullpointerexception;
        nullpointerexception;
        writeToLog("SYSCallLogDao", (new StringBuilder("getTimeFromString NullPointerException strTime = ")).append(s).toString());
        l = 0L;
        continue; /* Loop/switch isn't completed */
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        writeToLog("SYSCallLogDao", (new StringBuilder("getTimeFromString IndexOutOfBoundsException strTime = ")).append(s).toString());
        l = 0L;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static String getUniqueMachineAppID(boolean flag)
    {
        String s;
        if(flag)
        {
            s = getSdcardUniqueMachineAppID();
        } else
        {
            s = ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI);
            writeToLog("QQPimUtils", (new StringBuilder("getUniqueMachineAppID  getUniqueMachineAppID = ")).append(s).toString());
        }
        return s;
    }

    public static boolean isSDKVersionBelow2()
    {
        boolean flag;
        if(getSDKVersion() < 5)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isSDKVersionLargerOrEquals2_2()
    {
        boolean flag;
        if(getSDKVersion() >= 8)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static void openBrower(String s, Context context)
    {
        if(s != null)
        {
            if(!s.startsWith("http://"))
                s = (new StringBuilder("http://")).append(s).toString();
            Uri uri = Uri.parse(s);
            try
            {
                context.startActivity(new Intent("android.intent.action.VIEW", uri));
            }
            catch(Exception exception) { }
        }
    }

    public static String timeStrTrans(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        String s1;
        if(s.indexOf("-") != -1)
        {
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd");
            s = simpledateformat.format(simpledateformat.parse(s));
            continue; /* Loop/switch isn't completed */
        }
        if(s.indexOf("\u5E74") != -1 && s.indexOf("\u6708") != -1 && s.indexOf("\u65E5") != -1)
        {
            Date date1 = (new SimpleDateFormat("yyyy\u5E74MM\u6708dd\u65E5")).parse(s);
            s = (new SimpleDateFormat("yyyy-MM-dd")).format(date1);
            continue; /* Loop/switch isn't completed */
        }
        if(!IssueSettings.birthdayDisplayError)
            continue; /* Loop/switch isn't completed */
        Date date = new Date(Long.parseLong(s) - (long)TimeZone.getDefault().getRawOffset());
        s1 = (new SimpleDateFormat("yyyy-MM-dd")).format(date);
        s = s1;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static void writeStringToFile(String s, String s1)
    {
    }

    public static void writeToLog(String s, String s1)
    {
    }

    public static Context APPLICATION_CONTEXT;
    private static final String BOOKMARK_MAP = "_bookmark_db.map";
    private static final String CALLLOG_MAP = "_calllog_db.map";
    private static final String CONTACT_MAP = "_contact_db.map";
    public static final boolean DEBUG = false;
    public static final String LOG = "sdcard/qqpimlog.txt";
    private static final String LOG_TAG = "QQPimUtils";
    public static final int OS_1_5 = 3;
    public static final int OS_1_6 = 4;
    public static final int OS_2 = 5;
    public static final int OS_2_0_1 = 6;
    public static final int OS_2_1 = 7;
    public static final int OS_2_2 = 8;
    private static final String POST_URL_MOBILE = "http://jsync.3g.qq.com/android";
    public static String SDCARD_MAP_DIR;
    private static final String SMS_MAP = "_sms_db.map";
    private static final String UTF_8 = "UTF-8";
    private static PHONETYPE phoneType;
    public static boolean userStoppedSync = false;

    static 
    {
        phoneType = PHONETYPE.UNKNOWN;
        String s = getSDCardDir().toString();
        String s1;
        if(s == null)
            s1 = null;
        else
            s1 = (new StringBuilder(String.valueOf(s))).append("/.qqpim/").toString();
        SDCARD_MAP_DIR = s1;
    }

    private class PHONETYPE extends Enum
    {

        public static PHONETYPE valueOf(String s)
        {
            return (PHONETYPE)Enum.valueOf(com/tencent/qqpim/utils/QQPimUtils$PHONETYPE, s);
        }

        public static PHONETYPE[] values()
        {
            PHONETYPE aphonetype[] = ENUM$VALUES;
            int i = aphonetype.length;
            PHONETYPE aphonetype1[] = new PHONETYPE[i];
            System.arraycopy(aphonetype, 0, aphonetype1, 0, i);
            return aphonetype1;
        }

        private static final PHONETYPE ENUM$VALUES[];
        public static final PHONETYPE GENERAL;
        public static final PHONETYPE HUAWEI_U8500;
        public static final PHONETYPE OPHONE;
        public static final PHONETYPE UNKNOWN;

        static 
        {
            OPHONE = new PHONETYPE("OPHONE", 0);
            GENERAL = new PHONETYPE("GENERAL", 1);
            HUAWEI_U8500 = new PHONETYPE("HUAWEI_U8500", 2);
            UNKNOWN = new PHONETYPE("UNKNOWN", 3);
            PHONETYPE aphonetype[] = new PHONETYPE[4];
            aphonetype[0] = OPHONE;
            aphonetype[1] = GENERAL;
            aphonetype[2] = HUAWEI_U8500;
            aphonetype[3] = UNKNOWN;
            ENUM$VALUES = aphonetype;
        }

        private PHONETYPE(String s, int i)
        {
            super(s, i);
        }
    }

}

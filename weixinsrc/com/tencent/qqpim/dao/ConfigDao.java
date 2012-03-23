// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.utils.LibraryLoadUtil;
import com.tencent.qqpim.utils.QQPimUtils;

// Referenced classes of package com.tencent.qqpim.dao:
//            ConfigManager

public class ConfigDao
    implements IConfigDao
{

    private ConfigDao(Context context)
    {
        LC_STRING = "69DBCE1038F8B328";
        setting = null;
        editor = null;
        mContext = context;
        setting = mContext.getSharedPreferences("SettingInfo", 0);
        editor = setting.edit();
        initConfigDao();
    }

    public static IConfigDao getInstance(Context context)
    {
        if(instance != null && mContext != null) goto _L2; else goto _L1
_L1:
        com/tencent/qqpim/dao/ConfigDao;
        JVM INSTR monitorenter ;
        if(instance == null || mContext == null)
            instance = new ConfigDao(context);
        com/tencent/qqpim/dao/ConfigDao;
        JVM INSTR monitorexit ;
_L2:
        return instance;
        Exception exception;
        exception;
        com/tencent/qqpim/dao/ConfigDao;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void initConfigDao()
    {
        editor.putString(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.QQPIM_SERVER_URL.getValue(), "sync.3g.qq.com").commit();
        String s = mContext.getPackageName();
        TelephonyManager telephonymanager = (TelephonyManager)mContext.getSystemService("phone");
        String s1 = telephonymanager.getDeviceId();
        if(s1 == null || s1.equals("000000000000000"))
            s1 = "123456789012345";
        String s2;
        String s3;
        String s4;
        if(s != null && s.contains("qqphonebook"))
            s1 = (new StringBuilder("PHNB:")).append(s1).toString();
        else
        if(s != null && s.contains("com.tencent.mm"))
            s1 = (new StringBuilder("QQWX:")).append(s1).toString();
        editor.putString(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI.getValue(), s1);
        s2 = telephonymanager.getSubscriberId();
        editor.putString(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMSI.getValue(), s2);
        try
        {
            String s5 = mContext.getPackageManager().getPackageInfo(s, 0).versionName;
            editor.putString(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.VERSION.getValue(), s5);
            VERSION_BUILD = mContext.getPackageManager().getPackageInfo(s, 0).versionCode;
        }
        catch(android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            QQPimUtils.writeToLog("ConfigDao", "pack not found");
        }
        s3 = (new StringBuilder("/data/data/")).append(s).append("/files/").toString();
        editor.putString(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.QQPIM_DB_DIR.getValue(), s3);
        if(setting.getBoolean(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.LAST_SHUT_DOWN_SUC.getValue(), true))
            editor.putBoolean(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.LAST_SHUT_DOWN_SUC.getValue(), true);
        editor.commit();
        s4 = (new ConfigManager(mContext)).getLC();
        if(!TextUtils.isEmpty(s4))
            LC_STRING = s4;
    }

    public void addActionStaticData(int i, long l)
    {
        StringBuilder stringbuilder = new StringBuilder();
        String s = getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.ACTION_STATISTIC);
        int j = getIntValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.ACTION_SUM);
        if(j >= 50 && s != null && s.length() > 0)
        {
            String as[] = s.split(";");
            int i1 = as.length;
            s = s.replace((new StringBuilder(String.valueOf(as[0]))).append(";").toString(), "");
            j = i1 + -1;
        }
        StringBuilder stringbuilder1;
        StringBuilder stringbuilder2;
        int k;
        if(j == 0)
            stringbuilder1 = stringbuilder.append(i).append(" ");
        else
            stringbuilder1 = stringbuilder.append(s).append(";").append(i).append(" ");
        stringbuilder2 = stringbuilder1.append(l);
        setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.ACTION_STATISTIC, stringbuilder2.toString());
        k = j + 1;
        setIntValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.ACTION_SUM, k);
    }

    public boolean getBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag)
    {
        return setting.getBoolean(configvaluetag.getValue(), true);
    }

    public boolean getBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag, boolean flag)
    {
        return setting.getBoolean(configvaluetag.getValue(), flag);
    }

    public float getFloatValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag)
    {
        return setting.getFloat(configvaluetag.getValue(), 0F);
    }

    public int getIntValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag)
    {
        return setting.getInt(configvaluetag.getValue(), 0);
    }

    public String getLC()
    {
        return LC_STRING;
    }

    public long getLongValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag)
    {
        return setting.getLong(configvaluetag.getValue(), 0L);
    }

    public String getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag)
    {
        return setting.getString(configvaluetag.getValue(), "");
    }

    public boolean loadLibrary(String s)
    {
        boolean flag;
        if(mContext == null)
        {
            System.loadLibrary(s);
            flag = true;
        } else
        {
            flag = LibraryLoadUtil.loadLibrary(s, mContext);
        }
        return flag;
    }

    public void setBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag, boolean flag)
    {
        editor.putBoolean(configvaluetag.getValue(), flag).commit();
    }

    public void setFloatValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag, float f)
    {
        editor.putFloat(configvaluetag.getValue(), f).commit();
    }

    public void setIntValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag, int i)
    {
        editor.putInt(configvaluetag.getValue(), i).commit();
    }

    public void setLongValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag, long l)
    {
        editor.putLong(configvaluetag.getValue(), l).commit();
    }

    public void setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag configvaluetag, String s)
    {
        editor.putString(configvaluetag.getValue(), s).commit();
    }

    public static final String HELP_URL = "http://pt.3g.qq.com/i/295/";
    public static final String HOST_TEST_INTERNAL = "http://pmir.3g.qq.com";
    public static final String LC_URL = "http://conf.3g.qq.com/newConf/n";
    public static String LIB_NAME = "Sync";
    public static final String MANAGEWEBSITE = "http://pt.3g.qq.com/i/h/";
    public static final boolean NEED_SHOW_START_TIPS = false;
    public static final int QQSERVICE_STYLE_NEW = 2;
    public static final int QQSERVICE_STYLE_OLD = 1;
    public static final int QQSERVICE_STYLE_UNSUPPORT = 0;
    public static final String REGWEBSITE = "http://pt.3g.qq.com/g/s?aid=getQQ&g_ut=2";
    public static final int SUPPORT_QQSERVICE_STYLE = 2;
    public static int VERSION_BUILD = 0;
    public static final int VERSION_MAJOR = 2;
    public static final int VERSION_MINOR;
    private static IConfigDao instance = null;
    private static Context mContext = null;
    public String LC_STRING;
    private final String SETTING_INFOS = "SettingInfo";
    private android.content.SharedPreferences.Editor editor;
    private SharedPreferences setting;

}

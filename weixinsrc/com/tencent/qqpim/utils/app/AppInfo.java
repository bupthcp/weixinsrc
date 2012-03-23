// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;

import android.graphics.drawable.Drawable;
import java.io.*;
import java.util.HashMap;

public class AppInfo
{

    public AppInfo()
    {
        versionType = -1;
        versionLabel = "";
        score = 0F;
        fileUrl = "";
        update = 0;
        logoUrl = "";
        downloadCount = 0;
    }

    public static AppInfo fromBytes(byte abyte0[])
    {
        AppInfo appinfo;
        try
        {
            appinfo = (AppInfo)(new ObjectInputStream(new ByteArrayInputStream(abyte0))).readObject();
        }
        catch(StreamCorruptedException streamcorruptedexception)
        {
            appinfo = null;
        }
        catch(IOException ioexception)
        {
            appinfo = null;
        }
        catch(ClassNotFoundException classnotfoundexception)
        {
            appinfo = null;
        }
        return appinfo;
    }

    public static byte[] toBytes(AppInfo appinfo)
    {
        byte abyte0[] = null;
        try
        {
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(appinfo);
            abyte0 = bytearrayoutputstream.toByteArray();
            objectoutputstream.close();
            bytearrayoutputstream.close();
        }
        catch(IOException ioexception) { }
        return abyte0;
    }

    public boolean equals(Object obj)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        while(true) 
        {
            do
                return flag;
            while(obj == null || !(obj instanceof AppInfo));
            AppInfo appinfo = (AppInfo)obj;
            if(appinfo.getPkgName() != null)
                flag = pkgName.equals(appinfo.getPkgName());
        }
    }

    public String getApkPath()
    {
        return appPath;
    }

    public Drawable getAppIcon()
    {
        return appIcon;
    }

    public String getAppName()
    {
        return appName;
    }

    public boolean getAutoStartEnabled()
    {
        return autoStartEnabled;
    }

    public String getBootReceiver()
    {
        return bootReceiver;
    }

    public String getCertMD5()
    {
        return certMD5;
    }

    public String getCompany()
    {
        return company;
    }

    public int getDownloadCount()
    {
        return downloadCount;
    }

    public String getFileUrl()
    {
        return fileUrl;
    }

    public long getLastModified()
    {
        return lastModified;
    }

    public String getLogoUrl()
    {
        return logoUrl;
    }

    public String[] getPermissionNames()
    {
        return permissionsName;
    }

    public HashMap getPermissions()
    {
        return permissions;
    }

    public String getPkgName()
    {
        return pkgName;
    }

    public float getScore()
    {
        return score;
    }

    public long getSize()
    {
        return size;
    }

    public int getUpdate()
    {
        return update;
    }

    public String getVersion()
    {
        return version;
    }

    public int getVersionCode()
    {
        return versionCode;
    }

    public String getVersionLabel()
    {
        versionLabel = versionLabelArray[versionType];
        return versionLabel;
    }

    public int getVersionType()
    {
        return versionType;
    }

    public boolean isEquals(AppInfo appinfo)
    {
        boolean flag;
        if(appPath.toLowerCase().equals(appinfo.getApkPath().toLowerCase()))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean isSysApp()
    {
        return isSysApp;
    }

    public void setApkPath(String s)
    {
        appPath = s;
    }

    public void setAppIcon(Drawable drawable)
    {
        appIcon = drawable;
    }

    public void setAppName(String s)
    {
        appName = s;
    }

    public void setAutoStartEnabled(boolean flag)
    {
        autoStartEnabled = flag;
    }

    public void setBootReceiver(String s)
    {
        bootReceiver = s;
    }

    public void setCertMD5(String s)
    {
        certMD5 = s;
    }

    public void setCompany(String s)
    {
        company = s;
    }

    public void setDownloadCount(int i)
    {
        downloadCount = i;
    }

    public void setFileUrl(String s)
    {
        fileUrl = s;
    }

    public void setLastModified(long l)
    {
        lastModified = l;
    }

    public void setLogoUrl(String s)
    {
        logoUrl = s;
    }

    public void setPermissionNames(String as[])
    {
        permissionsName = as;
    }

    public void setPermissions(HashMap hashmap)
    {
        permissions = hashmap;
    }

    public void setPkgName(String s)
    {
        pkgName = s;
    }

    public void setScore(float f)
    {
        score = f;
    }

    public void setSize(long l)
    {
        size = l;
    }

    public void setSysApp(boolean flag)
    {
        isSysApp = flag;
    }

    public void setUpdate(int i)
    {
        update = i;
    }

    public void setVersion(String s)
    {
        version = s;
    }

    public void setVersionCode(int i)
    {
        versionCode = i;
    }

    public void setVersionLabel(String s)
    {
        versionLabel = s;
    }

    public void setVersionType(int i)
    {
        versionType = i;
    }

    public static final String COLUMN_CERT = "cert";
    public static final String COLUMN_ID = "id";
    public static final String COLUMN_NAME = "softname";
    public static final String COLUMN_PKG = "pkg";
    public static final String COLUMN_VERSION = "version";
    public static final int STATE_BROKEN = 6;
    public static final int STATE_DOWNLOADING = 4;
    public static final int STATE_DOWNLOAD_FAILURE = 5;
    public static final int STATE_DOWNLOAD_PAUSE = 7;
    public static final int STATE_INSTALLED = 2;
    public static final int STATE_NON_INSTALL = 1;
    public static final int STATE_NULL = 0;
    public static final int STATE_UPDATE = 3;
    private static final long serialVersionUID = 1L;
    public static String versionLabelArray[];
    private Drawable appIcon;
    private String appName;
    private String appPath;
    private boolean autoStartEnabled;
    private String bootReceiver;
    private String certMD5;
    private String company;
    private int downloadCount;
    private String fileUrl;
    private boolean isSysApp;
    private long lastModified;
    private String logoUrl;
    private HashMap permissions;
    private String permissionsName[];
    private String pkgName;
    private float score;
    private long size;
    private int update;
    private String version;
    private int versionCode;
    private String versionLabel;
    private int versionType;

    static 
    {
        String as[] = new String[8];
        as[0] = "";
        as[1] = "\u672A\u5B89\u88C5";
        as[2] = "\u5DF2\u5B89\u88C5";
        as[3] = "\u53EF\u66F4\u65B0";
        as[4] = "\u6B63\u5728\u4E0B\u8F7D";
        as[5] = "\u4E0B\u8F7D\u4E2D\u65AD";
        as[6] = "\u7834\u635F";
        as[7] = "\u4E0B\u8F7D\u6682\u505C";
        versionLabelArray = as;
    }
}

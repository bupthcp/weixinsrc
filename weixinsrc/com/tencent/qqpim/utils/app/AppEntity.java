// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;

import android.graphics.drawable.Drawable;
import java.util.Map;

public class AppEntity
{

    public AppEntity()
    {
    }

    public Drawable getAppIcon()
    {
        return appIcon;
    }

    public String getAppName()
    {
        return appName;
    }

    public String getAppPath()
    {
        return appPath;
    }

    public long getCacheSize()
    {
        return cacheSize;
    }

    public String getCertMD5()
    {
        return certMD5;
    }

    public String getCompany()
    {
        return company;
    }

    public Map getPermissions()
    {
        return permissions;
    }

    public String[] getPermissionsName()
    {
        return permissionsName;
    }

    public String getPkgName()
    {
        return pkgName;
    }

    public long getRamSize()
    {
        return ramSize;
    }

    public long getSize()
    {
        return size;
    }

    public String getVersion()
    {
        return version;
    }

    public int getVersionCode()
    {
        return versionCode;
    }

    public boolean isApk()
    {
        return isApk;
    }

    public boolean isSysApp()
    {
        return isSysApp;
    }

    public void setApk(boolean flag)
    {
        isApk = flag;
    }

    public void setAppIcon(Drawable drawable)
    {
        appIcon = drawable;
    }

    public void setAppName(String s)
    {
        appName = s;
    }

    public void setAppPath(String s)
    {
        appPath = s;
    }

    public void setCacheSize(long l)
    {
        cacheSize = l;
    }

    public void setCertMD5(String s)
    {
        certMD5 = s;
    }

    public void setCompany(String s)
    {
        company = s;
    }

    public void setPermissions(Map map)
    {
        permissions = map;
    }

    public void setPermissionsName(String as[])
    {
        permissionsName = as;
    }

    public void setPkgName(String s)
    {
        pkgName = s;
    }

    public void setRamSize(long l)
    {
        ramSize = l;
    }

    public void setSize(long l)
    {
        size = l;
    }

    public void setSysApp(boolean flag)
    {
        isSysApp = flag;
    }

    public void setVersion(String s)
    {
        version = s;
    }

    public void setVersionCode(int i)
    {
        versionCode = i;
    }

    private Drawable appIcon;
    private String appName;
    private String appPath;
    private long cacheSize;
    private String certMD5;
    private String company;
    private boolean isApk;
    private boolean isSysApp;
    private Map permissions;
    private String permissionsName[];
    private String pkgName;
    private long ramSize;
    private long size;
    private String version;
    private int versionCode;
}

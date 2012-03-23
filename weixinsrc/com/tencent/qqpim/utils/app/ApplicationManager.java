// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.*;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import com.tencent.qqpim.utils.MD5Util;
import java.io.*;
import java.security.cert.*;
import java.util.*;
import javax.security.auth.x500.X500Principal;

// Referenced classes of package com.tencent.qqpim.utils.app:
//            AppInfo, ReflectUtil, AppSecurityPermissions, ApkInfo, 
//            ApkInfoUtil

public class ApplicationManager
{

    public ApplicationManager(Context context)
    {
        mPackageManager = null;
        mActivityManager = null;
        mContext = null;
        mCertificateFactory = null;
        mContext = context;
        mPackageManager = context.getPackageManager();
        try
        {
            mCertificateFactory = CertificateFactory.getInstance("X.509");
        }
        catch(CertificateException certificateexception)
        {
            certificateexception.getLocalizedMessage();
        }
        mActivityManager = (ActivityManager)context.getSystemService("activity");
    }

    private Certificate getAppCertification(Signature signature)
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(signature.toByteArray());
        X509Certificate x509certificate = (X509Certificate)mCertificateFactory.generateCertificate(bytearrayinputstream);
        Exception exception;
        CertificateException certificateexception;
        IOException ioexception1;
        try
        {
            bytearrayinputstream.close();
        }
        catch(IOException ioexception2) { }
        return x509certificate;
        certificateexception;
        bytearrayinputstream.close();
        x509certificate = null;
        continue; /* Loop/switch isn't completed */
        ioexception1;
        x509certificate = null;
        if(true) goto _L2; else goto _L1
_L1:
        break MISSING_BLOCK_LABEL_52;
_L2:
        break MISSING_BLOCK_LABEL_29;
        exception;
        try
        {
            bytearrayinputstream.close();
        }
        catch(IOException ioexception) { }
        throw exception;
    }

    private ApplicationInfo getApplicationInfo(String s)
    {
        ApplicationInfo applicationinfo = null;
        ApplicationInfo applicationinfo1 = mPackageManager.getApplicationInfo(s, 0);
        applicationinfo = applicationinfo1;
_L2:
        return applicationinfo;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private String getSignatureInfo(X509Certificate x509certificate, String s)
    {
        int i = s.length();
        String s1 = x509certificate.getIssuerX500Principal().getName();
        int j = i + s1.lastIndexOf(s);
        String s2;
        if(j == 1)
        {
            s2 = null;
        } else
        {
            int k = j;
            while(false) 
            {
                while(k < s1.length() && s1.charAt(k) != ',') 
                    k++;
                s2 = s1.substring(j, k);
            }
        }
        return s2;
    }

    public void closeApp(String s)
    {
        mActivityManager.restartPackage(s);
    }

    public void closeApp_above_2_2(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(0x10000000);
        intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
        intent.putExtra("com.android.settings.ApplicationPkgName", s);
        intent.putExtra("pkg", s);
        mContext.startActivity(intent);
    }

    public void closeApps(List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            AppInfo appinfo;
            do
            {
                if(!iterator.hasNext())
                    return;
                appinfo = (AppInfo)iterator.next();
            } while(appinfo.getPkgName().equals(mContext.getPackageName()));
            closeApp(appinfo.getPkgName());
        } while(true);
    }

    public AppInfo getAdvancedApkInfo(AppInfo appinfo, int i)
    {
        Object obj;
        String s;
        obj = null;
        s = appinfo.getApkPath();
        Object obj3;
        Object aobj2[] = new Object[1];
        aobj2[0] = s;
        obj3 = ReflectUtil.newInstance("android.content.pm.PackageParser", aobj2);
        Object obj1 = obj3;
_L4:
        File file;
        DisplayMetrics displaymetrics;
        file = new File(s);
        displaymetrics = new DisplayMetrics();
        displaymetrics.setToDefaults();
        Object obj2;
        Object aobj1[] = new Object[4];
        aobj1[0] = file;
        aobj1[1] = s;
        aobj1[2] = displaymetrics;
        aobj1[3] = Integer.valueOf(0);
        obj2 = ReflectUtil.invokeMethod(obj1, "parsePackage", aobj1);
        obj = obj2;
_L2:
        if(obj == null)
            break MISSING_BLOCK_LABEL_317;
        if((i & 1) == 0)
            break MISSING_BLOCK_LABEL_192;
        Object aobj[] = new Object[2];
        aobj[0] = obj;
        aobj[1] = Integer.valueOf(0);
        ReflectUtil.invokeMethod(obj1, "collectCertificates", aobj);
        X509Certificate x509certificate = (X509Certificate)getAppCertification(((Signature[])ReflectUtil.getProperty(obj, "mSignatures"))[0]);
        if(x509certificate != null)
        {
            appinfo.setCertMD5(MD5Util.encrypt_bytes(x509certificate.getEncoded()));
            appinfo.setCompany(getSignatureInfo(x509certificate, "O="));
        }
        if((i & 2) != 0)
        {
            AppSecurityPermissions appsecuritypermissions = new AppSecurityPermissions(mContext, obj);
            Map map = appsecuritypermissions.getPermissions(true);
            HashMap hashmap = new HashMap();
            Iterator iterator = map.keySet().iterator();
            do
            {
                if(!iterator.hasNext())
                {
                    appinfo.setPermissions((HashMap)hashmap);
                    break;
                }
                String s1 = (String)iterator.next();
                hashmap.put(appsecuritypermissions.getGroupLabel(s1), (String)map.get(s1));
            } while(true);
        }
        break MISSING_BLOCK_LABEL_317;
        Exception exception2;
        exception2;
        break MISSING_BLOCK_LABEL_317;
        Exception exception1;
        exception1;
        if(true) goto _L2; else goto _L1
_L1:
        return appinfo;
        Exception exception;
        exception;
        obj1 = obj;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public AppInfo getAdvancedAppInfo(AppInfo appinfo, int i)
    {
        try
        {
            PackageInfo packageinfo = mPackageManager.getPackageInfo(appinfo.getPkgName(), 4160);
            if(packageinfo != null)
            {
                if((i & 1) != 0)
                {
                    X509Certificate x509certificate = (X509Certificate)getAppCertification(packageinfo.signatures[0]);
                    if(x509certificate != null)
                    {
                        appinfo.setCertMD5(MD5Util.encrypt_bytes(x509certificate.getEncoded()));
                        appinfo.setCompany(getSignatureInfo(x509certificate, "O="));
                    }
                }
                if((i & 2) != 0)
                {
                    AppSecurityPermissions appsecuritypermissions = new AppSecurityPermissions(mContext, appinfo.getPkgName());
                    Map map = appsecuritypermissions.getPermissions(true);
                    HashMap hashmap = new HashMap();
                    Iterator iterator = map.keySet().iterator();
                    do
                    {
                        if(!iterator.hasNext())
                        {
                            appinfo.setPermissions((HashMap)hashmap);
                            break;
                        }
                        String s = (String)iterator.next();
                        hashmap.put(appsecuritypermissions.getGroupLabel(s), (String)map.get(s));
                    } while(true);
                }
            }
        }
        catch(android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            namenotfoundexception.getMessage();
        }
        catch(CertificateEncodingException certificateencodingexception) { }
        return appinfo;
    }

    public List getAdvancedAppInfoList(List list)
    {
        Iterator iterator = list.iterator();
        do
        {
            if(!iterator.hasNext())
                return list;
            getAdvancedAppInfo((AppInfo)iterator.next(), 1);
        } while(true);
    }

    public List getAllInstalledApp(boolean flag, boolean flag1, boolean flag2)
    {
        List list = mPackageManager.getInstalledApplications(8192);
        if(list != null) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = new ArrayList();
_L7:
        return arraylist;
_L2:
        ArrayList arraylist1;
        Iterator iterator;
        arraylist1 = new ArrayList();
        iterator = list.iterator();
_L8:
        if(iterator.hasNext()) goto _L4; else goto _L3
_L3:
        if(!flag1 || !flag) goto _L6; else goto _L5
_L5:
        ArrayList arraylist2;
        ArrayList arraylist3;
        Iterator iterator1;
        arraylist2 = new ArrayList();
        arraylist3 = new ArrayList();
        iterator1 = arraylist1.iterator();
_L9:
        if(iterator1.hasNext())
            break MISSING_BLOCK_LABEL_244;
        arraylist1.clear();
        arraylist1.addAll(arraylist3);
        arraylist1.addAll(arraylist2);
_L6:
        arraylist = arraylist1;
          goto _L7
_L4:
        ApplicationInfo applicationinfo = (ApplicationInfo)iterator.next();
        if(flag2 || !applicationinfo.packageName.equals(mContext.getPackageName()))
        {
            boolean flag3;
            AppInfo appinfo1;
            if(!flag && (1 & applicationinfo.flags) != 0)
                flag3 = true;
            else
                flag3 = false;
            if(!flag3)
            {
                AppInfo appinfo = getBasicAppInfoWithoutIcon(applicationinfo);
                if(appinfo != null)
                {
                    boolean flag4;
                    if((1 & applicationinfo.flags) != 0)
                        flag4 = true;
                    else
                        flag4 = false;
                    appinfo.setSysApp(flag4);
                    arraylist1.add(appinfo);
                }
            }
        }
          goto _L8
        appinfo1 = (AppInfo)iterator1.next();
        if(appinfo1.isSysApp())
            arraylist2.add(appinfo1);
        else
            arraylist3.add(appinfo1);
          goto _L9
    }

    public List getAllRunningTask(boolean flag, boolean flag1, boolean flag2)
    {
        ArrayList arraylist;
        Iterator iterator;
        arraylist = new ArrayList();
        iterator = mActivityManager.getRunningAppProcesses().iterator();
_L6:
        if(iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if(!flag2) goto _L4; else goto _L3
_L3:
        ArrayList arraylist1;
        ArrayList arraylist2;
        Iterator iterator1;
        arraylist1 = new ArrayList();
        arraylist2 = new ArrayList();
        iterator1 = arraylist.iterator();
_L11:
        if(iterator1.hasNext())
            break MISSING_BLOCK_LABEL_377;
        arraylist.clear();
        arraylist.addAll(arraylist2);
        arraylist.addAll(arraylist1);
_L4:
        return arraylist;
_L2:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
        if(runningappprocessinfo == null || runningappprocessinfo.pkgList == null) goto _L6; else goto _L5
_L5:
        String as[];
        int i;
        ApplicationInfo applicationinfo;
        int j;
        as = runningappprocessinfo.pkgList;
        i = as.length;
        applicationinfo = null;
        j = 0;
_L10:
        if(j < i) goto _L8; else goto _L7
_L7:
        ApplicationInfo applicationinfo1 = applicationinfo;
        if(applicationinfo1 != null && (flag || !applicationinfo1.packageName.equalsIgnoreCase(mContext.getPackageName())))
        {
            boolean flag3;
            AppInfo appinfo;
            if((1 & applicationinfo1.flags) != 0)
                flag3 = true;
            else
                flag3 = false;
            appinfo = new AppInfo();
            appinfo.setPkgName(applicationinfo1.packageName);
            if(flag2)
            {
                if(!arraylist.contains(appinfo))
                {
                    AppInfo appinfo2;
                    if(flag1)
                        appinfo2 = getBasicAppInfo(applicationinfo1);
                    else
                        appinfo2 = getBasicAppInfoWithoutIcon(applicationinfo1);
                    if(appinfo2 != null)
                    {
                        appinfo2.setSysApp(flag3);
                        arraylist.add(appinfo2);
                    }
                }
            } else
            if(!flag3 && !arraylist.contains(appinfo))
            {
                AppInfo appinfo1;
                if(flag1)
                    appinfo1 = getBasicAppInfo(applicationinfo1);
                else
                    appinfo1 = getBasicAppInfoWithoutIcon(applicationinfo1);
                if(appinfo1 != null)
                {
                    appinfo1.setSysApp(flag3);
                    arraylist.add(appinfo1);
                }
            }
        }
          goto _L6
_L8:
        if((applicationinfo = getApplicationInfo(as[j])) != null) goto _L7; else goto _L9
_L9:
        j++;
          goto _L10
        AppInfo appinfo3 = (AppInfo)iterator1.next();
        if(appinfo3.isSysApp())
            arraylist1.add(appinfo3);
        else
            arraylist2.add(appinfo3);
          goto _L11
    }

    public AppInfo getAppPermissions(AppInfo appinfo)
    {
        try
        {
            appinfo.setPermissionNames(mPackageManager.getPackageInfo(appinfo.getPkgName(), 4096).requestedPermissions);
        }
        catch(android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        return appinfo;
    }

    public int getAppVersionStatus(String s, int i)
    {
        byte byte0;
label0:
        {
label1:
            {
                byte0 = -1;
                int j;
                try
                {
                    PackageInfo packageinfo = getPackageInfo(s);
                    if(packageinfo == null)
                        break label0;
                    if(packageinfo == null)
                        break label1;
                    if(i == packageinfo.versionCode)
                    {
                        byte0 = 0;
                        break label0;
                    }
                    j = packageinfo.versionCode;
                }
                catch(Exception exception)
                {
                    exception.getMessage();
                    break label0;
                }
                if(i < j)
                {
                    byte0 = 2;
                    break label0;
                }
            }
            byte0 = 1;
        }
        return byte0;
    }

    public String getApplicationLabel(String s)
    {
        PackageInfo packageinfo = mPackageManager.getPackageArchiveInfo(s, 1);
        return mPackageManager.getApplicationLabel(packageinfo.applicationInfo).toString();
    }

    public ApkInfo getBasicApkInfo(String s)
    {
        ApkInfo apkinfo;
label0:
        {
            PackageInfo packageinfo = mPackageManager.getPackageArchiveInfo(s, 1);
            if(packageinfo != null)
            {
                ApkInfo apkinfo1 = new ApkInfo();
                List list = ApkInfoUtil.readApkInfo(mContext, s);
                if(list != null && list.size() != 0)
                {
                    if(list.get(0) == null)
                        apkinfo1.setAppName((new StringBuilder()).append(mPackageManager.getApplicationLabel(packageinfo.applicationInfo)).toString());
                    else
                        apkinfo1.setAppName((new StringBuilder()).append(list.get(0)).toString());
                    if(list.get(1) == null)
                        apkinfo1.setAppIcon(null);
                    else
                        apkinfo1.setAppIcon((Drawable)list.get(1));
                } else
                {
                    apkinfo1.setAppName((new StringBuilder()).append(mPackageManager.getApplicationLabel(packageinfo.applicationInfo)).toString());
                    apkinfo1.setAppIcon(mPackageManager.getApplicationIcon(packageinfo.applicationInfo));
                }
                apkinfo1.setPkgName(packageinfo.packageName);
                apkinfo1.setApkPath(s);
                apkinfo1.setVersion(packageinfo.versionName);
                apkinfo1.setVersionCode(packageinfo.versionCode);
                apkinfo1.setSize((new File(s)).length());
                apkinfo = apkinfo1;
                break label0;
            }
            apkinfo = null;
        }
_L2:
        return apkinfo;
        Exception exception;
        exception;
        apkinfo = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public AppInfo getBasicAppInfo(ApplicationInfo applicationinfo)
    {
        AppInfo appinfo = null;
        PackageInfo packageinfo = mPackageManager.getPackageInfo(applicationinfo.packageName, 1);
        Object obj = packageinfo;
_L2:
        if(obj != null)
        {
            appinfo = new AppInfo();
            appinfo.setAppIcon(mPackageManager.getApplicationIcon(applicationinfo));
            appinfo.setAppName(mPackageManager.getApplicationLabel(applicationinfo).toString().trim());
            appinfo.setPkgName(((PackageInfo) (obj)).packageName);
            appinfo.setApkPath(applicationinfo.sourceDir);
            appinfo.setVersion(((PackageInfo) (obj)).versionName);
            appinfo.setVersionCode(((PackageInfo) (obj)).versionCode);
            appinfo.setSize((new File(applicationinfo.sourceDir)).length());
        }
        return appinfo;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.getMessage();
        obj = appinfo;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public AppInfo getBasicAppInfo(String s)
    {
        ApplicationInfo applicationinfo = getApplicationInfo(s);
        AppInfo appinfo;
        if(applicationinfo != null)
            appinfo = getBasicAppInfo(applicationinfo);
        else
            appinfo = null;
        return appinfo;
    }

    public AppInfo getBasicAppInfoWithoutIcon(ApplicationInfo applicationinfo)
    {
        AppInfo appinfo = null;
        PackageInfo packageinfo = mPackageManager.getPackageInfo(applicationinfo.packageName, 1);
        Object obj = packageinfo;
_L2:
        if(obj != null)
        {
            appinfo = new AppInfo();
            appinfo.setAppName(mPackageManager.getApplicationLabel(applicationinfo).toString().trim());
            appinfo.setPkgName(((PackageInfo) (obj)).packageName);
            appinfo.setApkPath(applicationinfo.sourceDir);
            appinfo.setVersion(((PackageInfo) (obj)).versionName);
            appinfo.setVersionCode(((PackageInfo) (obj)).versionCode);
            appinfo.setSize((new File(applicationinfo.sourceDir)).length());
        }
        return appinfo;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.getMessage();
        obj = appinfo;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public AppInfo getBasicAppInfoWithoutIcon(String s)
    {
        ApplicationInfo applicationinfo = getApplicationInfo(s);
        AppInfo appinfo;
        if(applicationinfo != null)
            appinfo = getBasicAppInfoWithoutIcon(applicationinfo);
        else
            appinfo = null;
        return appinfo;
    }

    public PackageInfo getPackageInfo(String s)
    {
        PackageInfo packageinfo1 = mPackageManager.getPackageInfo(s, 1);
        PackageInfo packageinfo = packageinfo1;
_L2:
        return packageinfo;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        packageinfo = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void installApp(AppInfo appinfo, Context context)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(appinfo.getApkPath())), "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public void installApp(File file, Context context)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(0x10000000);
        intent.setDataAndType(Uri.fromFile(file), "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public boolean isNeedUpdate(String s, int i)
    {
        boolean flag = true;
        PackageInfo packageinfo = getPackageInfo(s);
        if(packageinfo != null && packageinfo.versionCode >= i)
            flag = false;
        return flag;
    }

    public boolean isPackageInstalled(String s)
    {
        PackageInfo packageinfo = getPackageInfo(s);
        if(packageinfo == null) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
        Exception exception;
        exception;
        exception.getMessage();
_L2:
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean isPackageInstalled(String s, int i)
    {
        PackageInfo packageinfo = getPackageInfo(s);
        if(packageinfo == null) goto _L2; else goto _L1
_L1:
        int j = packageinfo.versionCode;
        if(j != i) goto _L2; else goto _L3
_L3:
        boolean flag = true;
_L5:
        return flag;
        Exception exception;
        exception;
        exception.getMessage();
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public boolean isRunningApp(AppInfo appinfo)
    {
        return isRunningApp(appinfo.getPkgName());
    }

    public boolean isRunningApp(String s)
    {
        Iterator iterator = getAllRunningTask(true, false, true).iterator();
_L2:
        boolean flag;
        if(iterator.hasNext())
            continue; /* Loop/switch isn't completed */
        flag = false;
_L3:
        return flag;
        if(!((AppInfo)iterator.next()).getPkgName().equals(s)) goto _L2; else goto _L1
_L1:
        flag = true;
          goto _L3
        if(true) goto _L2; else goto _L4
_L4:
    }

    public boolean startUpApp(Context context, String s)
    {
        boolean flag = false;
        try
        {
            Intent intent = mPackageManager.getLaunchIntentForPackage(s);
            if(intent != null)
            {
                intent.setFlags(0x10200000);
                context.startActivity(intent);
                flag = true;
            } else
            {
                (new StringBuilder(String.valueOf(s))).append(" is not a visualble application").toString();
            }
        }
        catch(Exception exception)
        {
            exception.toString();
            (new StringBuilder(String.valueOf(s))).append(" is not a visualble application").toString();
        }
        return flag;
    }

    public void uninstallApp(AppInfo appinfo, Context context)
    {
        context.startActivity(new Intent("android.intent.action.DELETE", Uri.parse((new StringBuilder("package:")).append(appinfo.getPkgName()).toString())));
    }

    public void uninstallApp(String s, Activity activity)
    {
        activity.startActivityForResult(new Intent("android.intent.action.DELETE", Uri.parse((new StringBuilder("package:")).append(s).toString())), 1);
    }

    public static final int GET_PERMISSIONS = 2;
    public static final int GET_SIGNATURES = 1;
    private static final String TAG = "ApplicationManager";
    private ActivityManager mActivityManager;
    private CertificateFactory mCertificateFactory;
    private Context mContext;
    private PackageManager mPackageManager;
}

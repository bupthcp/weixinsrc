// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.io.File;
import java.lang.reflect.*;
import java.util.ArrayList;
import java.util.List;

public class ApkInfoUtil
{

    public ApkInfoUtil()
    {
    }

    public static List readApkInfo(Context context, String s)
    {
        ArrayList arraylist = new ArrayList();
        ApplicationInfo applicationinfo;
        Resources resources1;
        CharSequence charsequence;
        Class class1 = Class.forName("android.content.pm.PackageParser");
        Class aclass[] = new Class[1];
        aclass[0] = java/lang/String;
        Constructor constructor = class1.getConstructor(aclass);
        Object aobj[] = new Object[1];
        aobj[0] = s;
        Object obj = constructor.newInstance(aobj);
        (new StringBuilder("pkgParser:")).append(obj.toString()).toString();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        displaymetrics.setToDefaults();
        Class aclass1[] = new Class[4];
        aclass1[0] = java/io/File;
        aclass1[1] = java/lang/String;
        aclass1[2] = android/util/DisplayMetrics;
        aclass1[3] = Integer.TYPE;
        Method method = class1.getDeclaredMethod("parsePackage", aclass1);
        Object aobj1[] = new Object[4];
        aobj1[0] = new File(s);
        aobj1[1] = s;
        aobj1[2] = displaymetrics;
        aobj1[3] = Integer.valueOf(0);
        Object obj1 = method.invoke(obj, aobj1);
        applicationinfo = (ApplicationInfo)obj1.getClass().getDeclaredField("applicationInfo").get(obj1);
        (new StringBuilder("pkg:")).append(applicationinfo.packageName).append(" uid=").append(applicationinfo.uid).toString();
        Class class2 = Class.forName("android.content.res.AssetManager");
        Object obj2 = class2.getConstructor(null).newInstance(null);
        Class aclass2[] = new Class[1];
        aclass2[0] = java/lang/String;
        Method method1 = class2.getDeclaredMethod("addAssetPath", aclass2);
        Object aobj2[] = new Object[1];
        aobj2[0] = s;
        method1.invoke(obj2, aobj2);
        Resources resources = context.getResources();
        Class aclass3[] = new Class[3];
        aclass3[0] = obj2.getClass();
        aclass3[1] = resources.getDisplayMetrics().getClass();
        aclass3[2] = resources.getConfiguration().getClass();
        Constructor constructor1 = android/content/res/Resources.getConstructor(aclass3);
        Object aobj3[] = new Object[3];
        aobj3[0] = obj2;
        aobj3[1] = resources.getDisplayMetrics();
        aobj3[2] = resources.getConfiguration();
        resources1 = (Resources)constructor1.newInstance(aobj3);
        if(applicationinfo.labelRes == 0)
            break MISSING_BLOCK_LABEL_482;
        charsequence = resources1.getText(applicationinfo.labelRes);
_L5:
        (new StringBuilder("label=")).append(charsequence).toString();
        if(applicationinfo.icon == 0) goto _L2; else goto _L1
_L1:
        android.graphics.drawable.Drawable drawable = resources1.getDrawable(applicationinfo.icon);
_L4:
        arraylist.add(charsequence);
        arraylist.add(drawable);
_L3:
        return arraylist;
        Exception exception;
        exception;
        if(true) goto _L3; else goto _L2
_L2:
        drawable = null;
          goto _L4
        charsequence = null;
          goto _L5
    }
}

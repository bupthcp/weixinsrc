// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;


// Referenced classes of package com.tencent.qqpim.utils.app:
//            AppInfo

public class ApkInfo extends AppInfo
{

    public ApkInfo()
    {
    }

    public boolean equals(Object obj)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(obj != null && (obj instanceof ApkInfo))
        {
            ApkInfo apkinfo = (ApkInfo)obj;
            flag = getApkPath().toLowerCase().equals(apkinfo.getApkPath().toLowerCase());
        }
        return flag;
    }
}

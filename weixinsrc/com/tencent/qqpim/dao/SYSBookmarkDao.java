// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.ContentResolver;
import android.content.Context;
import com.tencent.qqpim.interfaces.IDao;
import com.tencent.qqpim.utils.QQPimUtils;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSBookmarkDaoV1, SYSBookmarkDaoV2

public abstract class SYSBookmarkDao
    implements IDao
{

    protected SYSBookmarkDao(Context context)
    {
        contentResolver = context.getContentResolver();
    }

    public static IDao getIDao(Context context)
    {
        Object obj;
        if(QQPimUtils.isSDKVersionBelow2())
            obj = SYSBookmarkDaoV1.getInstance(context);
        else
            obj = SYSBookmarkDaoV2.getInstance(context);
        return ((IDao) (obj));
    }

    public static int getSDKVersion()
    {
        return (new Integer(android.os.Build.VERSION.SDK)).intValue();
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

    public String queryNameById(String s)
    {
        return null;
    }

    public static final int OS_1_5 = 3;
    public static final int OS_1_6 = 4;
    public static final int OS_2 = 5;
    public static final int OS_2_0_1 = 6;
    public static final int OS_2_1 = 7;
    public static final int OS_2_2 = 8;
    public static final short version = 4352;
    protected ContentResolver contentResolver;
}

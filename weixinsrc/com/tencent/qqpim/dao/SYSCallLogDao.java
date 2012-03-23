// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.ContentResolver;
import android.content.Context;
import com.tencent.qqpim.interfaces.IDao;
import com.tencent.qqpim.utils.QQPimUtils;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSCallLogDaoV1, SYSCallLogDaoV2

public abstract class SYSCallLogDao
    implements IDao
{

    protected SYSCallLogDao(Context context)
    {
        contentResolver = context.getContentResolver();
    }

    public static IDao getIDao(Context context)
    {
        Object obj;
        if(QQPimUtils.isSDKVersionBelow2())
            obj = SYSCallLogDaoV1.getInstance(context);
        else
            obj = SYSCallLogDaoV2.getInstance(context);
        return ((IDao) (obj));
    }

    public String queryNameById(String s)
    {
        return null;
    }

    protected ContentResolver contentResolver;
}

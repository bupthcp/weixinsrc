// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.dao;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import com.tencent.qqpim.interfaces.IDao;
import com.tencent.qqpim.interfaces.IPhoneLookup;
import com.tencent.qqpim.utils.QQPimUtils;
import java.util.ArrayList;

// Referenced classes of package com.tencent.qqpim.dao:
//            SYSContactDaoV1, SYSContactDaoV2

public abstract class SYSContactDao
    implements IDao, IPhoneLookup
{

    protected SYSContactDao(Context context)
    {
        contentResolver = context.getContentResolver();
    }

    public static IDao getIDao(Context context)
    {
        Object obj;
        if(QQPimUtils.isSDKVersionBelow2())
            obj = SYSContactDaoV1.getInstance(context);
        else
            obj = new SYSContactDaoV2(context);
        return ((IDao) (obj));
    }

    protected void interpretGroupNames(String s, ArrayList arraylist)
    {
        if(s != null && arraylist != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j;
        String s2;
        int k;
        String s1 = new String(s);
        if(s1.length() <= 0)
            continue; /* Loop/switch isn't completed */
        int i = s1.indexOf(",");
        j = s1.length();
        s2 = s1;
        k = i;
_L4:
label0:
        {
            if(-1 != k)
                break label0;
            arraylist.add(s2);
        }
        if(true) goto _L1; else goto _L3
_L3:
        String s3 = s2.substring(0, k);
        if(k + 1 <= j + -1)
            s2 = s2.substring(k + 1);
        arraylist.add(s3);
        k = s2.indexOf(",");
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    private static Uri LOOKUP_PHONE_URI = Uri.parse("content://contacts/phones");
    protected static ContentResolver contentResolver;
    public static final short version = 4352;

}

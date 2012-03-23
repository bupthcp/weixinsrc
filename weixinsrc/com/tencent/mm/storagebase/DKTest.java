// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storagebase;

import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;

final class DKTest
{

    private DKTest()
    {
    }

    static void a()
    {
        if(a)
        {
            c = new com.tencent.mm.algorithm.CodeInfo.TestTime();
            b = 1 + b;
        }
    }

    private static void a(Cursor cursor)
    {
        if(a && cursor != null)
        {
            e = cursor.getCount();
            com.tencent.mm.algorithm.CodeInfo.TestTime testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
            for(int i = 0; i < e; i++)
                cursor.moveToPosition(i);

            cursor.moveToFirst();
            d = testtime.b();
        }
    }

    static void a(String s, Cursor cursor, int i)
    {
        if(a)
        {
            long l = c.b();
            String s1 = (new StringBuilder()).append("[").append(b).append("][").append(l).append("]").toString();
            if(i != 0)
                s1 = (new StringBuilder()).append(s1).append("[INTRANS]").toString();
            if(cursor != null)
            {
                a(cursor);
                s1 = (new StringBuilder()).append(s1).append("[cuCnt:").append(e).append(",").append("cuTime:").append(d).append("]").toString();
            }
            String s2 = (new StringBuilder()).append(s1).append("[").append(s).append("]--").toString();
            Log.d("MicroMsg.dbtest", (new StringBuilder()).append(s2).append(Util.h()).toString());
        }
    }

    private static boolean a = false;
    private static int b = 0;
    private static com.tencent.mm.algorithm.CodeInfo.TestTime c = null;
    private static long d = 0L;
    private static int e = 0;

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;

public class MsgInfo
{

    public MsgInfo()
    {
        c = 1;
        d = 1;
        h = "";
        i = "";
        j = "";
        k = "";
        l = -2;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & l) != 0)
            contentvalues.put("msgId", Long.valueOf(a));
        if((2 & l) != 0)
            contentvalues.put("msgSvrId", Integer.valueOf(b));
        if((4 & l) != 0)
            contentvalues.put("type", Integer.valueOf(c));
        if((8 & l) != 0)
            contentvalues.put("status", Integer.valueOf(d));
        if((0x10 & l) != 0)
            contentvalues.put("isSend", Integer.valueOf(e));
        if((0x20 & l) != 0)
            contentvalues.put("isShowTimer", Integer.valueOf(f));
        if((0x40 & l) != 0)
            contentvalues.put("createTime", Long.valueOf(g));
        if((0x80 & l) != 0)
            contentvalues.put("talker", h);
        if((0x100 & l) != 0)
            contentvalues.put("content", i);
        if((0x200 & l) != 0)
            contentvalues.put("imgPath", j);
        if((0x400 & l) != 0)
            contentvalues.put("reserved", k);
        return contentvalues;
    }

    public final void a(int i1)
    {
        l = i1;
    }

    public final void a(long l1)
    {
        a = l1;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getLong(0);
        b = cursor.getInt(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getInt(5);
        g = cursor.getLong(6);
        h = cursor.getString(7);
        i = cursor.getString(8);
        j = cursor.getString(9);
        k = cursor.getString(10);
    }

    public final void a(String s)
    {
        h = s;
    }

    public final long b()
    {
        return a;
    }

    public final void b(int i1)
    {
        b = i1;
    }

    public final void b(long l1)
    {
        g = l1;
    }

    public final void b(String s)
    {
        i = s;
    }

    public final int c()
    {
        return b;
    }

    public final void c(int i1)
    {
        c = i1;
    }

    public final void c(String s)
    {
        j = s;
    }

    public final int d()
    {
        return c;
    }

    public final void d(int i1)
    {
        d = i1;
    }

    public final int e()
    {
        return d;
    }

    public final void e(int i1)
    {
        e = i1;
    }

    public final int f()
    {
        return e;
    }

    public final long g()
    {
        return g;
    }

    public final String h()
    {
        return h;
    }

    public final String i()
    {
        return i;
    }

    public final String j()
    {
        return j;
    }

    public final boolean k()
    {
        boolean flag;
        if(c == 34)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean l()
    {
        c;
        JVM INSTR lookupswitch 5: default 56
    //                   3: 60
    //                   13: 60
    //                   23: 60
    //                   33: 60
    //                   39: 60;
           goto _L1 _L2 _L2 _L2 _L2 _L2
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean m()
    {
        boolean flag;
        if(c == 35)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean n()
    {
        boolean flag;
        if(c == 42)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean o()
    {
        c;
        JVM INSTR lookupswitch 5: default 56
    //                   1: 60
    //                   11: 60
    //                   21: 60
    //                   31: 60
    //                   36: 60;
           goto _L1 _L2 _L2 _L2 _L2 _L2
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean p()
    {
        boolean flag;
        if(c == 43)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean q()
    {
        boolean flag;
        if(c == 47)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private long a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private long g;
    private String h;
    private String i;
    private String j;
    private String k;
    private int l;
}

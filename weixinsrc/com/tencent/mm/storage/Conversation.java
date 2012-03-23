// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;

// Referenced classes of package com.tencent.mm.storage:
//            MsgInfo

public class Conversation
{

    public Conversation()
    {
    }

    public Conversation(String s)
    {
        e = s;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("unReadCount", Integer.valueOf(a));
        contentvalues.put("status", Integer.valueOf(b));
        contentvalues.put("isSend", Integer.valueOf(c));
        contentvalues.put("createTime", Long.valueOf(d));
        contentvalues.put("username", e);
        contentvalues.put("content", f);
        contentvalues.put("reserved", g);
        return contentvalues;
    }

    public final void a(int k)
    {
        a = k;
    }

    public final void a(long l)
    {
        d = l;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getInt(0);
        b = cursor.getInt(1);
        c = cursor.getInt(2);
        d = cursor.getLong(3);
        e = cursor.getString(4);
        f = cursor.getString(5);
        g = cursor.getString(6);
    }

    public final void a(MsgInfo msginfo)
    {
        b = msginfo.e();
        c = msginfo.f();
        long l;
        if(msginfo.e() == 1)
            l = 0x7fffffffffffffffL;
        else
            l = msginfo.g();
        d = l;
        f = msginfo.i();
    }

    public final void a(String s)
    {
        e = s;
    }

    public final int b()
    {
        return a;
    }

    public final void b(String s)
    {
        f = s;
    }

    public final int c()
    {
        return b;
    }

    public final void c(String s)
    {
        g = s;
    }

    public final int d()
    {
        return c;
    }

    public final void e()
    {
        c = 0;
    }

    public final long f()
    {
        return d;
    }

    public final String g()
    {
        return e;
    }

    public final String h()
    {
        return f;
    }

    public final String i()
    {
        return g;
    }

    public final void j()
    {
        b = 0;
        c = 0;
        f = "";
        a = 0;
    }

    private int a;
    private int b;
    private int c;
    private long d;
    private String e;
    private String f;
    private String g;
}

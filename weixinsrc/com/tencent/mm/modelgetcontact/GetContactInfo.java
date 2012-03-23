// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetcontact;

import android.content.ContentValues;
import android.database.Cursor;

public class GetContactInfo
{

    public GetContactInfo()
    {
        i = -1;
        a = "";
        b = 0L;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = "";
        h = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & i) != 0)
            contentvalues.put("username", c());
        if((2 & i) != 0)
            contentvalues.put("inserttime", Long.valueOf(b));
        if((4 & i) != 0)
            contentvalues.put("type", Integer.valueOf(c));
        if((8 & i) != 0)
            contentvalues.put("lastgettime", Integer.valueOf(d));
        if((0x10 & i) != 0)
            contentvalues.put("reserved1", Integer.valueOf(e));
        if((0x20 & i) != 0)
            contentvalues.put("reserved2", Integer.valueOf(f));
        if((0x40 & i) != 0)
        {
            String s1;
            if(g == null)
                s1 = "";
            else
                s1 = g;
            contentvalues.put("reserved3", s1);
        }
        if((0x80 & i) != 0)
        {
            String s;
            if(h == null)
                s = "";
            else
                s = h;
            contentvalues.put("reserved4", s);
        }
        return contentvalues;
    }

    public final void a(long l)
    {
        b = l;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getString(0);
        b = cursor.getLong(1);
        c = cursor.getInt(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getInt(5);
        g = cursor.getString(6);
        h = cursor.getString(7);
    }

    public final void a(String s)
    {
        a = s;
    }

    public final void b()
    {
        i = -1;
    }

    public final String c()
    {
        String s;
        if(a == null)
            s = "";
        else
            s = a;
        return s;
    }

    private String a;
    private long b;
    private int c;
    private int d;
    private int e;
    private int f;
    private String g;
    private String h;
    private int i;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpackage;

import android.content.ContentValues;
import android.database.Cursor;

public class ChattingBgInfo
{

    public ChattingBgInfo()
    {
        h = -1;
        a = "";
        b = 0;
        c = "";
        d = "";
        e = "";
        f = 0;
        g = 0;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & h) != 0)
            contentvalues.put("username", c());
        if((2 & h) != 0)
            contentvalues.put("bgflag", Integer.valueOf(b));
        if((4 & h) != 0)
        {
            String s2;
            if(c == null)
                s2 = "";
            else
                s2 = c;
            contentvalues.put("path", s2);
        }
        if((8 & h) != 0)
        {
            String s1;
            if(d == null)
                s1 = "";
            else
                s1 = d;
            contentvalues.put("reserved1", s1);
        }
        if((0x10 & h) != 0)
        {
            String s;
            if(e == null)
                s = "";
            else
                s = e;
            contentvalues.put("reserved2", s);
        }
        if((0x20 & h) != 0)
            contentvalues.put("reserved3", Integer.valueOf(f));
        if((0x40 & h) != 0)
            contentvalues.put("reserved4", Integer.valueOf(g));
        return contentvalues;
    }

    public final void a(int i)
    {
        b = i;
    }

    public final void a(Cursor cursor)
    {
        a = cursor.getString(0);
        b = cursor.getInt(1);
        c = cursor.getString(2);
        d = cursor.getString(3);
        e = cursor.getString(4);
        f = cursor.getInt(5);
        g = cursor.getInt(6);
    }

    public final void a(String s)
    {
        a = s;
    }

    public final void b()
    {
        h = -1;
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

    public final int d()
    {
        return b;
    }

    private String a;
    private int b;
    private String c;
    private String d;
    private String e;
    private int f;
    private int g;
    private int h;
}

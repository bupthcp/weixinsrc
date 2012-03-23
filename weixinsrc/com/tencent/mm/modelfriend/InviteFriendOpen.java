// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;

public class InviteFriendOpen
{

    public InviteFriendOpen()
    {
        h = -1;
        a = "";
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = "";
        g = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & h) != 0)
            contentvalues.put("username", c());
        if((2 & h) != 0)
            contentvalues.put("friendtype", Integer.valueOf(b));
        if((4 & h) != 0)
            contentvalues.put("updatetime", Integer.valueOf(c));
        if((8 & h) != 0)
            contentvalues.put("reserved1", Integer.valueOf(d));
        if((0x10 & h) != 0)
            contentvalues.put("reserved2", Integer.valueOf(e));
        if((0x20 & h) != 0)
        {
            String s1;
            if(f == null)
                s1 = "";
            else
                s1 = f;
            contentvalues.put("reserved3", s1);
        }
        if((0x40 & h) != 0)
        {
            String s;
            if(g == null)
                s = "";
            else
                s = g;
            contentvalues.put("reserved4", s);
        }
        return contentvalues;
    }

    public final void a(int i)
    {
        b = i;
    }

    public final void a(String s)
    {
        a = s;
    }

    public final void b()
    {
        h = -1;
    }

    public final void b(int i)
    {
        c = i;
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
    private int b;
    private int c;
    private int d;
    private int e;
    private String f;
    private String g;
    private int h;
}

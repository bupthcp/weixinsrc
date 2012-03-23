// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.ContentValues;

public class FriendExt
{

    public FriendExt()
    {
        g = -1;
        a = "";
        b = 0;
        c = 0;
        d = "";
        e = "";
        f = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & g) != 0)
            contentvalues.put("username", c());
        if((2 & g) != 0)
            contentvalues.put("sex", Integer.valueOf(b));
        if((4 & g) != 0)
            contentvalues.put("personalcard", Integer.valueOf(c));
        if((8 & g) != 0)
        {
            String s2;
            if(d == null)
                s2 = "";
            else
                s2 = d;
            contentvalues.put("province", s2);
        }
        if((0x10 & g) != 0)
        {
            String s1;
            if(e == null)
                s1 = "";
            else
                s1 = e;
            contentvalues.put("city", s1);
        }
        if((0x20 & g) != 0)
        {
            String s;
            if(f == null)
                s = "";
            else
                s = f;
            contentvalues.put("signature", s);
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
        g = -1;
    }

    public final void b(int i)
    {
        c = i;
    }

    public final void b(String s)
    {
        d = s;
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

    public final void c(String s)
    {
        e = s;
    }

    public final void d(String s)
    {
        f = s;
    }

    private String a;
    private int b;
    private int c;
    private String d;
    private String e;
    private String f;
    private int g;
}

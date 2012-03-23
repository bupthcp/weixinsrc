// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetvuserinfo;

import android.content.ContentValues;

public class VUserInfo
{

    public VUserInfo()
    {
        g = -1;
        a = 0;
        b = "";
        c = 0;
        d = 0;
        e = "";
        f = "";
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & g) != 0)
            contentvalues.put("id", Integer.valueOf(a));
        if((2 & g) != 0)
        {
            String s2;
            if(b == null)
                s2 = "";
            else
                s2 = b;
            contentvalues.put("desc", s2);
        }
        if((4 & g) != 0)
            contentvalues.put("reserved1", Integer.valueOf(c));
        if((8 & g) != 0)
            contentvalues.put("reserved2", Integer.valueOf(d));
        if((0x10 & g) != 0)
        {
            String s1;
            if(e == null)
                s1 = "";
            else
                s1 = e;
            contentvalues.put("reserved3", s1);
        }
        if((0x20 & g) != 0)
        {
            String s;
            if(f == null)
                s = "";
            else
                s = f;
            contentvalues.put("reserved4", s);
        }
        return contentvalues;
    }

    public final void a(int i)
    {
        a = i;
    }

    public final void a(String s)
    {
        b = s;
    }

    public final void b()
    {
        g = -1;
    }

    private int a;
    private String b;
    private int c;
    private int d;
    private String e;
    private String f;
    private int g;
}

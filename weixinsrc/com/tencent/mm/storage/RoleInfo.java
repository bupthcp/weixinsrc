// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;

public class RoleInfo
{

    public RoleInfo()
    {
        a = 135;
        b = "";
        c = null;
        c = null;
        b = "";
        d = 0;
        e = 0;
    }

    public RoleInfo(String s, boolean flag, int i)
    {
        a = 135;
        b = "";
        c = null;
        c = new Parser(s);
        b = s;
        int j;
        if(flag)
            j = 1;
        else
            j = 0;
        d = j | 2;
        e = i;
    }

    public final String a()
    {
        return b;
    }

    public final void a(int i)
    {
        a = i;
    }

    public final void a(Cursor cursor)
    {
        if((2 & a) != 0)
        {
            b = cursor.getString(1);
            if(c == null)
                c = new Parser(b);
        }
        if((4 & a) != 0)
            d = cursor.getInt(2);
        if((0x80 & a) != 0)
            e = cursor.getInt(7);
    }

    public final void a(boolean flag)
    {
        if(flag)
        {
            int i = d;
            boolean flag1;
            if(flag)
                flag1 = true;
            else
                flag1 = false;
            d = flag1 | i;
        } else
        {
            d = -2 & d;
        }
    }

    public final void b(boolean flag)
    {
        if(flag)
        {
            int i = d;
            byte byte0;
            if(flag)
                byte0 = 2;
            else
                byte0 = 0;
            d = byte0 | i;
        } else
        {
            d = -3 & d;
        }
    }

    public final boolean b()
    {
        boolean flag;
        if((1 & d) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean c()
    {
        boolean flag;
        if((2 & d) != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean d()
    {
        boolean flag = true;
        if(e != flag)
            flag = false;
        return flag;
    }

    public final Parser e()
    {
        return c;
    }

    public final ContentValues f()
    {
        ContentValues contentvalues = new ContentValues();
        if((2 & a) != 0)
            contentvalues.put("name", b);
        if((4 & a) != 0)
            contentvalues.put("status", Integer.valueOf(d));
        if((0x80 & a) != 0)
            contentvalues.put("int_reserved1", Integer.valueOf(e));
        return contentvalues;
    }

    private int a;
    private String b;
    private Parser c;
    private int d;
    private int e;

    private class Parser
    {

        public final String a(String s)
        {
            if(a != null)
                s = a;
            return s;
        }

        private String a;
        private String b;

        public Parser(String s)
        {
            int i = s.indexOf("@");
            if(i >= 0)
            {
                b = s.substring(0, i);
                a = s.substring(i);
            } else
            {
                b = s;
                a = "";
            }
        }
    }

}

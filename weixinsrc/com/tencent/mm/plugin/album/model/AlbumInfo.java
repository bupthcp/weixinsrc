// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;

public class AlbumInfo
{

    public AlbumInfo()
    {
        q = -1;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & q) != 0)
            contentvalues.put("albumInfoID", Integer.valueOf(a));
        if((2 & q) != 0)
            contentvalues.put("pcId", b);
        if((4 & q) != 0)
            contentvalues.put("userName", c);
        if((8 & q) != 0)
            contentvalues.put("createTime", Long.valueOf(d));
        if((0x10 & q) != 0)
            contentvalues.put("type", Integer.valueOf(e));
        if((0x10 & q) != 0)
            contentvalues.put("createTime", Long.valueOf(d));
        if((0x20 & q) != 0)
            contentvalues.put("photo_flag", Integer.valueOf(f));
        if((0x40 & q) != 0)
            contentvalues.put("type_flag", Integer.valueOf(g));
        if((0x80 & q) != 0)
            contentvalues.put("like_flag", Integer.valueOf(h));
        if((0x100 & q) != 0)
            contentvalues.put("sequence", Integer.valueOf(i));
        if((0x200 & q) != 0)
            contentvalues.put("fLongitude", Float.valueOf(j));
        if((0x400 & q) != 0)
            contentvalues.put("fLatitude", Float.valueOf(k));
        if((0x800 & q) != 0)
            contentvalues.put("likecount", Integer.valueOf(l));
        if((0x1000 & q) != 0)
            contentvalues.put("description", m);
        if((0x2000 & q) != 0)
            contentvalues.put("cncity", n);
        if((0x4000 & q) != 0)
            contentvalues.put("twcity", o);
        if((0x8000 & q) != 0)
            contentvalues.put("encity", p);
        return contentvalues;
    }

    public final void a(float f1)
    {
        j = f1;
    }

    public final void a(int i1)
    {
        i = i1;
    }

    public final void a(long l1)
    {
        d = l1;
    }

    public final void a(Cursor cursor)
    {
        a(cursor.getString(1));
        c = cursor.getString(2);
        d = cursor.getInt(3);
        e = cursor.getInt(4);
        f = cursor.getInt(5);
        g = cursor.getInt(6);
        h = cursor.getInt(7);
        i = cursor.getInt(8);
        j = cursor.getInt(9);
        k = cursor.getInt(10);
        l = cursor.getInt(11);
        m = cursor.getString(12);
        n = cursor.getString(13);
        o = cursor.getString(14);
        p = cursor.getString(15);
    }

    public final void a(String s)
    {
        b = s;
        c = s.split(";")[0];
    }

    public final String b()
    {
        return b;
    }

    public final void b(float f1)
    {
        k = f1;
    }

    public final void b(int i1)
    {
        l = i1;
    }

    public final void b(String s)
    {
        c = s;
    }

    public final String c()
    {
        return c;
    }

    public final void c(int i1)
    {
        h = i1;
    }

    public final void c(String s)
    {
        n = s;
    }

    public final long d()
    {
        return d;
    }

    public final void d(String s)
    {
        o = s;
    }

    public final int e()
    {
        return i;
    }

    public final void e(String s)
    {
        p = s;
    }

    public final String f()
    {
        return n;
    }

    public final String g()
    {
        return o;
    }

    public final String h()
    {
        return p;
    }

    public final void i()
    {
        q = -2;
    }

    public final void j()
    {
        Log.d("MicroMsg.AlbumInfo", (new StringBuilder()).append(" pcId :").append(b).append(" userName: ").append(c).append(" typeFlag :").append(g).append(" delFlag: ").append(f).append(" ").toString());
        Log.d("MicroMsg.AlbumInfo", (new StringBuilder()).append(" desc :").append(m).append(" likeCount: ").append(h).append(" likeFlag :").append(g).append(" delFlag: ").append(f).append(" city: ").append(n).append(",").append(o).append(",").append(p).toString());
    }

    private int a;
    private String b;
    private String c;
    private long d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private float j;
    private float k;
    private int l;
    private String m;
    private String n;
    private String o;
    private String p;
    private int q;
}

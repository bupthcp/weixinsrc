// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelshake;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.protocal.protobuf.ShakeGetItem;
import com.tencent.mm.storagebase.MDBItem;

public class ShakeItem extends ShakeGetItem
    implements MDBItem
{

    public ShakeItem()
    {
        b = -1;
        d = 2;
    }

    public ShakeItem(ShakeGetItem shakegetitem)
    {
        b = -1;
        a(shakegetitem.c());
        b(shakegetitem.d());
        c(shakegetitem.e());
        d(shakegetitem.f());
        e(shakegetitem.g());
        f(shakegetitem.h());
        d(shakegetitem.m());
        a(shakegetitem.i());
        b(shakegetitem.j());
        c(shakegetitem.k());
        e(shakegetitem.n());
        g(shakegetitem.o());
        h(shakegetitem.p());
        d = 2;
        a(shakegetitem.l());
    }

    public final void a(Cursor cursor)
    {
        c = cursor.getInt(0);
        a(cursor.getString(1));
        b(cursor.getString(2));
        c(cursor.getString(3));
        d(cursor.getString(4));
        e(cursor.getString(5));
        f(cursor.getString(6));
        a(cursor.getInt(7));
        b(cursor.getInt(8));
        c(cursor.getInt(9));
        d = cursor.getInt(10);
        e(cursor.getInt(11));
        e = cursor.getInt(12);
        g(cursor.getString(13));
    }

    public final void f(int i)
    {
        d = i;
    }

    public final void g(int i)
    {
        b = i;
    }

    public final void h(int i)
    {
        e = i;
    }

    public final int q()
    {
        return d;
    }

    public final int r()
    {
        return e;
    }

    public final ContentValues s()
    {
        ContentValues contentvalues = new ContentValues();
        if((2 & b) != 0)
            contentvalues.put("username", c());
        if((4 & b) != 0)
            contentvalues.put("nickname", d());
        if((8 & b) != 0)
            contentvalues.put("province", e());
        if((0x10 & b) != 0)
            contentvalues.put("city", f());
        if((0x20 & b) != 0)
            contentvalues.put("signature", g());
        if((0x40 & b) != 0)
            contentvalues.put("distance", h());
        if((0x80 & b) != 0)
            contentvalues.put("sex", Integer.valueOf(i()));
        if((0x100 & b) != 0)
            contentvalues.put("imgstatus", Integer.valueOf(j()));
        if((0x200 & b) != 0)
            contentvalues.put("hasHDImg", Integer.valueOf(k()));
        if((0x400 & b) != 0)
            contentvalues.put("insertBatch", Integer.valueOf(d));
        if((0x800 & b) != 0)
            contentvalues.put("reserved1", Integer.valueOf(n()));
        if((0x1000 & b) != 0)
            contentvalues.put("reserved2", Integer.valueOf(e));
        if((0x2000 & b) != 0)
            contentvalues.put("reserved3", o());
        return contentvalues;
    }

    private int b;
    private int c;
    private int d;
    private int e;
}

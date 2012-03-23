// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.database.Cursor;
import android.widget.BaseAdapter;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

public abstract class MListAdapter extends BaseAdapter
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public MListAdapter(Context context, Object obj)
    {
        a = null;
        b = null;
        c = obj;
        d = context;
        f = -1;
    }

    public abstract Object a(Object obj, Cursor cursor);

    protected abstract void a();

    protected final void a(Cursor cursor)
    {
        a = cursor;
        f = -1;
    }

    public final void a(CallBack callback)
    {
        e = callback;
    }

    public void a_(String s)
    {
        if(e != null)
            e.b();
        n();
        b();
        if(e != null)
            e.a();
    }

    public abstract void b();

    public int getCount()
    {
        if(f < 0)
            f = k().getCount();
        return f;
    }

    public Object getItem(int i)
    {
        if(i >= 0 && k().moveToPosition(i)) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        if(b == null)
        {
            obj = a(c, k());
        } else
        {
            obj = b.get(Integer.valueOf(i));
            if(obj == null)
            {
                obj = a(null, k());
                b.put(Integer.valueOf(i), obj);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    protected final Cursor k()
    {
        if(a == null)
        {
            a();
            Assert.assertNotNull(a);
        }
        return a;
    }

    public final void l()
    {
        if(b == null)
            b = new HashMap();
    }

    public final void m()
    {
        e = null;
    }

    public final void n()
    {
        if(b != null)
            b.clear();
        if(a != null)
            a.close();
        f = -1;
    }

    private Cursor a;
    private Map b;
    protected Object c;
    protected Context d;
    protected CallBack e;
    private int f;

    private class CallBack
    {

        public abstract void a();

        public abstract void b();
    }

}

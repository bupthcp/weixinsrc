// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storagebase;

import java.util.*;

public abstract class MStorageEvent
{

    public MStorageEvent()
    {
        a = 0;
    }

    public final void a()
    {
        boolean flag;
        if(a > 0)
            flag = true;
        else
            flag = false;
        if(!flag)
        {
            for(Iterator iterator = b.iterator(); iterator.hasNext();)
            {
                Object obj = iterator.next();
                Iterator iterator1 = c.iterator();
                while(iterator1.hasNext()) 
                    a(obj, iterator1.next());
            }

            c.clear();
        }
    }

    public final void a(Object obj)
    {
        if(!b.contains(obj))
            b.add(obj);
    }

    protected abstract void a(Object obj, Object obj1);

    public final boolean b(Object obj)
    {
        return c.add(obj);
    }

    public final void c(Object obj)
    {
        b.remove(obj);
    }

    private int a;
    private final List b = new ArrayList();
    private final Set c = new HashSet();
}

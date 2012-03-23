// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.util.*;

public class LRUMap
{

    public LRUMap(int i)
    {
        a = null;
        b = i;
        c = 0;
        a = new HashMap();
    }

    public final Object a(Object obj)
    {
        TimeVal timeval = (TimeVal)a.get(obj);
        Object obj1;
        if(timeval == null)
            obj1 = null;
        else
            obj1 = timeval.a;
        return obj1;
    }

    public final void a()
    {
        a.clear();
    }

    public final void a(int i)
    {
        if(i > 0)
            b = i;
    }

    public final void a(Object obj, Object obj1)
    {
        if((TimeVal)a.get(obj) != null) goto _L2; else goto _L1
_L1:
        TimeVal timeval = new TimeVal(obj1);
        a.put(obj, timeval);
        if(a.size() <= b) goto _L4; else goto _L3
_L3:
        int j;
        int k;
        ArrayList arraylist = new ArrayList(a.entrySet());
        Collections.sort(arraylist, new _cls1());
        int i;
        Iterator iterator;
        if(c <= 0)
        {
            i = b / 10;
            if(i <= 0)
                i = 1;
        } else
        {
            i = c;
        }
        iterator = arraylist.iterator();
        j = i;
_L8:
        if(!iterator.hasNext()) goto _L4; else goto _L5
_L5:
        c(((java.util.Map.Entry)iterator.next()).getKey());
        k = j + -1;
        if(k > 0) goto _L6; else goto _L4
_L4:
        return;
_L2:
        ((TimeVal)a.get(obj)).a();
        ((TimeVal)a.get(obj)).a = obj1;
        if(true) goto _L4; else goto _L6
_L6:
        j = k;
        if(true) goto _L8; else goto _L7
_L7:
    }

    public final Object b(Object obj)
    {
        TimeVal timeval = (TimeVal)a.get(obj);
        Object obj1;
        if(timeval == null)
        {
            obj1 = null;
        } else
        {
            ((TimeVal)a.get(obj)).a();
            obj1 = timeval.a;
        }
        return obj1;
    }

    public final void c(Object obj)
    {
        a.remove(obj);
    }

    private Map a;
    private int b;
    private int c;

    private class TimeVal
    {

        public final void a()
        {
            b = Long.valueOf(System.currentTimeMillis());
        }

        public Object a;
        public Long b;
        private LRUMap c;

        public TimeVal(Object obj)
        {
            c = LRUMap.this;
            super();
            a = obj;
            a();
        }
    }


    private class _cls1
        implements Comparator
    {

        public volatile int compare(Object obj, Object obj1)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)obj;
            java.util.Map.Entry entry1 = (java.util.Map.Entry)obj1;
            return ((TimeVal)entry.getValue()).b.compareTo(((TimeVal)entry1.getValue()).b);
        }

        private LRUMap a;

        _cls1()
        {
            a = LRUMap.this;
            super();
        }
    }

}

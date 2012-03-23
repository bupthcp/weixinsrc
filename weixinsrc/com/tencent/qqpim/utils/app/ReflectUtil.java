// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;

import java.lang.reflect.*;

public class ReflectUtil
{

    public ReflectUtil()
    {
    }

    public static Object getProperty(Object obj, String s)
    {
        return obj.getClass().getField(s).get(obj);
    }

    public static Object invokeMethod(Object obj, String s, Object aobj[])
    {
        Class class1;
        Class aclass[];
        int i;
        int j;
        class1 = obj.getClass();
        aclass = new Class[aobj.length];
        i = 0;
        j = aobj.length;
_L2:
        if(i >= j)
            return class1.getMethod(s, aclass).invoke(obj, aobj);
        aclass[i] = aobj[i].getClass();
        if(aclass[i] != java/lang/Integer)
            break; /* Loop/switch isn't completed */
        aclass[i] = Integer.TYPE;
_L4:
        i++;
        if(true) goto _L2; else goto _L1
_L1:
        if(aclass[i] != java/lang/Boolean) goto _L4; else goto _L3
_L3:
        aclass[i] = Boolean.TYPE;
          goto _L4
    }

    public static Object invokeStaticMethod(String s, String s1, Object aobj[])
    {
        Class class1 = Class.forName(s);
        Class aclass[] = new Class[aobj.length];
        int i = 0;
        int j = aobj.length;
        do
        {
            if(i >= j)
                return class1.getMethod(s1, aclass).invoke(null, aobj);
            aclass[i] = aobj[i].getClass();
            if(aclass[i] == java/lang/Integer)
                aclass[i] = Integer.TYPE;
            i++;
        } while(true);
    }

    public static Object newInstance(String s, Object aobj[])
    {
        Class class1 = Class.forName(s);
        Class aclass[] = new Class[aobj.length];
        int i = 0;
        int j = aobj.length;
        do
        {
            if(i >= j)
                return class1.getConstructor(aclass).newInstance(aobj);
            aclass[i] = aobj[i].getClass();
            i++;
        } while(true);
    }
}

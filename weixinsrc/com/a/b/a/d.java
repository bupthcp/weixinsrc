// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.b.a;

import com.a.a.a.*;
import java.lang.reflect.Array;
import java.util.*;

// Referenced classes of package com.a.b.a:
//            c, a

public class d extends g
{

    public d()
    {
        a = new HashMap();
        c = new HashMap(128);
        d = new HashMap(128);
        b = "GBK";
        e = new a();
    }

    private static void a(ArrayList arraylist, Object obj)
    {
        arraylist.add("Array");
        arraylist.add("?");
_L1:
        return;
_L2:
        do
        {
            for(obj1 = obj; obj1.getClass().isArray(); obj1 = Array.get(obj1, 0))
            {
                if(!obj1.getClass().getComponentType().toString().equals("byte"))
                    throw new IllegalArgumentException("only byte[] is supported");
                if(Array.getLength(obj1) <= 0)
                    break MISSING_BLOCK_LABEL_63;
                arraylist.add("java.util.List");
            }

label0:
            {
                if(obj1 instanceof Array)
                    throw new IllegalArgumentException("can not support Array, please use List");
                if(!(obj1 instanceof List))
                    break MISSING_BLOCK_LABEL_147;
                arraylist.add("java.util.List");
                List list = (List)obj1;
                if(list.size() <= 0)
                    break label0;
                obj1 = list.get(0);
            }
        } while(true);
        arraylist.add("?");
          goto _L1
label1:
        {
            if(!(obj1 instanceof Map))
                break MISSING_BLOCK_LABEL_239;
            arraylist.add("java.util.Map");
            Map map = (Map)obj1;
            if(map.size() <= 0)
                break label1;
            Object obj2 = map.keySet().iterator().next();
            obj1 = map.get(obj2);
            arraylist.add(obj2.getClass().getName());
        }
          goto _L2
        arraylist.add("?");
        arraylist.add("?");
          goto _L1
        arraylist.add(obj1.getClass().getName());
          goto _L1
    }

    public final void a(String s)
    {
        b = s;
    }

    public void a(String s, Object obj)
    {
        if(s == null)
            throw new IllegalArgumentException("put key can not is null");
        if(obj == null)
            throw new IllegalArgumentException("put value can not is null");
        if(obj instanceof Set)
        {
            throw new IllegalArgumentException("can not support Set");
        } else
        {
            e e1 = new e();
            e1.a(b);
            e1.a(obj, 0);
            byte abyte0[] = com.a.a.a.c.a(e1.a());
            HashMap hashmap = new HashMap(1);
            ArrayList arraylist = new ArrayList(1);
            a(arraylist, obj);
            hashmap.put(com.a.b.a.c.a(arraylist), abyte0);
            d.remove(s);
            a.put(s, hashmap);
            return;
        }
    }

    public void a(byte abyte0[])
    {
        e.a(abyte0);
        e.a(b);
        HashMap hashmap = new HashMap(1);
        HashMap hashmap1 = new HashMap(1);
        hashmap1.put("", new byte[0]);
        hashmap.put("", hashmap1);
        a = e.a(hashmap, 0, false);
    }

    public byte[] a()
    {
        e e1 = new e(0);
        e1.a(b);
        e1.a(a, 0);
        return com.a.a.a.c.a(e1.a());
    }

    public final Object b(String s)
    {
        if(a.containsKey(s)) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
_L4:
        return obj1;
_L2:
        if(d.containsKey(s))
        {
            obj1 = d.get(s);
            continue; /* Loop/switch isn't completed */
        }
        HashMap hashmap = (HashMap)a.get(s);
        byte abyte0[] = new byte[0];
        Iterator iterator = hashmap.entrySet().iterator();
        String s1;
        byte abyte1[];
        Exception exception;
        Object obj;
        if(iterator.hasNext())
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s2 = (String)entry.getKey();
            byte abyte2[] = (byte[])entry.getValue();
            s1 = s2;
            abyte1 = abyte2;
        } else
        {
            s1 = null;
            abyte1 = abyte0;
        }
        if(!c.containsKey(s1))
            break; /* Loop/switch isn't completed */
        obj = c.get(s1);
_L5:
        e.a(abyte1);
        e.a(b);
        obj1 = e.a(obj, 0, true);
        d.put(s, obj1);
        if(true) goto _L4; else goto _L3
_L3:
        try
        {
            obj = com.a.b.a.c.a(s1);
            c.put(s1, obj);
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception)
        {
            throw new com.a.b.a.a(exception);
        }
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    public Object clone()
    {
        Object obj = null;
        Object obj1 = super.clone();
        obj = obj1;
_L2:
        return obj;
        CloneNotSupportedException clonenotsupportedexception;
        clonenotsupportedexception;
        if(!f)
            throw new AssertionError();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void display(StringBuilder stringbuilder, int i)
    {
        (new h(stringbuilder, i)).a(a, "_data");
    }

    public boolean equals(Object obj)
    {
        d d1 = (d)obj;
        return com.a.a.a.c.a(Integer.valueOf(1), d1.a);
    }

    public void readFrom(a a1)
    {
        a.clear();
        HashMap hashmap = new HashMap();
        byte abyte0[] = (byte[])new byte[1];
        Byte byte1 = Byte.valueOf((byte)0);
        ((byte[])abyte0)[0] = byte1.byteValue();
        hashmap.put("", abyte0);
        a.put("", hashmap);
        a = (HashMap)a1.a(a, 0, true);
    }

    public void writeTo(e e1)
    {
        e1.a(a, 0);
    }

    private static boolean f;
    protected HashMap a;
    protected String b;
    private HashMap c;
    private HashMap d;
    private a e;

    static 
    {
        boolean flag;
        if(!com/a/b/a/d.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        f = flag;
    }
}

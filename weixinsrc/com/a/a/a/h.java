// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.a.a;

import java.util.*;

// Referenced classes of package com.a.a.a:
//            g, d

public final class h
{

    public h(StringBuilder stringbuilder, int i)
    {
        b = 0;
        a = stringbuilder;
        b = i;
    }

    private h a(char c, String s)
    {
        a(s);
        a.append(c).append('\n');
        return this;
    }

    private h a(double d1, String s)
    {
        a(s);
        a.append(d1).append('\n');
        return this;
    }

    private h a(float f, String s)
    {
        a(s);
        a.append(f).append('\n');
        return this;
    }

    private h a(long l, String s)
    {
        a(s);
        a.append(l).append('\n');
        return this;
    }

    private h a(Object obj, String s)
    {
        int i = 0;
        if(obj instanceof Byte)
            a(((Byte)obj).byteValue(), s);
        else
        if(obj instanceof Boolean)
            a(((Boolean)obj).booleanValue(), s);
        else
        if(obj instanceof Short)
            a(((Short)obj).shortValue(), s);
        else
        if(obj instanceof Integer)
            a(((Integer)obj).intValue(), s);
        else
        if(obj instanceof Long)
            a(((Long)obj).longValue(), s);
        else
        if(obj instanceof Float)
            a(((Float)obj).floatValue(), s);
        else
        if(obj instanceof Double)
            a(((Double)obj).doubleValue(), s);
        else
        if(obj instanceof String)
            a((String)obj, s);
        else
        if(obj instanceof Map)
            a((Map)obj, s);
        else
        if(obj instanceof List)
            a(((Collection) ((List)obj)), s);
        else
        if(obj instanceof g)
            a((g)obj, s);
        else
        if(obj instanceof byte[])
            a((byte[])obj, s);
        else
        if(obj instanceof boolean[])
            a((boolean[])obj, s);
        else
        if(obj instanceof short[])
        {
            short aword0[] = (short[])obj;
            a(s);
            if(aword0.length == 0)
            {
                a.append(aword0.length).append(", []").append('\n');
            } else
            {
                a.append(aword0.length).append(", [").append('\n');
                h h5 = new h(a, 1 + b);
                for(int j1 = aword0.length; i < j1; i++)
                    h5.a(aword0[i], null);

                a(']', null);
            }
        } else
        if(obj instanceof int[])
        {
            int ai[] = (int[])obj;
            a(s);
            if(ai.length == 0)
            {
                a.append(ai.length).append(", []").append('\n');
            } else
            {
                a.append(ai.length).append(", [").append('\n');
                h h4 = new h(a, 1 + b);
                for(int i1 = ai.length; i < i1; i++)
                    h4.a(ai[i], null);

                a(']', null);
            }
        } else
        if(obj instanceof long[])
        {
            long al[] = (long[])obj;
            a(s);
            if(al.length == 0)
            {
                a.append(al.length).append(", []").append('\n');
            } else
            {
                a.append(al.length).append(", [").append('\n');
                h h3 = new h(a, 1 + b);
                for(int l = al.length; i < l; i++)
                    h3.a(al[i], null);

                a(']', null);
            }
        } else
        if(obj instanceof float[])
        {
            float af[] = (float[])obj;
            a(s);
            if(af.length == 0)
            {
                a.append(af.length).append(", []").append('\n');
            } else
            {
                a.append(af.length).append(", [").append('\n');
                h h2 = new h(a, 1 + b);
                for(int k = af.length; i < k; i++)
                    h2.a(af[i], null);

                a(']', null);
            }
        } else
        if(obj instanceof double[])
        {
            double ad[] = (double[])obj;
            a(s);
            if(ad.length == 0)
            {
                a.append(ad.length).append(", []").append('\n');
            } else
            {
                a.append(ad.length).append(", [").append('\n');
                h h1 = new h(a, 1 + b);
                for(int j = ad.length; i < j; i++)
                    h1.a(ad[i], null);

                a(']', null);
            }
        } else
        if(obj.getClass().isArray())
            a((Object[])obj, s);
        else
            throw new d("write object error: unsupport type.");
        return this;
    }

    private h a(Object aobj[], String s)
    {
        a(s);
        if(aobj.length == 0)
        {
            a.append(aobj.length).append(", []").append('\n');
        } else
        {
            a.append(aobj.length).append(", [").append('\n');
            h h1 = new h(a, 1 + b);
            int i = aobj.length;
            for(int j = 0; j < i; j++)
                h1.a(aobj[j], null);

            a(']', null);
        }
        return this;
    }

    private void a(String s)
    {
        for(int i = 0; i < b; i++)
            a.append('\t');

        if(s != null)
            a.append(s).append(": ");
    }

    public final h a(byte byte0, String s)
    {
        a(s);
        a.append(byte0).append('\n');
        return this;
    }

    public final h a(int i, String s)
    {
        a(s);
        a.append(i).append('\n');
        return this;
    }

    public final h a(g g1, String s)
    {
        a('{', s);
        g1.display(a, 1 + b);
        a('}', null);
        return this;
    }

    public final h a(String s, String s1)
    {
        a(s1);
        a.append(s).append('\n');
        return this;
    }

    public final h a(Collection collection, String s)
    {
        return a(collection.toArray(), s);
    }

    public final h a(Map map, String s)
    {
        a(s);
        if(map.isEmpty())
        {
            a.append(map.size()).append(", {}").append('\n');
        } else
        {
            a.append(map.size()).append(", {").append('\n');
            h h1 = new h(a, 1 + b);
            h h2 = new h(a, 2 + b);
            for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); h1.a(')', null))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                h1.a('(', null);
                h2.a(entry.getKey(), null);
                h2.a(entry.getValue(), null);
            }

            a('}', null);
        }
        return this;
    }

    public final h a(short word0, String s)
    {
        a(s);
        a.append(word0).append('\n');
        return this;
    }

    public final h a(boolean flag, String s)
    {
        a(s);
        StringBuilder stringbuilder = a;
        char c;
        if(flag)
            c = 'T';
        else
            c = 'F';
        stringbuilder.append(c).append('\n');
        return this;
    }

    public final h a(byte abyte0[], String s)
    {
        a(s);
        if(abyte0.length == 0)
        {
            a.append(abyte0.length).append(", []").append('\n');
        } else
        {
            a.append(abyte0.length).append(", [").append('\n');
            h h1 = new h(a, 1 + b);
            int i = abyte0.length;
            for(int j = 0; j < i; j++)
                h1.a(abyte0[j], null);

            a(']', null);
        }
        return this;
    }

    private StringBuilder a;
    private int b;
}

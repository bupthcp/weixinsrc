// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.a.a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.*;

// Referenced classes of package com.a.a.a:
//            d, g

public final class e
{

    public e()
    {
        this(128);
    }

    public e(int i)
    {
        b = "GBK";
        a = ByteBuffer.allocate(i);
    }

    private void a(double d1, int i)
    {
        a(10);
        b((byte)5, i);
        a.putDouble(d1);
    }

    private void a(float f, int i)
    {
        a(6);
        b((byte)4, i);
        a.putFloat(f);
    }

    private void a(int i)
    {
        if(a.remaining() < i)
        {
            ByteBuffer bytebuffer = ByteBuffer.allocate(2 * (i + a.capacity()));
            bytebuffer.put(a.array(), 0, a.position());
            a = bytebuffer;
        }
    }

    private void a(long l, int i)
    {
        a(10);
        if(l >= 0xffffffff80000000L && l <= 0x7fffffffL)
        {
            a((int)l, i);
        } else
        {
            b((byte)3, i);
            a.putLong(l);
        }
    }

    private void b(byte byte0, int i)
    {
        if(i < 15)
        {
            int k = byte0 | i << 4;
            a.put(k);
        } else
        if(i < 256)
        {
            int j = byte0 | 0xf0;
            a.put(j);
            a.put(i);
        } else
        {
            throw new d((new StringBuilder()).append("tag is too large: ").append(i).toString());
        }
    }

    public final int a(String s)
    {
        b = s;
        return 0;
    }

    public final ByteBuffer a()
    {
        return a;
    }

    public final void a(byte byte0, int i)
    {
        a(3);
        if(byte0 == 0)
        {
            b((byte)12, i);
        } else
        {
            b((byte)0, i);
            a.put(byte0);
        }
    }

    public final void a(int i, int j)
    {
        a(6);
        if(i >= -32768 && i <= 32767)
        {
            a((short)i, j);
        } else
        {
            b((byte)2, j);
            a.putInt(i);
        }
    }

    public final void a(g g1, int i)
    {
        a(2);
        b((byte)10, i);
        g1.writeTo(this);
        a(2);
        b((byte)11, 0);
    }

    public final void a(Object obj, int i)
    {
        if(obj instanceof Byte)
            a(((Byte)obj).byteValue(), i);
        else
        if(obj instanceof Boolean)
            a(((Boolean)obj).booleanValue(), i);
        else
        if(obj instanceof Short)
            a(((Short)obj).shortValue(), i);
        else
        if(obj instanceof Integer)
            a(((Integer)obj).intValue(), i);
        else
        if(obj instanceof Long)
            a(((Long)obj).longValue(), i);
        else
        if(obj instanceof Float)
            a(((Float)obj).floatValue(), i);
        else
        if(obj instanceof Double)
            a(((Double)obj).doubleValue(), i);
        else
        if(obj instanceof String)
            a((String)obj, i);
        else
        if(obj instanceof Map)
            a((Map)obj, i);
        else
        if(obj instanceof List)
            a(((Collection) ((List)obj)), i);
        else
        if(obj instanceof g)
            a((g)obj, i);
        else
        if(obj instanceof byte[])
            a((byte[])obj, i);
        else
        if(obj instanceof boolean[])
        {
            boolean aflag[] = (boolean[])obj;
            a(8);
            b((byte)9, i);
            a(aflag.length, 0);
            int j3 = aflag.length;
            int k3 = 0;
            while(k3 < j3) 
            {
                a(aflag[k3], 0);
                k3++;
            }
        } else
        if(obj instanceof short[])
        {
            short aword0[] = (short[])obj;
            a(8);
            b((byte)9, i);
            a(aword0.length, 0);
            int l2 = aword0.length;
            int i3 = 0;
            while(i3 < l2) 
            {
                a(aword0[i3], 0);
                i3++;
            }
        } else
        if(obj instanceof int[])
        {
            int ai[] = (int[])obj;
            a(8);
            b((byte)9, i);
            a(ai.length, 0);
            int j2 = ai.length;
            int k2 = 0;
            while(k2 < j2) 
            {
                a(ai[k2], 0);
                k2++;
            }
        } else
        if(obj instanceof long[])
        {
            long al[] = (long[])obj;
            a(8);
            b((byte)9, i);
            a(al.length, 0);
            int l1 = al.length;
            int i2 = 0;
            while(i2 < l1) 
            {
                a(al[i2], 0);
                i2++;
            }
        } else
        if(obj instanceof float[])
        {
            float af[] = (float[])obj;
            a(8);
            b((byte)9, i);
            a(af.length, 0);
            int j1 = af.length;
            int k1 = 0;
            while(k1 < j1) 
            {
                a(af[k1], 0);
                k1++;
            }
        } else
        if(obj instanceof double[])
        {
            double ad[] = (double[])obj;
            a(8);
            b((byte)9, i);
            a(ad.length, 0);
            int l = ad.length;
            int i1 = 0;
            while(i1 < l) 
            {
                a(ad[i1], 0);
                i1++;
            }
        } else
        if(obj.getClass().isArray())
        {
            Object aobj[] = (Object[])obj;
            a(8);
            b((byte)9, i);
            a(aobj.length, 0);
            int j = aobj.length;
            int k = 0;
            while(k < j) 
            {
                a(aobj[k], 0);
                k++;
            }
        } else
        if(obj instanceof Collection)
            a((Collection)obj, i);
        else
            throw new d((new StringBuilder()).append("write object error: unsupport type. ").append(obj.getClass()).toString());
    }

    public final void a(String s, int i)
    {
        byte abyte1[] = s.getBytes(b);
        byte abyte0[] = abyte1;
_L1:
        a(10 + abyte0.length);
        UnsupportedEncodingException unsupportedencodingexception;
        if(abyte0.length > 255)
        {
            b((byte)7, i);
            a.putInt(abyte0.length);
            a.put(abyte0);
        } else
        {
            b((byte)6, i);
            a.put((byte)abyte0.length);
            a.put(abyte0);
        }
        return;
        unsupportedencodingexception;
        abyte0 = s.getBytes();
          goto _L1
    }

    public final void a(Collection collection, int i)
    {
        a(8);
        b((byte)9, i);
        int j;
        if(collection == null)
            j = 0;
        else
            j = collection.size();
        a(j, 0);
        if(collection != null)
        {
            for(Iterator iterator = collection.iterator(); iterator.hasNext(); a(iterator.next(), 0));
        }
    }

    public final void a(Map map, int i)
    {
        a(8);
        b((byte)8, i);
        int j;
        if(map == null)
            j = 0;
        else
            j = map.size();
        a(j, 0);
        if(map != null)
        {
            java.util.Map.Entry entry;
            for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); a(entry.getValue(), 1))
            {
                entry = (java.util.Map.Entry)iterator.next();
                a(entry.getKey(), 0);
            }

        }
    }

    public final void a(short word0, int i)
    {
        a(4);
        if(word0 >= -128 && word0 <= 127)
        {
            a((byte)word0, i);
        } else
        {
            b((byte)1, i);
            a.putShort(word0);
        }
    }

    public final void a(boolean flag, int i)
    {
        int j;
        if(flag)
            j = 1;
        else
            j = 0;
        a((byte)j, i);
    }

    public final void a(byte abyte0[], int i)
    {
        a(8 + abyte0.length);
        b((byte)13, i);
        b((byte)0, 0);
        a(abyte0.length, 0);
        a.put(abyte0);
    }

    public final byte[] b()
    {
        byte abyte0[] = new byte[a.position()];
        System.arraycopy(a.array(), 0, abyte0, 0, a.position());
        return abyte0;
    }

    private ByteBuffer a;
    private String b;
}

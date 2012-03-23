// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.a.a;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.*;

// Referenced classes of package com.a.a.a:
//            f, b, g

public final class a
{

    public a()
    {
        b = "GBK";
    }

    public a(byte abyte0[])
    {
        b = "GBK";
        a = ByteBuffer.wrap(abyte0);
    }

    private double a(double d1, int j, boolean flag)
    {
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR lookupswitch 3: default 64
    //                   4: 80
    //                   5: 92
    //                   12: 74;
           goto _L3 _L4 _L5 _L6
_L3:
        throw new b("type mismatch.");
_L6:
        d1 = 0D;
_L7:
        return d1;
_L4:
        d1 = a.getFloat();
        continue; /* Loop/switch isn't completed */
_L5:
        d1 = a.getDouble();
        if(true) goto _L7; else goto _L2
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L7; else goto _L8
_L8:
    }

    private float a(float f1, int j, boolean flag)
    {
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f2;
        f2 = new f();
        a(f2);
        f2.a;
        JVM INSTR lookupswitch 2: default 56
    //                   4: 71
    //                   12: 66;
           goto _L3 _L4 _L5
_L3:
        throw new b("type mismatch.");
_L5:
        f1 = 0F;
_L7:
        return f1;
_L4:
        f1 = a.getFloat();
        if(true)
            continue; /* Loop/switch isn't completed */
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L7; else goto _L6
_L6:
    }

    private static int a(f f1, ByteBuffer bytebuffer)
    {
        byte byte0 = bytebuffer.get();
        f1.a = (byte)(byte0 & 0xf);
        f1.b = (byte0 & 0xf0) >> 4;
        byte byte1;
        if(f1.b == 15)
        {
            f1.b = bytebuffer.get();
            byte1 = 2;
        } else
        {
            byte1 = 1;
        }
        return byte1;
    }

    private long a(long l, int j, boolean flag)
    {
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR lookupswitch 5: default 80
    //                   0: 96
    //                   1: 108
    //                   2: 120
    //                   3: 132
    //                   12: 90;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        throw new b("type mismatch.");
_L8:
        l = 0L;
_L9:
        return l;
_L4:
        l = a.get();
        continue; /* Loop/switch isn't completed */
_L5:
        l = a.getShort();
        continue; /* Loop/switch isn't completed */
_L6:
        l = a.getInt();
        continue; /* Loop/switch isn't completed */
_L7:
        l = a.getLong();
        if(true) goto _L9; else goto _L2
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L9; else goto _L10
_L10:
    }

    private Map a(Map map, Map map1, int j, boolean flag)
    {
        if(map1 != null && !map1.isEmpty()) goto _L2; else goto _L1
_L1:
        map = new HashMap();
_L4:
        return map;
_L2:
        java.util.Map.Entry entry = (java.util.Map.Entry)map1.entrySet().iterator().next();
        Object obj = entry.getKey();
        Object obj1 = entry.getValue();
        if(!b(j))
            break; /* Loop/switch isn't completed */
        f f1 = new f();
        a(f1);
        int k;
        switch(f1.a)
        {
        default:
            throw new b("type mismatch.");

        case 8: // '\b'
            k = a(0, 0, true);
            break;
        }
        if(k < 0)
            throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
        int l = 0;
        while(l < k) 
        {
            map.put(a(obj, 0, true), a(obj1, 1, true));
            l++;
        }
        if(true) goto _L4; else goto _L3
_L3:
        if(!flag) goto _L4; else goto _L5
_L5:
        throw new b("require field not exist.");
    }

    private void a()
    {
        f f1 = new f();
        do
        {
            a(f1);
            a(f1.a);
        } while(f1.a != 11);
    }

    private void a(byte byte0)
    {
        int j = 0;
        byte0;
        JVM INSTR tableswitch 0 13: default 72
    //                   0 82
    //                   1 88
    //                   2 96
    //                   3 104
    //                   4 113
    //                   5 121
    //                   6 130
    //                   7 161
    //                   8 175
    //                   9 202
    //                   10 300
    //                   11 87
    //                   12 87
    //                   13 227;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L13 _L14
_L13:
        break; /* Loop/switch isn't completed */
_L1:
        throw new b("invalid type.");
_L2:
        a(1);
_L16:
        return;
_L3:
        a(2);
        continue; /* Loop/switch isn't completed */
_L4:
        a(4);
        continue; /* Loop/switch isn't completed */
_L5:
        a(8);
        continue; /* Loop/switch isn't completed */
_L6:
        a(4);
        continue; /* Loop/switch isn't completed */
_L7:
        a(8);
        continue; /* Loop/switch isn't completed */
_L8:
        int i1 = a.get();
        if(i1 < 0)
            i1 += 256;
        a(i1);
        continue; /* Loop/switch isn't completed */
_L9:
        a(a.getInt());
        continue; /* Loop/switch isn't completed */
_L10:
        int l = a(j, j, true);
        while(j < l * 2) 
        {
            b();
            j++;
        }
        continue; /* Loop/switch isn't completed */
_L11:
        int k = a(j, j, true);
        while(j < k) 
        {
            b();
            j++;
        }
        continue; /* Loop/switch isn't completed */
_L14:
        f f1 = new f();
        a(f1);
        if(f1.a != 0)
            throw new b((new StringBuilder()).append("skipField with invalid type, type value: ").append(byte0).append(", ").append(f1.a).toString());
        a(a(j, j, true));
        continue; /* Loop/switch isn't completed */
_L12:
        a();
        if(true) goto _L16; else goto _L15
_L15:
    }

    private void a(int j)
    {
        a.position(j + a.position());
    }

    private void a(f f1)
    {
        a(f1, a);
    }

    private Object[] a(Object aobj[], int j, boolean flag)
    {
        if(aobj == null || aobj.length == 0)
            throw new b("unable to get type of key and value.");
        else
            return b(aobj[0], j, flag);
    }

    private void b()
    {
        f f1 = new f();
        a(f1);
        a(f1.a);
    }

    private boolean b(int j)
    {
        boolean flag = false;
        try
        {
            f f1 = new f();
            do
            {
                int k = a(f1, a.duplicate());
                if(j <= f1.b || f1.a == 11)
                {
                    if(j == f1.b)
                        flag = true;
                    break;
                }
                a(k);
                a(f1.a);
            } while(true);
        }
        catch(b b1) { }
        catch(BufferUnderflowException bufferunderflowexception) { }
        return flag;
    }

    private Object[] b(Object obj, int j, boolean flag)
    {
        Object aobj[];
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            aobj = (Object[])Array.newInstance(obj.getClass(), k);
            for(int l = 0; l < k; l++)
                aobj[l] = a(obj, 0, true);

        } else
        {
            if(flag)
                throw new b("require field not exist.");
            aobj = null;
        }
        return aobj;
    }

    private boolean[] d(int j, boolean flag)
    {
        boolean aflag[] = null;
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            aflag = new boolean[k];
            for(int l = 0; l < k; l++)
                aflag[l] = a(0, true);

        } else
        if(flag)
            throw new b("require field not exist.");
        return aflag;
    }

    private short[] e(int j, boolean flag)
    {
        short aword0[] = null;
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            aword0 = new short[k];
            for(int l = 0; l < k; l++)
                aword0[l] = a(aword0[0], 0, true);

        } else
        if(flag)
            throw new b("require field not exist.");
        return aword0;
    }

    private int[] f(int j, boolean flag)
    {
        int ai[] = null;
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            ai = new int[k];
            for(int l = 0; l < k; l++)
                ai[l] = a(ai[0], 0, true);

        } else
        if(flag)
            throw new b("require field not exist.");
        return ai;
    }

    private long[] g(int j, boolean flag)
    {
        long al[] = null;
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            al = new long[k];
            for(int l = 0; l < k; l++)
                al[l] = a(al[0], 0, true);

        } else
        if(flag)
            throw new b("require field not exist.");
        return al;
    }

    private float[] h(int j, boolean flag)
    {
        float af[] = null;
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            af = new float[k];
            for(int l = 0; l < k; l++)
                af[l] = a(af[0], 0, true);

        } else
        if(flag)
            throw new b("require field not exist.");
        return af;
    }

    private double[] i(int j, boolean flag)
    {
        double ad[] = null;
        if(b(j))
        {
            f f1 = new f();
            a(f1);
            int k;
            switch(f1.a)
            {
            default:
                throw new b("type mismatch.");

            case 9: // '\t'
                k = a(0, 0, true);
                break;
            }
            if(k < 0)
                throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
            ad = new double[k];
            for(int l = 0; l < k; l++)
                ad[l] = a(ad[0], 0, true);

        } else
        if(flag)
            throw new b("require field not exist.");
        return ad;
    }

    public final byte a(byte byte0, int j, boolean flag)
    {
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR lookupswitch 2: default 56
    //                   0: 70
    //                   12: 66;
           goto _L3 _L4 _L5
_L3:
        throw new b("type mismatch.");
_L5:
        byte0 = 0;
_L7:
        return byte0;
_L4:
        byte0 = a.get();
        if(true)
            continue; /* Loop/switch isn't completed */
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final int a(int j, int k, boolean flag)
    {
        if(!b(k)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR lookupswitch 4: default 72
    //                   0: 86
    //                   1: 97
    //                   2: 108
    //                   12: 82;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        throw new b("type mismatch.");
_L7:
        j = 0;
_L8:
        return j;
_L4:
        j = a.get();
        continue; /* Loop/switch isn't completed */
_L5:
        j = a.getShort();
        continue; /* Loop/switch isn't completed */
_L6:
        j = a.getInt();
        if(true) goto _L8; else goto _L2
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L8; else goto _L9
_L9:
    }

    public final int a(String s)
    {
        b = s;
        return 0;
    }

    public final g a(g g1, int j, boolean flag)
    {
        g g2 = null;
        if(b(j))
        {
            f f1;
            try
            {
                g2 = (g)g1.getClass().newInstance();
            }
            catch(Exception exception)
            {
                throw new b(exception.getMessage());
            }
            f1 = new f();
            a(f1);
            if(f1.a != 10)
                throw new b("type mismatch.");
            g2.readFrom(this);
            a();
        } else
        if(flag)
            throw new b("require field not exist.");
        return g2;
    }

    public final Object a(Object obj, int j, boolean flag)
    {
        int k = 0;
        Object obj1;
        if(obj instanceof Byte)
            obj1 = Byte.valueOf(a(k, j, flag));
        else
        if(obj instanceof Boolean)
            obj1 = Boolean.valueOf(a(j, flag));
        else
        if(obj instanceof Short)
            obj1 = Short.valueOf(a(k, j, flag));
        else
        if(obj instanceof Integer)
            obj1 = Integer.valueOf(a(k, j, flag));
        else
        if(obj instanceof Long)
            obj1 = Long.valueOf(a(0L, j, flag));
        else
        if(obj instanceof Float)
            obj1 = Float.valueOf(a(0F, j, flag));
        else
        if(obj instanceof Double)
            obj1 = Double.valueOf(a(0D, j, flag));
        else
        if(obj instanceof String)
            obj1 = String.valueOf(b(j, flag));
        else
        if(obj instanceof Map)
            obj1 = a((Map)obj, j, flag);
        else
        if(obj instanceof List)
        {
            List list = (List)obj;
            if(list == null || list.isEmpty())
            {
                obj1 = new ArrayList();
            } else
            {
                Object aobj[] = b(list.get(k), j, flag);
                if(aobj == null)
                {
                    obj1 = null;
                } else
                {
                    ArrayList arraylist = new ArrayList();
                    for(; k < aobj.length; k++)
                        arraylist.add(aobj[k]);

                    obj1 = arraylist;
                }
            }
        } else
        if(obj instanceof g)
            obj1 = a((g)obj, j, flag);
        else
        if(obj.getClass().isArray())
        {
            if((obj instanceof byte[]) || (obj instanceof Byte[]))
                obj1 = c(j, flag);
            else
            if(obj instanceof boolean[])
                obj1 = d(j, flag);
            else
            if(obj instanceof short[])
                obj1 = e(j, flag);
            else
            if(obj instanceof int[])
                obj1 = f(j, flag);
            else
            if(obj instanceof long[])
                obj1 = g(j, flag);
            else
            if(obj instanceof float[])
                obj1 = h(j, flag);
            else
            if(obj instanceof double[])
                obj1 = i(j, flag);
            else
                obj1 = ((Object) (a((Object[])obj, j, flag)));
        } else
        {
            throw new b("read object error: unsupport type.");
        }
        return obj1;
    }

    public final HashMap a(Map map, int j, boolean flag)
    {
        return (HashMap)a(((Map) (new HashMap())), map, j, flag);
    }

    public final short a(short word0, int j, boolean flag)
    {
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR lookupswitch 3: default 64
    //                   0: 78
    //                   1: 90
    //                   12: 74;
           goto _L3 _L4 _L5 _L6
_L3:
        throw new b("type mismatch.");
_L6:
        word0 = 0;
_L7:
        return word0;
_L4:
        word0 = a.get();
        continue; /* Loop/switch isn't completed */
_L5:
        word0 = a.getShort();
        if(true) goto _L7; else goto _L2
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L7; else goto _L8
_L8:
    }

    public final void a(byte abyte0[])
    {
        if(a != null)
            a.clear();
        a = ByteBuffer.wrap(abyte0);
    }

    public final boolean a(int j, boolean flag)
    {
        boolean flag1 = false;
        if(a(flag1, j, flag) != 0)
            flag1 = true;
        return flag1;
    }

    public final String b(int j, boolean flag)
    {
        String s = null;
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR tableswitch 6 7: default 52
    //                   6 62
    //                   7 131;
           goto _L3 _L4 _L5
_L3:
        throw new b("type mismatch.");
_L4:
        int l = a.get();
        if(l < 0)
            l += 256;
        byte abyte1[] = new byte[l];
        a.get(abyte1);
        try
        {
            s = new String(abyte1, b);
        }
        catch(UnsupportedEncodingException unsupportedencodingexception1)
        {
            s = new String(abyte1);
        }
_L7:
        return s;
_L5:
        int k = a.getInt();
        if(k > 0x6400000 || k < 0)
            throw new b((new StringBuilder()).append("String too long: ").append(k).toString());
        byte abyte0[] = new byte[k];
        a.get(abyte0);
        try
        {
            s = new String(abyte0, b);
        }
        catch(UnsupportedEncodingException unsupportedencodingexception)
        {
            s = new String(abyte0);
        }
        if(true)
            continue; /* Loop/switch isn't completed */
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final byte[] c(int j, boolean flag)
    {
        byte abyte0[] = null;
        if(!b(j)) goto _L2; else goto _L1
_L1:
        f f1;
        f1 = new f();
        a(f1);
        f1.a;
        JVM INSTR lookupswitch 2: default 56
    //                   9: 240
    //                   13: 66;
           goto _L3 _L4 _L5
_L3:
        throw new b("type mismatch.");
_L5:
        f f2 = new f();
        a(f2);
        if(f2.a != 0)
            throw new b((new StringBuilder()).append("type mismatch, tag: ").append(j).append(", type: ").append(f1.a).append(", ").append(f2.a).toString());
        int i1 = a(0, 0, true);
        if(i1 < 0)
            throw new b((new StringBuilder()).append("invalid size, tag: ").append(j).append(", type: ").append(f1.a).append(", ").append(f2.a).append(", size: ").append(i1).toString());
        abyte0 = new byte[i1];
        a.get(abyte0);
_L7:
        return abyte0;
_L4:
        int k = a(0, 0, true);
        if(k < 0)
            throw new b((new StringBuilder()).append("size invalid: ").append(k).toString());
        abyte0 = new byte[k];
        int l = 0;
        while(l < k) 
        {
            abyte0[l] = a(abyte0[0], 0, true);
            l++;
        }
        if(true)
            continue; /* Loop/switch isn't completed */
_L2:
        if(flag)
            throw new b("require field not exist.");
        if(true) goto _L7; else goto _L6
_L6:
    }

    private ByteBuffer a;
    private String b;
}

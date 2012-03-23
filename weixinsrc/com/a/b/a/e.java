// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.b.a;

import com.a.a.a;
import com.a.a.a.c;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.util.HashMap;

// Referenced classes of package com.a.b.a:
//            d, b

public final class e extends d
{

    public e()
    {
        c = new a();
        c.a = 2;
    }

    public final void a(String s, Object obj)
    {
        if(s.startsWith("."))
        {
            throw new IllegalArgumentException("put name can not startwith . ");
        } else
        {
            super.a(s, obj);
            return;
        }
    }

    public final void a(byte abyte0[])
    {
        if(abyte0.length < 4)
            throw new IllegalArgumentException("decode package must include size head");
        ByteBuffer bytebuffer = ByteBuffer.allocate(4);
        byte abyte1[] = new byte[4];
        System.arraycopy(abyte0, 0, abyte1, 0, abyte1.length);
        bytebuffer.put(abyte1).flip();
        byte abyte2[] = new byte[-4 + bytebuffer.getInt()];
        System.arraycopy(abyte0, 4, abyte2, 0, abyte2.length);
        try
        {
            com.a.a.a.a a1 = new com.a.a.a.a(abyte2);
            a1.a(b);
            readFrom(a1);
            com.a.a.a.a a2 = new com.a.a.a.a(c.e);
            a2.a(b);
            if(d == null)
            {
                d = new HashMap();
                HashMap hashmap = new HashMap();
                hashmap.put("", new byte[0]);
                d.put("", hashmap);
            }
            a = a2.a(d, 0, false);
            return;
        }
        catch(Exception exception)
        {
            System.out.println((new StringBuilder()).append("decode error ").append(com.a.b.a.b.a(abyte0)).toString());
            throw new RuntimeException(exception);
        }
    }

    public final byte[] a()
    {
        if(c.c.equals(""))
            throw new IllegalArgumentException("servantName can not is null");
        if(c.d.equals(""))
        {
            throw new IllegalArgumentException("funcName can not is null");
        } else
        {
            com.a.a.a.e e1 = new com.a.a.a.e(0);
            e1.a(b);
            e1.a(a, 0);
            c.e = com.a.a.a.c.a(e1.a());
            com.a.a.a.e e2 = new com.a.a.a.e(0);
            e2.a(b);
            writeTo(e2);
            byte abyte0[] = com.a.a.a.c.a(e2.a());
            int i = abyte0.length;
            ByteBuffer bytebuffer = ByteBuffer.allocate(i + 4);
            bytebuffer.putInt(i + 4).put(abyte0).flip();
            return bytebuffer.array();
        }
    }

    public final void b()
    {
        c.b = 1;
    }

    public final void c(String s)
    {
        c.c = s;
    }

    public final void d(String s)
    {
        c.d = s;
    }

    public final void display(StringBuilder stringbuilder, int i)
    {
        c.display(stringbuilder, i);
    }

    public final void readFrom(com.a.a.a.a a1)
    {
        c.readFrom(a1);
    }

    public final void writeTo(com.a.a.a.e e1)
    {
        c.writeTo(e1);
    }

    private static HashMap d = null;
    private a c;

}

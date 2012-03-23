// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a.a.b;

import com.tencent.mm.protobuf.ByteString;
import java.io.UnsupportedEncodingException;

public final class a
{

    private a(byte abyte0[], int i)
    {
        a = abyte0;
        c = 0;
        b = i + 0;
    }

    public static int a(int i)
    {
        return b(c.a.a.a.a.a(i, 0));
    }

    public static a a(byte abyte0[])
    {
        return new a(abyte0, abyte0.length);
    }

    private void a(long l)
    {
        do
        {
            if((-128L & l) == 0L)
            {
                c((int)l);
                return;
            }
            c(0x80 | 0x7f & (int)l);
            l >>>= 7;
        } while(true);
    }

    public static int b(int i)
    {
        int j;
        if((i & 0xffffff80) == 0)
            j = 1;
        else
        if((i & 0xffffc000) == 0)
            j = 2;
        else
        if((0xffe00000 & i) == 0)
            j = 3;
        else
        if((0xf0000000 & i) == 0)
            j = 4;
        else
            j = 5;
        return j;
    }

    public static int b(int i, long l)
    {
        int j = a(i);
        int k;
        if((-128L & l) == 0L)
            k = 1;
        else
        if((-16384L & l) == 0L)
            k = 2;
        else
        if((0xffffffffffe00000L & l) == 0L)
            k = 3;
        else
        if((0xfffffffff0000000L & l) == 0L)
            k = 4;
        else
        if((0xfffffff800000000L & l) == 0L)
            k = 5;
        else
        if((0xfffffc0000000000L & l) == 0L)
            k = 6;
        else
        if((0xfffe000000000000L & l) == 0L)
            k = 7;
        else
        if((0xff00000000000000L & l) == 0L)
            k = 8;
        else
        if((0x8000000000000000L & l) == 0L)
            k = 9;
        else
            k = 10;
        return k + j;
    }

    public static int b(int i, String s)
    {
        int l;
        if(s == null)
        {
            l = 0;
        } else
        {
            int j;
            int k;
            try
            {
                byte abyte0[] = s.getBytes("UTF-8");
                j = a(i) + b(abyte0.length);
                k = abyte0.length;
            }
            catch(UnsupportedEncodingException unsupportedencodingexception)
            {
                throw new IllegalStateException("UTF-8 not supported.");
            }
            l = k + j;
        }
        return l;
    }

    private void b(byte abyte0[])
    {
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = abyte0.length;
        if(abyte0 != null)
            if(b - c >= i)
            {
                System.arraycopy(abyte0, 0, a, c, i);
                c = i + c;
            } else
            {
                int j = b - c;
                System.arraycopy(abyte0, 0, a, c, j);
                int k = j + 0;
                int l = i - j;
                c = b;
                if(l <= b)
                {
                    System.arraycopy(abyte0, k, a, 0, l);
                    c = l;
                }
            }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void c(int i)
    {
        byte byte0 = (byte)i;
        byte abyte0[] = a;
        int j = c;
        c = j + 1;
        abyte0[j] = byte0;
    }

    private void c(int i, int j)
    {
        d(c.a.a.a.a.a(i, j));
    }

    private void d(int i)
    {
        do
        {
            if((i & 0xffffff80) == 0)
            {
                c(i);
                return;
            }
            c(0x80 | i & 0x7f);
            i >>>= 7;
        } while(true);
    }

    public final void a(int i, double d1)
    {
        c(i, 1);
        long l = Double.doubleToLongBits(d1);
        c(0xff & (int)l);
        c(0xff & (int)(l >> 8));
        c(0xff & (int)(l >> 16));
        c(0xff & (int)(l >> 24));
        c(0xff & (int)(l >> 32));
        c(0xff & (int)(l >> 40));
        c(0xff & (int)(l >> 48));
        c(0xff & (int)(l >> 56));
    }

    public final void a(int i, float f)
    {
        c(i, 5);
        int j = Float.floatToIntBits(f);
        c(j & 0xff);
        c(0xff & j >> 8);
        c(0xff & j >> 16);
        c(0xff & j >> 24);
    }

    public final void a(int i, int j)
    {
        c(i, 0);
        if(j >= 0)
            d(j);
        else
            a(j);
    }

    public final void a(int i, long l)
    {
        c(i, 0);
        a(l);
    }

    public final void a(int i, ByteString bytestring)
    {
        if(bytestring != null)
        {
            c(i, 2);
            byte abyte0[] = bytestring.b();
            d(abyte0.length);
            b(abyte0);
        }
    }

    public final void a(int i, String s)
    {
        if(s != null)
        {
            c(i, 2);
            byte abyte0[] = s.getBytes("UTF-8");
            d(abyte0.length);
            b(abyte0);
        }
    }

    public final void a(int i, boolean flag)
    {
        int j = 0;
        c(i, j);
        if(flag)
            j = 1;
        c(j);
    }

    public final void b(int i, int j)
    {
        c(i, 2);
        d(j);
    }

    private final byte a[];
    private final int b;
    private int c;
}

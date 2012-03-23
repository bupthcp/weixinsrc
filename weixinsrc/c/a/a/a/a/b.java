// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a.a.a;

import c.a.a.a.a;
import com.tencent.mm.protobuf.ByteString;
import java.io.InputStream;
import java.util.LinkedList;

// Referenced classes of package c.a.a.a.a:
//            a

public final class b
{

    private b(byte abyte0[], int k)
    {
        c = 0;
        f = 0;
        g = 0;
        h = 0x7fffffff;
        i = 0x4000000;
        a = abyte0;
        b = k + 0;
        d = 0;
        e = null;
    }

    public static b a(byte abyte0[])
    {
        return new b(abyte0, abyte0.length);
    }

    private boolean a(boolean flag)
    {
        if(d < b)
            throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
        boolean flag1;
        if(g + b == h)
        {
            if(flag)
                throw c.a.a.a.a.a.a();
            flag1 = false;
        } else
        {
            g = g + b;
            d = 0;
            int k;
            if(e == null)
                k = -1;
            else
                k = e.read(a);
            b = k;
            if(b == -1)
            {
                b = 0;
                if(flag)
                    throw c.a.a.a.a.a.a();
                flag1 = false;
            } else
            {
                b = b + c;
                int l = g + b;
                int i1;
                if(l > h)
                {
                    c = l - h;
                    b = b - c;
                } else
                {
                    c = 0;
                }
                i1 = g + b + c;
                if(i1 > i || i1 < 0)
                    throw new c.a.a.a.a.a("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                flag1 = true;
            }
        }
        return flag1;
    }

    private int[] b(int k)
    {
        byte byte0;
        int l;
        byte0 = a[k];
        l = k + 1;
        if(byte0 < 0) goto _L2; else goto _L1
_L1:
        int ai[];
        ai = new int[2];
        ai[0] = byte0;
        ai[1] = l;
_L9:
        return ai;
_L2:
        int i1;
        byte byte1;
        i1 = byte0 & 0x7f;
        byte1 = a[l];
        if(byte1 < 0) goto _L4; else goto _L3
_L3:
        int i2;
        int j2;
        j2 = l + 1;
        i2 = i1 | byte1 << 7;
_L6:
        int ai1[] = new int[2];
        ai1[0] = i2;
        ai1[1] = j2;
        ai = ai1;
        continue; /* Loop/switch isn't completed */
_L4:
        int k1;
        byte byte3;
        int j1 = i1 | (byte1 & 0x7f) << 7;
        byte byte2 = a[l];
        if(byte2 >= 0)
        {
            j2 = l + 1;
            i2 = j1 | byte2 << 14;
            continue; /* Loop/switch isn't completed */
        }
        k1 = j1 | (byte2 & 0x7f) << 14;
        byte3 = a[l];
        if(byte3 < 0)
            break; /* Loop/switch isn't completed */
        j2 = l + 1;
        i2 = k1 | byte3 << 21;
        if(true) goto _L6; else goto _L5
_L5:
        byte byte4;
        int l1 = k1 | (byte3 & 0x7f) << 21;
        byte4 = a[l];
        i2 = l1 | byte4 << 28;
        j2 = l + 1;
        if(byte4 >= 0) goto _L6; else goto _L7
_L7:
        int k2 = 0;
_L10:
label0:
        {
            if(k2 >= 5)
                throw c.a.a.a.a.a.c();
            if(a[j2] < 0)
                break label0;
            int l2 = j2 + 1;
            ai = new int[2];
            ai[0] = byte4;
            ai[1] = l2;
        }
        if(true) goto _L9; else goto _L8
_L8:
        k2++;
          goto _L10
        if(true) goto _L9; else goto _L11
_L11:
    }

    private byte[] c(int k)
    {
        if(k < 0)
            throw c.a.a.a.a.a.b();
        if(k + (g + d) > h)
        {
            d(h - g - d);
            throw c.a.a.a.a.a.a();
        }
        if(k > b - d) goto _L2; else goto _L1
_L1:
        byte abyte3[];
        abyte3 = new byte[k];
        System.arraycopy(a, d, abyte3, 0, k);
        d = k + d;
_L3:
        return abyte3;
_L2:
        byte abyte4[];
        int j3;
        if(k >= 2048)
            break MISSING_BLOCK_LABEL_231;
        abyte4 = new byte[k];
        j3 = b - d;
        System.arraycopy(a, d, abyte4, 0, j3);
        d = b;
        a(true);
_L4:
label0:
        {
            if(k - j3 > b)
                break label0;
            System.arraycopy(a, 0, abyte4, j3, k - j3);
            d = k - j3;
            abyte3 = abyte4;
        }
          goto _L3
        System.arraycopy(a, 0, abyte4, j3, b);
        j3 += b;
        d = b;
        a(true);
          goto _L4
        int l;
        int i1;
        LinkedList linkedlist;
        int k1;
        l = d;
        i1 = b;
        g = g + b;
        d = 0;
        b = 0;
        int j1 = k - (i1 - l);
        linkedlist = new LinkedList();
        k1 = j1;
_L7:
        if(k1 > 0) goto _L6; else goto _L5
_L5:
        byte abyte1[];
        int l2;
        int i3;
        abyte1 = new byte[k];
        int k2 = i1 - l;
        System.arraycopy(a, l, abyte1, 0, k2);
        l2 = 0;
        i3 = k2;
_L9:
        if(l2 < linkedlist.size())
            break MISSING_BLOCK_LABEL_447;
        abyte3 = abyte1;
          goto _L3
_L6:
        byte abyte0[];
        int l1;
        abyte0 = new byte[Math.min(k1, 2048)];
        l1 = 0;
_L8:
label1:
        {
            if(l1 < abyte0.length)
                break label1;
            int j2 = k1 - abyte0.length;
            linkedlist.add(abyte0);
            k1 = j2;
        }
          goto _L7
        int i2;
        if(e == null)
            i2 = -1;
        else
            i2 = e.read(abyte0, l1, abyte0.length - l1);
        if(i2 == -1)
            throw c.a.a.a.a.a.a();
        g = i2 + g;
        l1 += i2;
          goto _L8
        byte abyte2[] = (byte[])linkedlist.get(l2);
        System.arraycopy(abyte2, 0, abyte1, i3, abyte2.length);
        i3 += abyte2.length;
        l2++;
          goto _L9
    }

    private void d(int k)
    {
        if(k < 0)
            throw c.a.a.a.a.a.b();
        if(k + (g + d) > h)
        {
            d(h - g - d);
            throw c.a.a.a.a.a.a();
        }
        if(k < b - d)
        {
            d = k + d;
        } else
        {
            int l = b - d;
            g = l + g;
            d = 0;
            b = 0;
            int i1 = l;
            while(i1 < k) 
            {
                int j1;
                if(e == null)
                    j1 = -1;
                else
                    j1 = (int)e.skip(k - i1);
                if(j1 <= 0)
                    throw c.a.a.a.a.a.a();
                i1 += j1;
                g = j1 + g;
            }
        }
    }

    private int i()
    {
        int k = j();
        if(k < 0) goto _L2; else goto _L1
_L1:
        return k;
_L2:
        int j1;
        byte byte2;
        int l = k & 0x7f;
        byte byte0 = j();
        if(byte0 >= 0)
        {
            k = l | byte0 << 7;
            continue; /* Loop/switch isn't completed */
        }
        int i1 = l | (byte0 & 0x7f) << 7;
        byte byte1 = j();
        if(byte1 >= 0)
        {
            k = i1 | byte1 << 14;
            continue; /* Loop/switch isn't completed */
        }
        j1 = i1 | (byte1 & 0x7f) << 14;
        byte2 = j();
        if(byte2 < 0)
            break; /* Loop/switch isn't completed */
        k = j1 | byte2 << 21;
        if(true) goto _L1; else goto _L3
_L3:
        int k1 = j1 | (byte2 & 0x7f) << 21;
        byte byte3 = j();
        k = k1 | byte3 << 28;
        if(byte3 >= 0)
            continue;
        int l1 = 0;
        do
        {
            if(l1 >= 5)
                throw c.a.a.a.a.a.c();
            if(j() >= 0)
                continue;
            l1++;
        } while(true);
        if(true) goto _L1; else goto _L4
_L4:
    }

    private byte j()
    {
        if(d == b)
            a(true);
        byte abyte0[] = a;
        int k = d;
        d = k + 1;
        return abyte0[k];
    }

    public final int a()
    {
        boolean flag = false;
        if(d == b && !a(flag))
        {
            f = ((flag) ? 1 : 0);
        } else
        {
            f = i();
            if(f == 0)
                throw new c.a.a.a.a.a("Protocol message contained an invalid tag (zero).");
            flag = f;
        }
        return ((flag) ? 1 : 0);
    }

    public final LinkedList a(int k)
    {
        LinkedList linkedlist;
        int i1;
        linkedlist = new LinkedList();
        int l = i();
        byte abyte0[] = new byte[l];
        System.arraycopy(a, d, abyte0, 0, l);
        linkedlist.add(abyte0);
        d = l + d;
        i1 = d;
        if(d != b) goto _L2; else goto _L1
_L1:
        LinkedList linkedlist1 = linkedlist;
_L5:
        return linkedlist1;
_L2:
        int ai[];
        int j1;
        ai = b(i1);
        j1 = ai[0];
_L7:
        if(c.a.a.a.a.b(j1) == k) goto _L4; else goto _L3
_L3:
        linkedlist1 = linkedlist;
          goto _L5
_L4:
        d = ai[1];
        int k1 = i();
        byte abyte1[] = new byte[k1];
        System.arraycopy(a, d, abyte1, 0, k1);
        linkedlist.add(abyte1);
        d = k1 + d;
        if(d == b) goto _L3; else goto _L6
_L6:
        ai = b(d);
        j1 = ai[0];
          goto _L7
    }

    public final double b()
    {
        int k = j();
        int l = j();
        int i1 = j();
        int j1 = j();
        int k1 = j();
        int l1 = j();
        int i2 = j();
        int j2 = j();
        return Double.longBitsToDouble(255L & (long)k | (255L & (long)l) << 8 | (255L & (long)i1) << 16 | (255L & (long)j1) << 24 | (255L & (long)k1) << 32 | (255L & (long)l1) << 40 | (255L & (long)i2) << 48 | (255L & (long)j2) << 56);
    }

    public final float c()
    {
        byte byte0 = j();
        byte byte1 = j();
        byte byte2 = j();
        byte byte3 = j();
        return Float.intBitsToFloat(byte0 & 0xff | (byte1 & 0xff) << 8 | (byte2 & 0xff) << 16 | (byte3 & 0xff) << 24);
    }

    public final long d()
    {
        return h();
    }

    public final int e()
    {
        return i();
    }

    public final String f()
    {
        int k = i();
        String s;
        if(k < b - d && k > 0)
        {
            s = new String(a, d, k, "UTF-8");
            d = k + d;
        } else
        {
            s = new String(c(k), "UTF-8");
        }
        return s;
    }

    public final ByteString g()
    {
        int k = i();
        ByteString bytestring;
        if(k < b - d && k > 0)
        {
            bytestring = ByteString.a(a, d, k);
            d = k + d;
        } else
        {
            bytestring = ByteString.a(c(k));
        }
        return bytestring;
    }

    public final long h()
    {
        int k = 0;
        long l = 0L;
        do
        {
            if(k >= 64)
                throw c.a.a.a.a.a.c();
            byte byte0 = j();
            l |= (long)(byte0 & 0x7f) << k;
            if((byte0 & 0x80) == 0)
                return l;
            k += 7;
        } while(true);
    }

    private byte a[];
    private int b;
    private int c;
    private int d;
    private InputStream e;
    private int f;
    private int g;
    private int h;
    private int i;
}

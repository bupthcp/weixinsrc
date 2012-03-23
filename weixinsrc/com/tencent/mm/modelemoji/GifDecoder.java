// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import android.graphics.Bitmap;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Vector;

public class GifDecoder extends Thread
{

    public GifDecoder(byte abyte0[])
    {
        x = new byte[256];
        y = 0;
        z = 0;
        A = 0;
        B = false;
        C = 0;
        I = new Vector();
        J = null;
        J = abyte0;
    }

    private boolean a()
    {
        boolean flag;
        if(b != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private int[] a(int i1)
    {
        int j1;
        int k1;
        int ai[];
        byte abyte0[];
        j1 = 0;
        k1 = i1 * 3;
        ai = null;
        abyte0 = new byte[k1];
        int l3 = a.read(abyte0);
        int l1 = l3;
_L1:
        Exception exception;
        if(l1 < k1)
        {
            b = -1;
        } else
        {
            ai = new int[256];
            int i2 = j1;
            while(i2 < i1) 
            {
                int j2 = j1 + 1;
                int k2 = 0xff & abyte0[j1];
                int l2 = j2 + 1;
                int i3 = 0xff & abyte0[j2];
                j1 = l2 + 1;
                int j3 = 0xff & abyte0[l2];
                int k3 = i2 + 1;
                ai[i2] = j3 | (0xff000000 | k2 << 16 | i3 << 8);
                i2 = k3;
            }
        }
        return ai;
        exception;
        l1 = j1;
          goto _L1
    }

    private void b()
    {
        boolean flag;
        String s1;
        flag = false;
        s1 = "";
        for(int i1 = ((flag) ? 1 : 0); i1 < 6; i1++)
            s1 = (new StringBuilder()).append(s1).append((char)h()).toString();

        if(s1.startsWith("GIF")) goto _L2; else goto _L1
_L1:
        b = -1;
_L4:
        return;
_L2:
        e = i();
        f = i();
        int j1 = h();
        if((j1 & 0x80) != 0)
            flag = true;
        c = flag;
        d = 2 << (j1 & 7);
        j = h();
        h();
        if(c && !a())
        {
            g = a(d);
            k = g[j];
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void c()
    {
        boolean flag = false;
        do
            if(!flag && !a())
                switch(h())
                {
                default:
                    b = -1;
                    continue;

                case 0: // '\0'
                    continue;

                case 33: // '!'
                    switch(h())
                    {
                    default:
                        g();
                        break;

                    case 249: 
                        h();
                        int l1 = h();
                        z = (l1 & 0x1c) >> 2;
                        if(z == 0)
                            z = 1;
                        boolean flag3;
                        if((l1 & 1) != 0)
                            flag3 = true;
                        else
                            flag3 = false;
                        B = flag3;
                        C = 10 * i();
                        D = h();
                        h();
                        break;

                    case 255: 
                        j();
                        String s1 = "";
                        for(int k1 = 0; k1 < 11; k1++)
                            s1 = (new StringBuilder()).append(s1).append((char)x[k1]).toString();

                        if(s1.equals("NETSCAPE2.0"))
                            f();
                        else
                            g();
                        break;
                    }
                    continue;

                case 44: // ','
                    p = i();
                    q = i();
                    r = i();
                    s = i();
                    int i1 = h();
                    boolean flag1;
                    boolean flag2;
                    int j1;
                    if((i1 & 0x80) != 0)
                        flag1 = true;
                    else
                        flag1 = false;
                    m = flag1;
                    if((i1 & 0x40) != 0)
                        flag2 = true;
                    else
                        flag2 = false;
                    n = flag2;
                    o = 2 << (i1 & 7);
                    if(m)
                    {
                        h = a(o);
                        i = h;
                    } else
                    {
                        i = g;
                        if(j == D)
                            k = 0;
                    }
                    if(B)
                    {
                        j1 = i[D];
                        i[D] = 0;
                    } else
                    {
                        j1 = 0;
                    }
                    if(i == null)
                        b = -1;
                    if(!a())
                    {
                        d();
                        g();
                        if(!a())
                        {
                            I.add(new Frame(e(), C));
                            if(B)
                                i[D] = j1;
                            A = z;
                            t = p;
                            u = q;
                            v = r;
                            w = s;
                            l = k;
                            z = 0;
                            B = false;
                            C = 0;
                            h = null;
                        }
                    }
                    continue;

                case 59: // ';'
                    flag = true;
                    continue;
                }
            else
                return;
        while(true);
    }

    private void d()
    {
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int j3;
        int k3;
        int l3;
        int i4;
        int j4;
        int k4;
        int l4;
        int i5;
        i1 = r * s;
        if(H == null || H.length < i1)
            H = new byte[i1];
        if(E == null)
            E = new short[4096];
        if(F == null)
            F = new byte[4096];
        if(G == null)
            G = new byte[4097];
        j1 = h();
        k1 = 1 << j1;
        l1 = k1 + 1;
        i2 = k1 + 2;
        j2 = -1;
        k2 = j1 + 1;
        l2 = -1 + (1 << k2);
        for(int i3 = 0; i3 < k1; i3++)
        {
            E[i3] = 0;
            F[i3] = (byte)i3;
        }

        j3 = 0;
        k3 = j3;
        l3 = j3;
        i4 = j3;
        j4 = 0;
        k4 = j3;
        l4 = j3;
        i5 = j3;
_L2:
        int k5;
        int l5;
        int i6;
        int j6;
        int k6;
        int l6;
        int i7;
        int j7;
        if(j4 >= i1)
            break; /* Loop/switch isn't completed */
        if(k3 != 0)
            break MISSING_BLOCK_LABEL_673;
        if(l4 < k2)
        {
            if(k4 == 0)
            {
                k4 = j();
                if(k4 <= 0)
                    break; /* Loop/switch isn't completed */
                i5 = 0;
            }
            i4 += (0xff & x[i5]) << l4;
            l4 += 8;
            i5++;
            k4--;
            continue; /* Loop/switch isn't completed */
        }
        int j8 = i4 & l2;
        i4 >>= k2;
        l4 -= k2;
        if(j8 > i2 || j8 == l1)
            break; /* Loop/switch isn't completed */
        if(j8 == k1)
        {
            k2 = j1 + 1;
            l2 = -1 + (1 << k2);
            i2 = k1 + 2;
            j2 = -1;
            continue; /* Loop/switch isn't completed */
        }
        if(j2 == -1)
        {
            byte abyte4[] = G;
            int l9 = k3 + 1;
            abyte4[k3] = F[j8];
            k3 = l9;
            j2 = j8;
            l3 = j8;
            continue; /* Loop/switch isn't completed */
        }
        int j5;
        int k7;
        byte abyte0[];
        int l7;
        int i8;
        int k8;
        int l8;
        int i9;
        byte abyte1[];
        int j9;
        if(j8 == i2)
        {
            byte abyte3[] = G;
            k8 = k3 + 1;
            abyte3[k3] = (byte)l3;
            l8 = j2;
        } else
        {
            k8 = k3;
            l8 = j8;
        }
        while(l8 > k1) 
        {
            byte abyte2[] = G;
            int k9 = k8 + 1;
            abyte2[k8] = F[l8];
            l8 = E[l8];
            k8 = k9;
        }
        i9 = 0xff & F[l8];
        if(i2 >= 4096)
            break; /* Loop/switch isn't completed */
        abyte1 = G;
        j9 = k8 + 1;
        abyte1[k8] = (byte)i9;
        E[i2] = (short)j2;
        F[i2] = (byte)i9;
        j7 = i2 + 1;
        if((j7 & l2) == 0 && j7 < 4096)
        {
            k2++;
            l2 += j7;
        }
        l6 = i4;
        i7 = j8;
        k5 = l2;
        l5 = i9;
        i6 = l4;
        j6 = k2;
        k6 = j9;
_L3:
        k7 = k6 + -1;
        abyte0 = H;
        l7 = j3 + 1;
        abyte0[j3] = G[k7];
        j4++;
        j3 = l7;
        k2 = j6;
        l4 = i6;
        l3 = l5;
        l2 = k5;
        i8 = i7;
        i4 = l6;
        k3 = k7;
        i2 = j7;
        j2 = i8;
        if(true) goto _L2; else goto _L1
_L1:
        for(j5 = j3; j5 < i1; j5++)
            H[j5] = 0;

        return;
        k5 = l2;
        l5 = l3;
        i6 = l4;
        j6 = k2;
        k6 = k3;
        l6 = i4;
        i7 = j2;
        j7 = i2;
          goto _L3
    }

    private Bitmap e()
    {
        int i1 = 0;
        int ai[] = new int[e * f];
        Bitmap bitmap;
        if(I.size() > 0)
            bitmap = ((Frame)I.lastElement()).a;
        else
            bitmap = null;
        if(A > 0)
        {
            if(A == 3)
                if(I.size() > 1)
                    bitmap = ((Frame)I.elementAt(-2 + I.size())).a;
                else
                    bitmap = null;
            if(bitmap != null)
            {
                int k4 = e;
                int l4 = e;
                int i5 = f;
                bitmap.getPixels(ai, i1, k4, i1, i1, l4, i5);
                if(A == 2)
                {
                    byte byte0;
                    int j1;
                    int k1;
                    int l1;
                    int i2;
                    int j2;
                    int k2;
                    int l2;
                    int i3;
                    byte abyte0[];
                    int j3;
                    int k3;
                    int l3;
                    int i4;
                    int j4;
                    int j5;
                    int k5;
                    if(!B)
                        j5 = l;
                    else
                        j5 = i1;
                    for(k5 = i1; k5 < w; k5++)
                    {
                        int l5 = (k5 + u) * e + t;
                        for(int i6 = l5 + v; l5 < i6; l5++)
                            ai[l5] = j5;

                    }

                }
            }
        }
        byte0 = 8;
        j1 = 1;
        k1 = i1;
        if(i1 >= s) goto _L2; else goto _L1
_L1:
        if(!n)
            break MISSING_BLOCK_LABEL_479;
        if(k1 < s) goto _L4; else goto _L3
_L3:
        ++j1;
        JVM INSTR tableswitch 2 4: default 280
    //                   2 433
    //                   3 439
    //                   4 448;
           goto _L4 _L5 _L6 _L7
_L4:
        i4 = k1 + byte0;
        j4 = k1;
        k1 = i4;
        l1 = j4;
_L8:
        i2 = l1 + q;
        if(i2 >= f)
            continue; /* Loop/switch isn't completed */
        j2 = i2 * e;
        k2 = j2 + p;
        l2 = k2 + r;
        if(j2 + e < l2)
            l2 = j2 + e;
        i3 = i1 * r;
        do
        {
            if(k2 >= l2)
                continue; /* Loop/switch isn't completed */
            abyte0 = H;
            j3 = i3 + 1;
            k3 = 0xff & abyte0[i3];
            l3 = i[k3];
            if(l3 != 0)
                ai[k2] = l3;
            k2++;
            i3 = j3;
        } while(true);
_L5:
        k1 = 4;
          goto _L4
_L6:
        k1 = 2;
        byte0 = 4;
          goto _L4
_L7:
        k1 = 1;
        byte0 = 2;
          goto _L4
        i1++;
        break MISSING_BLOCK_LABEL_225;
_L2:
        return Bitmap.createBitmap(ai, e, f, android.graphics.Bitmap.Config.ARGB_4444);
        l1 = i1;
          goto _L8
    }

    private void f()
    {
        do
            j();
        while(y > 0 && !a());
    }

    private void g()
    {
        do
            j();
        while(y > 0 && !a());
    }

    private int h()
    {
        int i1 = 0;
        int j1 = a.read();
        i1 = j1;
_L2:
        return i1;
        Exception exception;
        exception;
        b = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private int i()
    {
        return h() | h() << 8;
    }

    private int j()
    {
        y = h();
        int i1 = 0;
        if(y > 0)
        {
            do
            {
                int j1;
                try
                {
                    if(i1 >= y)
                        break;
                    j1 = a.read(x, i1, y - i1);
                }
                catch(Exception exception)
                {
                    break;
                }
                if(j1 == -1)
                    break;
                i1 += j1;
            } while(true);
            if(i1 < y)
                b = -1;
        }
        return i1;
    }

    public final int a(Vector vector)
    {
        byte byte0;
        byte0 = -1;
        I = vector;
        a = new ByteArrayInputStream(J);
        J = null;
        b = 0;
        g = null;
        h = null;
        b();
        if(!a()) goto _L2; else goto _L1
_L1:
        return byte0;
_L2:
        c();
        try
        {
            a.close();
        }
        catch(Exception exception) { }
        if(!a())
            byte0 = 0;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private int A;
    private boolean B;
    private int C;
    private int D;
    private short E[];
    private byte F[];
    private byte G[];
    private byte H[];
    private Vector I;
    private byte J[];
    private InputStream a;
    private int b;
    private boolean c;
    private int d;
    private int e;
    private int f;
    private int g[];
    private int h[];
    private int i[];
    private int j;
    private int k;
    private int l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private byte x[];
    private int y;
    private int z;

    private class Frame
    {

        Bitmap a;
        int b;
        private GifDecoder c;

        public Frame(Bitmap bitmap, int i1)
        {
            c = GifDecoder.this;
            super();
            a = null;
            b = 0;
            a = bitmap;
            b = i1;
        }
    }

}

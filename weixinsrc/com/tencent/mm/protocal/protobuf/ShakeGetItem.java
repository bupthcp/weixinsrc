// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class ShakeGetItem extends BaseProtoBuf
{

    public ShakeGetItem()
    {
    }

    protected static boolean a(a a1, ShakeGetItem shakegetitem, int i1)
    {
        boolean flag = false;
        i1;
        JVM INSTR tableswitch 1 17: default 84
    //                   1 86
    //                   2 100
    //                   3 114
    //                   4 128
    //                   5 142
    //                   6 156
    //                   7 170
    //                   8 184
    //                   9 198
    //                   10 212
    //                   11 314
    //                   12 328
    //                   13 346
    //                   14 364
    //                   15 382
    //                   16 396
    //                   17 410;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18
_L1:
        return flag;
_L2:
        shakegetitem.a(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        shakegetitem.b(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L4:
        shakegetitem.c(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L5:
        shakegetitem.d(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L6:
        shakegetitem.e(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L7:
        shakegetitem.f(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L8:
        shakegetitem.a(a1.a());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L9:
        shakegetitem.b(a1.a());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L10:
        shakegetitem.c(a1.a());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L11:
        LinkedList linkedlist = a1.a(10);
        for(int j1 = ((flag) ? 1 : 0); j1 < linkedlist.size(); j1++)
        {
            byte abyte0[] = (byte[])linkedlist.get(j1);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a2, skbuiltinbuffer_t, a(a2)));
            shakegetitem.a(skbuiltinbuffer_t);
        }

        flag = true;
        continue; /* Loop/switch isn't completed */
_L12:
        shakegetitem.d(a1.a());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L13:
        shakegetitem.x = a1.b();
        shakegetitem.y = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L14:
        shakegetitem.z = a1.b();
        shakegetitem.A = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L15:
        shakegetitem.B = a1.a();
        shakegetitem.C = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L16:
        shakegetitem.e(a1.a());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L17:
        shakegetitem.g(a1.b());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L18:
        shakegetitem.h(a1.b());
        flag = true;
        if(true) goto _L1; else goto _L19
_L19:
    }

    public final int a()
    {
        int i1 = 0;
        if(c)
            i1 = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i1 += c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        int j1 = i1 + c.a.a.a.a(7, n) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r) + c.a.a.a.a(11, v);
        if(y)
            j1 += c.a.a.a.b.a.b(12, x);
        if(A)
            j1 += c.a.a.a.b.a.b(13, z);
        if(C)
            j1 += c.a.a.a.a(14, B);
        if(E)
            j1 += c.a.a.a.a(15, D);
        if(G)
            j1 += c.a.a.a.b.a.b(16, F);
        if(I)
            j1 += c.a.a.a.b.a.b(17, H);
        return j1 + (0 + c.a.a.a.b(10, t.a()));
    }

    public final ShakeGetItem a(int i1)
    {
        n = i1;
        o = true;
        return this;
    }

    public final ShakeGetItem a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        t = skbuiltinbuffer_t;
        u = true;
        return this;
    }

    public final ShakeGetItem a(String s1)
    {
        b = s1;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
        a1.a(9, r);
        a1.b(10, t.a());
        t.a(a1);
        a1.a(11, v);
        if(y)
            a1.a(12, x);
        if(A)
            a1.a(13, z);
        if(C)
            a1.a(14, B);
        if(E)
            a1.a(15, D);
        if(G)
            a1.a(16, F);
        if(I)
            a1.a(17, H);
    }

    public final ShakeGetItem b(int i1)
    {
        p = i1;
        q = true;
        return this;
    }

    public final ShakeGetItem b(String s1)
    {
        d = s1;
        e = true;
        return this;
    }

    public final byte[] b()
    {
        if(!o || !q || !s || !u || !w)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Sex:").append(o).append(" ImgStatus:").append(q).append(" HasHDImg:").append(s).append(" ImgBuffer:").append(u).append(" NumDistance:").append(w).append("").toString());
        else
            return super.b();
    }

    public final ShakeGetItem c(int i1)
    {
        r = i1;
        s = true;
        return this;
    }

    public final ShakeGetItem c(String s1)
    {
        f = s1;
        g = true;
        return this;
    }

    public final String c()
    {
        return b;
    }

    public final ShakeGetItem d(int i1)
    {
        v = i1;
        w = true;
        return this;
    }

    public final ShakeGetItem d(String s1)
    {
        h = s1;
        i = true;
        return this;
    }

    public final String d()
    {
        return d;
    }

    public final ShakeGetItem e(int i1)
    {
        D = i1;
        E = true;
        return this;
    }

    public final ShakeGetItem e(String s1)
    {
        j = s1;
        k = true;
        return this;
    }

    public final String e()
    {
        return f;
    }

    public final ShakeGetItem f(String s1)
    {
        l = s1;
        m = true;
        return this;
    }

    public final String f()
    {
        return h;
    }

    public final ShakeGetItem g(String s1)
    {
        F = s1;
        G = true;
        return this;
    }

    public final String g()
    {
        return j;
    }

    public final ShakeGetItem h(String s1)
    {
        H = s1;
        I = true;
        return this;
    }

    public final String h()
    {
        return l;
    }

    public final int i()
    {
        return n;
    }

    public final int j()
    {
        return p;
    }

    public final int k()
    {
        return r;
    }

    public final SKBuiltinBuffer_t l()
    {
        return t;
    }

    public final int m()
    {
        return v;
    }

    public final int n()
    {
        return D;
    }

    public final String o()
    {
        return F;
    }

    public final String p()
    {
        return H;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("UserName = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("NickName = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("Province = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("City = ").append(h).append("   ").toString();
        if(k)
            s1 = (new StringBuilder()).append(s1).append("Signature = ").append(j).append("   ").toString();
        if(m)
            s1 = (new StringBuilder()).append(s1).append("Distance = ").append(l).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Sex = ").append(n).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ImgStatus = ").append(p).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("HasHDImg = ").append(r).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("ImgBuffer = ").append(t).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("NumDistance = ").append(v).append("   ").toString();
        if(y)
            s6 = (new StringBuilder()).append(s6).append("Weibo = ").append(x).append("   ").toString();
        if(A)
            s6 = (new StringBuilder()).append(s6).append("WeiboNickname = ").append(z).append("   ").toString();
        if(C)
            s6 = (new StringBuilder()).append(s6).append("WeiboFlag = ").append(B).append("   ").toString();
        if(E)
            s6 = (new StringBuilder()).append(s6).append("VerifyFlag = ").append(D).append("   ").toString();
        if(G)
            s6 = (new StringBuilder()).append(s6).append("VerifyInfo = ").append(F).append("   ").toString();
        if(I)
            s6 = (new StringBuilder()).append(s6).append("VerifyContent = ").append(H).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private int D;
    private boolean E;
    private String F;
    private boolean G;
    private String H;
    private boolean I;
    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private SKBuiltinBuffer_t t;
    private boolean u;
    private int v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

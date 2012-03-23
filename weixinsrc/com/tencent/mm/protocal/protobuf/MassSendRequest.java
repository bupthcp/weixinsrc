// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinBuffer_t

public class MassSendRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public MassSendRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        return i1 + c.a.a.a.a(5, j) + c.a.a.a.a(6, l) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r) + c.a.a.a.a(10, t) + c.a.a.a.a(11, v) + c.a.a.a.a(13, z) + c.a.a.a.a(14, B) + c.a.a.a.a(15, D) + c.a.a.a.a(16, F) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(7, n.a()) + c.a.a.a.b(12, x.a()));
    }

    public final MassSendRequest a(int i1)
    {
        j = i1;
        k = true;
        return this;
    }

    public final MassSendRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final MassSendRequest a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        n = skbuiltinbuffer_t;
        o = true;
        return this;
    }

    public final MassSendRequest a(String s1)
    {
        d = s1;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        a1.a(6, l);
        a1.b(7, n.a());
        n.a(a1);
        a1.a(8, p);
        a1.a(9, r);
        a1.a(10, t);
        a1.a(11, v);
        a1.b(12, x.a());
        x.a(a1);
        a1.a(13, z);
        a1.a(14, B);
        a1.a(15, D);
        a1.a(16, F);
    }

    public final MassSendRequest b(int i1)
    {
        l = i1;
        m = true;
        return this;
    }

    public final MassSendRequest b(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        x = skbuiltinbuffer_t;
        y = true;
        return this;
    }

    public final MassSendRequest b(String s1)
    {
        f = s1;
        g = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !k || !m || !o || !q || !s || !u || !w || !y || !A || !C || !E || !G)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" MsgType:").append(k).append(" MediaTime:").append(m).append(" DataBuffer:").append(o).append(" DataStartPos:").append(q).append(" DataTotalLen:").append(s).append(" ThumbTotalLen:").append(u).append(" ThumbStartPos:").append(w).append(" ThumbData:").append(y).append(" CameraType:").append(A).append(" VideoSource:").append(C).append(" ToListCount:").append(E).append(" IsSendAgain:").append(G).append("").toString());
        else
            return super.b();
    }

    public final MassSendRequest c(int i1)
    {
        p = i1;
        q = true;
        return this;
    }

    public final MassSendRequest c(String s1)
    {
        h = s1;
        i = true;
        return this;
    }

    public final SKBuiltinBuffer_t c()
    {
        return n;
    }

    public final int d()
    {
        return p;
    }

    public final MassSendRequest d(int i1)
    {
        r = i1;
        s = true;
        return this;
    }

    public final int e()
    {
        return r;
    }

    public final MassSendRequest e(int i1)
    {
        t = i1;
        u = true;
        return this;
    }

    public final int f()
    {
        return t;
    }

    public final MassSendRequest f(int i1)
    {
        v = i1;
        w = true;
        return this;
    }

    public final int g()
    {
        return v;
    }

    public final MassSendRequest g(int i1)
    {
        z = i1;
        A = true;
        return this;
    }

    public final MassSendRequest h(int i1)
    {
        B = i1;
        C = true;
        return this;
    }

    public final SKBuiltinBuffer_t h()
    {
        return x;
    }

    public final int i()
    {
        return B;
    }

    public final MassSendRequest i(int i1)
    {
        D = i1;
        E = true;
        return this;
    }

    public final MassSendRequest j(int i1)
    {
        F = i1;
        G = true;
        return this;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("ToList = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("ToListMD5 = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("ClientID = ").append(h).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("MsgType = ").append(j).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MediaTime = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("DataBuffer = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("DataStartPos = ").append(p).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("DataTotalLen = ").append(r).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("ThumbTotalLen = ").append(t).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("ThumbStartPos = ").append(v).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("ThumbData = ").append(x).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("CameraType = ").append(z).append("   ").toString();
        String s12 = (new StringBuilder()).append(s11).append("VideoSource = ").append(B).append("   ").toString();
        String s13 = (new StringBuilder()).append(s12).append("ToListCount = ").append(D).append("   ").toString();
        String s14 = (new StringBuilder()).append(s13).append("IsSendAgain = ").append(F).append("   ").toString();
        return (new StringBuilder()).append(s14).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private int D;
    private boolean E;
    private int F;
    private boolean G;
    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
    private SKBuiltinBuffer_t n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private int t;
    private boolean u;
    private int v;
    private boolean w;
    private SKBuiltinBuffer_t x;
    private boolean y;
    private int z;
}

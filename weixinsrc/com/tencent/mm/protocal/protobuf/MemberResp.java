// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class MemberResp extends BaseProtoBuf
{

    public MemberResp()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(6, l) + c.a.a.a.a(12, t);
        if(w)
            i1 += c.a.a.a.b.a.b(13, v);
        if(y)
            i1 += c.a.a.a.b.a.b(14, x);
        if(A)
            i1 += c.a.a.a.b.a.b(15, z);
        if(C)
            i1 += c.a.a.a.a(16, B);
        if(E)
            i1 += c.a.a.a.a(17, D);
        if(G)
            i1 += c.a.a.a.b.a.b(18, F);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()) + c.a.a.a.b(9, n.a()) + c.a.a.a.b(10, p.a()) + c.a.a.a.b(11, r.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        a1.b(4, h.a());
        h.a(a1);
        a1.b(5, j.a());
        j.a(a1);
        a1.a(6, l);
        a1.b(9, n.a());
        n.a(a1);
        a1.b(10, p.a());
        p.a(a1);
        a1.b(11, r.a());
        r.a(a1);
        a1.a(12, t);
        if(w)
            a1.a(13, v);
        if(y)
            a1.a(14, x);
        if(A)
            a1.a(15, z);
        if(C)
            a1.a(16, B);
        if(E)
            a1.a(17, D);
        if(G)
            a1.a(18, F);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  MemberName:").append(c).append(" MemberStatus:").append(e).append(" NickName:").append(g).append(" PYInitial:").append(i).append(" QuanPin:").append(k).append(" Sex:").append(m).append(" Remark:").append(o).append(" RemarkPYInitial:").append(q).append(" RemarkQuanPin:").append(s).append(" ContactType:").append(u).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("MemberName = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("MemberStatus = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("NickName = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("PYInitial = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("QuanPin = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("Sex = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("Remark = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("RemarkPYInitial = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("RemarkQuanPin = ").append(r).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("ContactType = ").append(t).append("   ").toString();
        if(w)
            s11 = (new StringBuilder()).append(s11).append("Province = ").append(v).append("   ").toString();
        if(y)
            s11 = (new StringBuilder()).append(s11).append("City = ").append(x).append("   ").toString();
        if(A)
            s11 = (new StringBuilder()).append(s11).append("Signature = ").append(z).append("   ").toString();
        if(C)
            s11 = (new StringBuilder()).append(s11).append("PersonalCard = ").append(B).append("   ").toString();
        if(E)
            s11 = (new StringBuilder()).append(s11).append("VerifyFlag = ").append(D).append("   ").toString();
        if(G)
            s11 = (new StringBuilder()).append(s11).append("VerifyInfo = ").append(F).append("   ").toString();
        return (new StringBuilder()).append(s11).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private int D;
    private boolean E;
    private String F;
    private boolean G;
    private SKBuiltinString_t b;
    private boolean c;
    private int d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private SKBuiltinString_t j;
    private boolean k;
    private int l;
    private boolean m;
    private SKBuiltinString_t n;
    private boolean o;
    private SKBuiltinString_t p;
    private boolean q;
    private SKBuiltinString_t r;
    private boolean s;
    private int t;
    private boolean u;
    private String v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

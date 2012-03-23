// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinString_t

public class RegRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public RegRequest()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(5, j);
        if(w)
            i1 += c.a.a.a.b.a.b(11, v);
        if(y)
            i1 += c.a.a.a.a(12, x);
        if(A)
            i1 += c.a.a.a.a(13, z);
        if(C)
            i1 += c.a.a.a.b.a.b(14, B);
        if(E)
            i1 += c.a.a.a.b.a.b(15, D);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(6, l.a()) + c.a.a.a.b(7, n.a()) + c.a.a.a.b(8, p.a()) + c.a.a.a.b(9, r.a()) + c.a.a.a.b(10, t.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        a1.b(4, h.a());
        h.a(a1);
        a1.a(5, j);
        a1.b(6, l.a());
        l.a(a1);
        a1.b(7, n.a());
        n.a(a1);
        a1.b(8, p.a());
        p.a(a1);
        a1.b(9, r.a());
        r.a(a1);
        a1.b(10, t.a());
        t.a(a1);
        if(w)
            a1.a(11, v);
        if(y)
            a1.a(12, x);
        if(A)
            a1.a(13, z);
        if(C)
            a1.a(14, B);
        if(E)
            a1.a(15, D);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" UserName:").append(e).append(" Pwd:").append(g).append(" NickName:").append(i).append(" BindUin:").append(k).append(" BindEmail:").append(m).append(" BindMobile:").append(o).append(" ImgSid:").append(q).append(" ImgCode:").append(s).append(" Ticket:").append(u).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("UserName = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Pwd = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("NickName = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("BindUin = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("BindEmail = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("BindMobile = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("ImgSid = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("ImgCode = ").append(r).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("Ticket = ").append(t).append("   ").toString();
        if(w)
            s11 = (new StringBuilder()).append(s11).append("Pwd2 = ").append(v).append("   ").toString();
        if(y)
            s11 = (new StringBuilder()).append(s11).append("BuiltinIPSeq = ").append(x).append("   ").toString();
        if(A)
            s11 = (new StringBuilder()).append(s11).append("DLSrc = ").append(z).append("   ").toString();
        if(C)
            s11 = (new StringBuilder()).append(s11).append("TimeZone = ").append(B).append("   ").toString();
        if(E)
            s11 = (new StringBuilder()).append(s11).append("Language = ").append(D).append("   ").toString();
        return (new StringBuilder()).append(s11).append(")").toString();
    }

    private boolean A;
    private String B;
    private boolean C;
    private String D;
    private boolean E;
    private BaseRequest b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private int j;
    private boolean k;
    private SKBuiltinString_t l;
    private boolean m;
    private SKBuiltinString_t n;
    private boolean o;
    private SKBuiltinString_t p;
    private boolean q;
    private SKBuiltinString_t r;
    private boolean s;
    private SKBuiltinString_t t;
    private boolean u;
    private String v;
    private boolean w;
    private int x;
    private boolean y;
    private int z;
}

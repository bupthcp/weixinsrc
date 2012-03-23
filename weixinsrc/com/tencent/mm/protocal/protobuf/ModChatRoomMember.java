// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t, SKBuiltinBuffer_t

public class ModChatRoomMember extends BaseProtoBuf
{

    public ModChatRoomMember()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(5, j) + c.a.a.a.a(7, n) + c.a.a.a.a(11, v);
        if(y)
            i1 += c.a.a.a.b.a.b(12, x);
        if(A)
            i1 += c.a.a.a.b.a.b(13, z);
        if(C)
            i1 += c.a.a.a.b.a.b(14, B);
        if(E)
            i1 += c.a.a.a.a(15, D);
        if(G)
            i1 += c.a.a.a.a(16, F);
        if(I)
            i1 += c.a.a.a.b.a.b(17, H);
        if(K)
            i1 += c.a.a.a.b.a.b(18, J);
        if(M)
            i1 += c.a.a.a.b.a.b(19, L);
        if(O)
            i1 += c.a.a.a.b.a.b(20, N);
        if(Q)
            i1 += c.a.a.a.a(21, P);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(6, l.a()) + c.a.a.a.b(8, p.a()) + c.a.a.a.b(9, r.a()) + c.a.a.a.b(10, t.a()));
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
        a1.a(7, n);
        a1.b(8, p.a());
        p.a(a1);
        a1.b(9, r.a());
        r.a(a1);
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
        if(K)
            a1.a(18, J);
        if(M)
            a1.a(19, L);
        if(O)
            a1.a(20, N);
        if(Q)
            a1.a(21, P);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s || !u || !w)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  UserName:").append(c).append(" NickName:").append(e).append(" PYInitial:").append(g).append(" QuanPin:").append(i).append(" Sex:").append(k).append(" ImgBuf:").append(m).append(" ImgFlag:").append(o).append(" Remark:").append(q).append(" RemarkPYInitial:").append(s).append(" RemarkQuanPin:").append(u).append(" ContactType:").append(w).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("UserName = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("NickName = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("PYInitial = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("QuanPin = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Sex = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("ImgBuf = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("ImgFlag = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("Remark = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("RemarkPYInitial = ").append(r).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("RemarkQuanPin = ").append(t).append("   ").toString();
        String s12 = (new StringBuilder()).append(s11).append("ContactType = ").append(v).append("   ").toString();
        if(y)
            s12 = (new StringBuilder()).append(s12).append("Province = ").append(x).append("   ").toString();
        if(A)
            s12 = (new StringBuilder()).append(s12).append("City = ").append(z).append("   ").toString();
        if(C)
            s12 = (new StringBuilder()).append(s12).append("Signature = ").append(B).append("   ").toString();
        if(E)
            s12 = (new StringBuilder()).append(s12).append("PersonalCard = ").append(D).append("   ").toString();
        if(G)
            s12 = (new StringBuilder()).append(s12).append("VerifyFlag = ").append(F).append("   ").toString();
        if(I)
            s12 = (new StringBuilder()).append(s12).append("VerifyInfo = ").append(H).append("   ").toString();
        if(K)
            s12 = (new StringBuilder()).append(s12).append("Weibo = ").append(J).append("   ").toString();
        if(M)
            s12 = (new StringBuilder()).append(s12).append("VerifyContent = ").append(L).append("   ").toString();
        if(O)
            s12 = (new StringBuilder()).append(s12).append("WeiboNickname = ").append(N).append("   ").toString();
        if(Q)
            s12 = (new StringBuilder()).append(s12).append("WeiboFlag = ").append(P).append("   ").toString();
        return (new StringBuilder()).append(s12).append(")").toString();
    }

    private boolean A;
    private String B;
    private boolean C;
    private int D;
    private boolean E;
    private int F;
    private boolean G;
    private String H;
    private boolean I;
    private String J;
    private boolean K;
    private String L;
    private boolean M;
    private String N;
    private boolean O;
    private int P;
    private boolean Q;
    private SKBuiltinString_t b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private int j;
    private boolean k;
    private SKBuiltinBuffer_t l;
    private boolean m;
    private int n;
    private boolean o;
    private SKBuiltinString_t p;
    private boolean q;
    private SKBuiltinString_t r;
    private boolean s;
    private SKBuiltinString_t t;
    private boolean u;
    private int v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

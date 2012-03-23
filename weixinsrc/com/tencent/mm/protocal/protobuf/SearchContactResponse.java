// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinString_t, SKBuiltinBuffer_t

public class SearchContactResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public SearchContactResponse()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(6, l);
        if(q)
            i1 += c.a.a.a.b.a.b(8, p);
        if(s)
            i1 += c.a.a.a.b.a.b(9, r);
        if(u)
            i1 += c.a.a.a.b.a.b(10, t);
        if(w)
            i1 += c.a.a.a.a(11, v);
        if(y)
            i1 += c.a.a.a.a(12, x);
        if(A)
            i1 += c.a.a.a.b.a.b(13, z);
        if(C)
            i1 += c.a.a.a.b.a.b(14, B);
        if(E)
            i1 += c.a.a.a.b.a.b(15, D);
        if(G)
            i1 += c.a.a.a.b.a.b(16, F);
        if(I)
            i1 += c.a.a.a.a(17, H);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()) + c.a.a.a.b(7, n.a()));
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
        a1.b(5, j.a());
        j.a(a1);
        a1.a(6, l);
        a1.b(7, n.a());
        n.a(a1);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
        if(u)
            a1.a(10, t);
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
        if(G)
            a1.a(16, F);
        if(I)
            a1.a(17, H);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" UserName:").append(e).append(" NickName:").append(g).append(" PYInitial:").append(i).append(" QuanPin:").append(k).append(" Sex:").append(m).append(" ImgBuf:").append(o).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseResponse = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("UserName = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("NickName = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("PYInitial = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("QuanPin = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("Sex = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("ImgBuf = ").append(n).append("   ").toString();
        if(q)
            s8 = (new StringBuilder()).append(s8).append("Province = ").append(p).append("   ").toString();
        if(s)
            s8 = (new StringBuilder()).append(s8).append("City = ").append(r).append("   ").toString();
        if(u)
            s8 = (new StringBuilder()).append(s8).append("Signature = ").append(t).append("   ").toString();
        if(w)
            s8 = (new StringBuilder()).append(s8).append("PersonalCard = ").append(v).append("   ").toString();
        if(y)
            s8 = (new StringBuilder()).append(s8).append("VerifyFlag = ").append(x).append("   ").toString();
        if(A)
            s8 = (new StringBuilder()).append(s8).append("VerifyInfo = ").append(z).append("   ").toString();
        if(C)
            s8 = (new StringBuilder()).append(s8).append("Weibo = ").append(B).append("   ").toString();
        if(E)
            s8 = (new StringBuilder()).append(s8).append("Alias = ").append(D).append("   ").toString();
        if(G)
            s8 = (new StringBuilder()).append(s8).append("WeiboNickname = ").append(F).append("   ").toString();
        if(I)
            s8 = (new StringBuilder()).append(s8).append("WeiboFlag = ").append(H).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private boolean A;
    private String B;
    private boolean C;
    private String D;
    private boolean E;
    private String F;
    private boolean G;
    private int H;
    private boolean I;
    private BaseResponse b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private SKBuiltinString_t j;
    private boolean k;
    private int l;
    private boolean m;
    private SKBuiltinBuffer_t n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
    private String t;
    private boolean u;
    private int v;
    private boolean w;
    private int x;
    private boolean y;
    private String z;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import com.tencent.mm.protobuf.ByteString;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinString_t, SKBuiltinBuffer_t, 
//            BuiltinIPList, NetworkControl

public class RegResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public RegResponse()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(w)
            i1 += c.a.a.a.a(11, v);
        if(y)
            i1 += c.a.a.a.a(12, x);
        if(A)
            i1 += c.a.a.a.b.a.b(13, z);
        if(E)
            i1 += c.a.a.a.b.a.b(15, D);
        int j1 = 0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()) + c.a.a.a.b(6, l.a()) + c.a.a.a.b(7, n.a()) + c.a.a.a.b(8, p.a()) + c.a.a.a.b(9, r.a());
        if(u)
            j1 += c.a.a.a.b(10, t.a());
        if(C)
            j1 += c.a.a.a.b(14, B.a());
        if(G)
            j1 += c.a.a.a.b(16, F.a());
        return i1 + j1;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        a1.b(5, j.a());
        j.a(a1);
        a1.b(6, l.a());
        l.a(a1);
        a1.b(7, n.a());
        n.a(a1);
        a1.b(8, p.a());
        p.a(a1);
        a1.b(9, r.a());
        r.a(a1);
        if(u)
        {
            a1.b(10, t.a());
            t.a(a1);
        }
        if(w)
            a1.a(11, v);
        if(y)
            a1.a(12, x);
        if(A)
            a1.a(13, z);
        if(C)
        {
            a1.b(14, B.a());
            B.a(a1);
        }
        if(E)
            a1.a(15, D);
        if(G)
        {
            a1.b(16, F.a());
            F.a(a1);
        }
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Uin:").append(e).append(" SessionKey:").append(g).append(" ImgSid:").append(i).append(" ImgBuf:").append(k).append(" Ticket:").append(m).append(" SpareUserName:").append(o).append(" OfficialUserName:").append(q).append(" OfficialNickName:").append(s).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseResponse = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Uin = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("SessionKey = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("ImgSid = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("ImgBuf = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("Ticket = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("SpareUserName = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("OfficialUserName = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("OfficialNickName = ").append(r).append("   ").toString();
        if(u)
            s10 = (new StringBuilder()).append(s10).append("QQMicroBlogUserName = ").append(t).append("   ").toString();
        if(w)
            s10 = (new StringBuilder()).append(s10).append("PushMailStatus = ").append(v).append("   ").toString();
        if(y)
            s10 = (new StringBuilder()).append(s10).append("SendCardBitFlag = ").append(x).append("   ").toString();
        if(A)
            s10 = (new StringBuilder()).append(s10).append("PushMailSettingTicket = ").append(z).append("   ").toString();
        if(C)
            s10 = (new StringBuilder()).append(s10).append("BuiltinIPList = ").append(B).append("   ").toString();
        if(E)
            s10 = (new StringBuilder()).append(s10).append("FSURL = ").append(D).append("   ").toString();
        if(G)
            s10 = (new StringBuilder()).append(s10).append("NetworkControl = ").append(F).append("   ").toString();
        return (new StringBuilder()).append(s10).append(")").toString();
    }

    private boolean A;
    private BuiltinIPList B;
    private boolean C;
    private String D;
    private boolean E;
    private NetworkControl F;
    private boolean G;
    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private ByteString f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private SKBuiltinBuffer_t j;
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
    private int v;
    private boolean w;
    private int x;
    private boolean y;
    private String z;
}

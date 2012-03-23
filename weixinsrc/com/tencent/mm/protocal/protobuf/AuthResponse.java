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
//            BuiltinIPList, NetworkControl, PluginKeyList

public class AuthResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public AuthResponse()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(5, j) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r);
        if(E)
            i1 += c.a.a.a.a(15, D);
        if(G)
            i1 += c.a.a.a.a(16, F);
        if(I)
            i1 += c.a.a.a.b.a.b(17, H);
        if(K)
            i1 += c.a.a.a.a(18, J);
        if(M)
            i1 += c.a.a.a.a(19, L);
        if(O)
            i1 += c.a.a.a.b.a.b(20, N);
        if(S)
            i1 += c.a.a.a.b.a.b(22, R);
        if(W)
            i1 += c.a.a.a.a(24, V);
        if(Y)
            i1 += c.a.a.a.b.a.b(25, X);
        if(aa)
            i1 += c.a.a.a.a(26, Z);
        if(ac)
            i1 += c.a.a.a.b.a.b(27, ab);
        if(ae)
            i1 += c.a.a.a.b.a.b(28, ad);
        int j1 = 0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(6, l.a()) + c.a.a.a.b(7, n.a()) + c.a.a.a.b(10, t.a()) + c.a.a.a.b(11, v.a()) + c.a.a.a.b(12, x.a()) + c.a.a.a.b(13, z.a());
        if(C)
            j1 += c.a.a.a.b(14, B.a());
        if(Q)
            j1 += c.a.a.a.b(21, P.a());
        if(U)
            j1 += c.a.a.a.b(23, T.a());
        if(ag)
            j1 += c.a.a.a.b(29, af.a());
        return i1 + j1;
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
        a1.a(5, j);
        a1.b(6, l.a());
        l.a(a1);
        a1.b(7, n.a());
        n.a(a1);
        a1.a(8, p);
        a1.a(9, r);
        a1.b(10, t.a());
        t.a(a1);
        a1.b(11, v.a());
        v.a(a1);
        a1.b(12, x.a());
        x.a(a1);
        a1.b(13, z.a());
        z.a(a1);
        if(C)
        {
            a1.b(14, B.a());
            B.a(a1);
        }
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
        {
            a1.b(21, P.a());
            P.a(a1);
        }
        if(S)
            a1.a(22, R);
        if(U)
        {
            a1.b(23, T.a());
            T.a(a1);
        }
        if(W)
            a1.a(24, V);
        if(Y)
            a1.a(25, X);
        if(aa)
            a1.a(26, Z);
        if(ac)
            a1.a(27, ab);
        if(ae)
            a1.a(28, ad);
        if(ag)
        {
            a1.b(29, af.a());
            af.a(a1);
        }
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s || !u || !w || !y || !A)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Uin:").append(e).append(" UserName:").append(g).append(" NickName:").append(i).append(" BindUin:").append(k).append(" BindEmail:").append(m).append(" BindMobile:").append(o).append(" Status:").append(q).append(" SessionKey:").append(s).append(" ImgSid:").append(u).append(" ImgBuf:").append(w).append(" OfficialUserName:").append(y).append(" OfficialNickName:").append(A).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseResponse = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Uin = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("UserName = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("NickName = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("BindUin = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("BindEmail = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("BindMobile = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("Status = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("SessionKey = ").append(r).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("ImgSid = ").append(t).append("   ").toString();
        String s12 = (new StringBuilder()).append(s11).append("ImgBuf = ").append(v).append("   ").toString();
        String s13 = (new StringBuilder()).append(s12).append("OfficialUserName = ").append(x).append("   ").toString();
        String s14 = (new StringBuilder()).append(s13).append("OfficialNickName = ").append(z).append("   ").toString();
        if(C)
            s14 = (new StringBuilder()).append(s14).append("QQMicroBlogUserName = ").append(B).append("   ").toString();
        if(E)
            s14 = (new StringBuilder()).append(s14).append("QQMicroBlogStatus = ").append(D).append("   ").toString();
        if(G)
            s14 = (new StringBuilder()).append(s14).append("NewVersion = ").append(F).append("   ").toString();
        if(I)
            s14 = (new StringBuilder()).append(s14).append("Ticket = ").append(H).append("   ").toString();
        if(K)
            s14 = (new StringBuilder()).append(s14).append("PushMailStatus = ").append(J).append("   ").toString();
        if(M)
            s14 = (new StringBuilder()).append(s14).append("SendCardBitFlag = ").append(L).append("   ").toString();
        if(O)
            s14 = (new StringBuilder()).append(s14).append("PushMailSettingTicket = ").append(N).append("   ").toString();
        if(Q)
            s14 = (new StringBuilder()).append(s14).append("BuiltinIPList = ").append(P).append("   ").toString();
        if(S)
            s14 = (new StringBuilder()).append(s14).append("FSURL = ").append(R).append("   ").toString();
        if(U)
            s14 = (new StringBuilder()).append(s14).append("NetworkControl = ").append(T).append("   ").toString();
        if(W)
            s14 = (new StringBuilder()).append(s14).append("PluginFlag = ").append(V).append("   ").toString();
        if(Y)
            s14 = (new StringBuilder()).append(s14).append("Alias = ").append(X).append("   ").toString();
        if(aa)
            s14 = (new StringBuilder()).append(s14).append("RegType = ").append(Z).append("   ").toString();
        if(ac)
            s14 = (new StringBuilder()).append(s14).append("AuthKey = ").append(ab).append("   ").toString();
        if(ae)
            s14 = (new StringBuilder()).append(s14).append("Sid = ").append(ad).append("   ").toString();
        if(ag)
            s14 = (new StringBuilder()).append(s14).append("PluginKeyList = ").append(af).append("   ").toString();
        return (new StringBuilder()).append(s14).append(")").toString();
    }

    private boolean A;
    private SKBuiltinString_t B;
    private boolean C;
    private int D;
    private boolean E;
    private int F;
    private boolean G;
    private String H;
    private boolean I;
    private int J;
    private boolean K;
    private int L;
    private boolean M;
    private String N;
    private boolean O;
    private BuiltinIPList P;
    private boolean Q;
    private String R;
    private boolean S;
    private NetworkControl T;
    private boolean U;
    private int V;
    private boolean W;
    private String X;
    private boolean Y;
    private int Z;
    private boolean aa;
    private String ab;
    private boolean ac;
    private String ad;
    private boolean ae;
    private PluginKeyList af;
    private boolean ag;
    private BaseResponse b;
    private boolean c;
    private int d;
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
    private int p;
    private boolean q;
    private ByteString r;
    private boolean s;
    private SKBuiltinString_t t;
    private boolean u;
    private SKBuiltinBuffer_t v;
    private boolean w;
    private SKBuiltinString_t x;
    private boolean y;
    private SKBuiltinString_t z;
}

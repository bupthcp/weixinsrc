// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t, DisturbSetting, GmailList

public class ModUserInfo extends BaseProtoBuf
{

    public ModUserInfo()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(4, h) + c.a.a.a.a(7, n) + c.a.a.a.a(8, p);
        if(s)
            i1 += c.a.a.a.b.a.b(9, r);
        if(u)
            i1 += c.a.a.a.a(10, t);
        if(w)
            i1 += c.a.a.a.b.a.b(11, v);
        if(y)
            i1 += c.a.a.a.b.a.b(12, x);
        if(A)
            i1 += c.a.a.a.b.a.b(13, z);
        if(C)
            i1 += c.a.a.a.a(14, B);
        if(G)
            i1 += c.a.a.a.a(16, F);
        if(I)
            i1 += c.a.a.a.a(17, H);
        if(K)
            i1 += c.a.a.a.b.a.b(18, J);
        if(M)
            i1 += c.a.a.a.a(19, L);
        if(O)
            i1 += c.a.a.a.a(20, N);
        if(Q)
            i1 += c.a.a.a.a(21, P);
        if(S)
            i1 += c.a.a.a.a(22, R);
        if(U)
            i1 += c.a.a.a.a(23, T);
        if(W)
            i1 += c.a.a.a.b.a.b(24, V);
        if(Y)
            i1 += c.a.a.a.a(25, X);
        if(ac)
            i1 += c.a.a.a.b.a.b(27, ab);
        if(ae)
            i1 += c.a.a.a.b.a.b(28, ad);
        if(ag)
            i1 += c.a.a.a.a(29, af);
        if(ai)
            i1 += c.a.a.a.a(30, ah);
        if(ak)
            i1 += c.a.a.a.b.a.b(31, aj);
        if(am)
            i1 += c.a.a.a.b.a.b(32, al);
        int j1 = 0 + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(5, j.a()) + c.a.a.a.b(6, l.a());
        if(E)
            j1 += c.a.a.a.b(15, D.a());
        if(aa)
            j1 += c.a.a.a.b(26, Z.a());
        return i1 + j1;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        a1.a(4, h);
        a1.b(5, j.a());
        j.a(a1);
        a1.b(6, l.a());
        l.a(a1);
        a1.a(7, n);
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
        {
            a1.b(15, D.a());
            D.a(a1);
        }
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
        if(S)
            a1.a(22, R);
        if(U)
            a1.a(23, T);
        if(W)
            a1.a(24, V);
        if(Y)
            a1.a(25, X);
        if(aa)
        {
            a1.b(26, Z.a());
            Z.a(a1);
        }
        if(ac)
            a1.a(27, ab);
        if(ae)
            a1.a(28, ad);
        if(ag)
            a1.a(29, af);
        if(ai)
            a1.a(30, ah);
        if(ak)
            a1.a(31, aj);
        if(am)
            a1.a(32, al);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BitFlag:").append(c).append(" UserName:").append(e).append(" NickName:").append(g).append(" BindUin:").append(i).append(" BindEmail:").append(k).append(" BindMobile:").append(m).append(" Status:").append(o).append(" ImgLen:").append(q).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BitFlag = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("UserName = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("NickName = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("BindUin = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("BindEmail = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("BindMobile = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("Status = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("ImgLen = ").append(p).append("   ").toString();
        if(s)
            s9 = (new StringBuilder()).append(s9).append("ImgBuf = ").append(r).append("   ").toString();
        if(u)
            s9 = (new StringBuilder()).append(s9).append("Sex = ").append(t).append("   ").toString();
        if(w)
            s9 = (new StringBuilder()).append(s9).append("Province = ").append(v).append("   ").toString();
        if(y)
            s9 = (new StringBuilder()).append(s9).append("City = ").append(x).append("   ").toString();
        if(A)
            s9 = (new StringBuilder()).append(s9).append("Signature = ").append(z).append("   ").toString();
        if(C)
            s9 = (new StringBuilder()).append(s9).append("PersonalCard = ").append(B).append("   ").toString();
        if(E)
            s9 = (new StringBuilder()).append(s9).append("DisturbSetting = ").append(D).append("   ").toString();
        if(G)
            s9 = (new StringBuilder()).append(s9).append("PluginFlag = ").append(F).append("   ").toString();
        if(I)
            s9 = (new StringBuilder()).append(s9).append("VerifyFlag = ").append(H).append("   ").toString();
        if(K)
            s9 = (new StringBuilder()).append(s9).append("VerifyInfo = ").append(J).append("   ").toString();
        if(M)
            s9 = (new StringBuilder()).append(s9).append("Point = ").append(L).append("   ").toString();
        if(O)
            s9 = (new StringBuilder()).append(s9).append("Experience = ").append(N).append("   ").toString();
        if(Q)
            s9 = (new StringBuilder()).append(s9).append("Level = ").append(P).append("   ").toString();
        if(S)
            s9 = (new StringBuilder()).append(s9).append("LevelLowExp = ").append(R).append("   ").toString();
        if(U)
            s9 = (new StringBuilder()).append(s9).append("LevelHighExp = ").append(T).append("   ").toString();
        if(W)
            s9 = (new StringBuilder()).append(s9).append("Weibo = ").append(V).append("   ").toString();
        if(Y)
            s9 = (new StringBuilder()).append(s9).append("PluginSwitch = ").append(X).append("   ").toString();
        if(aa)
            s9 = (new StringBuilder()).append(s9).append("GmailList = ").append(Z).append("   ").toString();
        if(ac)
            s9 = (new StringBuilder()).append(s9).append("Alias = ").append(ab).append("   ").toString();
        if(ae)
            s9 = (new StringBuilder()).append(s9).append("WeiboNickname = ").append(ad).append("   ").toString();
        if(ag)
            s9 = (new StringBuilder()).append(s9).append("WeiboFlag = ").append(af).append("   ").toString();
        if(ai)
            s9 = (new StringBuilder()).append(s9).append("FaceBookFlag = ").append(ah).append("   ").toString();
        if(ak)
            s9 = (new StringBuilder()).append(s9).append("FBUserID = ").append(aj).append("   ").toString();
        if(am)
            s9 = (new StringBuilder()).append(s9).append("FBUserName = ").append(al).append("   ").toString();
        return (new StringBuilder()).append(s9).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private DisturbSetting D;
    private boolean E;
    private int F;
    private boolean G;
    private int H;
    private boolean I;
    private String J;
    private boolean K;
    private int L;
    private boolean M;
    private int N;
    private boolean O;
    private int P;
    private boolean Q;
    private int R;
    private boolean S;
    private int T;
    private boolean U;
    private String V;
    private boolean W;
    private int X;
    private boolean Y;
    private GmailList Z;
    private boolean aa;
    private String ab;
    private boolean ac;
    private String ad;
    private boolean ae;
    private int af;
    private boolean ag;
    private int ah;
    private boolean ai;
    private long aj;
    private boolean ak;
    private String al;
    private boolean am;
    private int b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private int h;
    private boolean i;
    private SKBuiltinString_t j;
    private boolean k;
    private SKBuiltinString_t l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
    private String r;
    private boolean s;
    private int t;
    private boolean u;
    private String v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

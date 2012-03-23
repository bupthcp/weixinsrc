// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t, SKBuiltinBuffer_t

public class ModContact extends BaseProtoBuf
{

    public ModContact()
    {
        D = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(5, j) + c.a.a.a.a(7, n) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r);
        if(A)
            i1 += c.a.a.a.a(13, z);
        if(C)
            i1 += c.a.a.a.a(14, B);
        if(H)
            i1 += c.a.a.a.a(17, G);
        if(J)
            i1 += c.a.a.a.a(18, I);
        if(L)
            i1 += c.a.a.a.b.a.b(19, K);
        if(N)
            i1 += c.a.a.a.b.a.b(20, M);
        if(P)
            i1 += c.a.a.a.b.a.b(21, O);
        if(R)
            i1 += c.a.a.a.a(22, Q);
        if(T)
            i1 += c.a.a.a.a(23, S);
        if(V)
            i1 += c.a.a.a.a(24, U);
        if(X)
            i1 += c.a.a.a.b.a.b(25, W);
        if(Z)
            i1 += c.a.a.a.a(26, Y);
        if(ab)
            i1 += c.a.a.a.a(27, aa);
        if(ad)
            i1 += c.a.a.a.b.a.b(28, ac);
        if(af)
            i1 += c.a.a.a.b.a.b(29, ae);
        if(ah)
            i1 += c.a.a.a.b.a.b(30, ag);
        if(aj)
            i1 += c.a.a.a.b.a.b(31, ai);
        if(al)
            i1 += c.a.a.a.b.a.b(32, ak);
        if(an)
            i1 += c.a.a.a.a(33, am);
        int j1 = 0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(6, l.a());
        if(u)
            j1 += c.a.a.a.b(10, t.a());
        if(w)
            j1 += c.a.a.a.b(11, v.a());
        if(y)
            j1 += c.a.a.a.b(12, x.a());
        int k1 = j1 + c.a.a.a.a(15, 8, D);
        if(F)
            k1 += c.a.a.a.b(16, E.a());
        return i1 + k1;
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
        a1.a(8, p);
        a1.a(9, r);
        if(u)
        {
            a1.b(10, t.a());
            t.a(a1);
        }
        if(w)
        {
            a1.b(11, v.a());
            v.a(a1);
        }
        if(y)
        {
            a1.b(12, x.a());
            x.a(a1);
        }
        if(A)
            a1.a(13, z);
        if(C)
            a1.a(14, B);
        a1.a(15, 8, D);
        if(F)
        {
            a1.b(16, E.a());
            E.a(a1);
        }
        if(H)
            a1.a(17, G);
        if(J)
            a1.a(18, I);
        if(L)
            a1.a(19, K);
        if(N)
            a1.a(20, M);
        if(P)
            a1.a(21, O);
        if(R)
            a1.a(22, Q);
        if(T)
            a1.a(23, S);
        if(V)
            a1.a(24, U);
        if(X)
            a1.a(25, W);
        if(Z)
            a1.a(26, Y);
        if(ab)
            a1.a(27, aa);
        if(ad)
            a1.a(28, ac);
        if(af)
            a1.a(29, ae);
        if(ah)
            a1.a(30, ag);
        if(aj)
            a1.a(31, ai);
        if(al)
            a1.a(32, ak);
        if(an)
            a1.a(33, am);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  UserName:").append(c).append(" NickName:").append(e).append(" PYInitial:").append(g).append(" QuanPin:").append(i).append(" Sex:").append(k).append(" ImgBuf:").append(m).append(" BitMask:").append(o).append(" BitVal:").append(q).append(" ImgFlag:").append(s).append("").toString());
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
        String s8 = (new StringBuilder()).append(s7).append("BitMask = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("BitVal = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("ImgFlag = ").append(r).append("   ").toString();
        if(u)
            s10 = (new StringBuilder()).append(s10).append("Remark = ").append(t).append("   ").toString();
        if(w)
            s10 = (new StringBuilder()).append(s10).append("RemarkPYInitial = ").append(v).append("   ").toString();
        if(y)
            s10 = (new StringBuilder()).append(s10).append("RemarkQuanPin = ").append(x).append("   ").toString();
        if(A)
            s10 = (new StringBuilder()).append(s10).append("ContactType = ").append(z).append("   ").toString();
        if(C)
            s10 = (new StringBuilder()).append(s10).append("RoomInfoCount = ").append(B).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("RoomInfoList = ").append(D).append("   ").toString();
        if(F)
            s11 = (new StringBuilder()).append(s11).append("DomainList = ").append(E).append("   ").toString();
        if(H)
            s11 = (new StringBuilder()).append(s11).append("ChatRoomNotify = ").append(G).append("   ").toString();
        if(J)
            s11 = (new StringBuilder()).append(s11).append("AddContactScene = ").append(I).append("   ").toString();
        if(L)
            s11 = (new StringBuilder()).append(s11).append("Province = ").append(K).append("   ").toString();
        if(N)
            s11 = (new StringBuilder()).append(s11).append("City = ").append(M).append("   ").toString();
        if(P)
            s11 = (new StringBuilder()).append(s11).append("Signature = ").append(O).append("   ").toString();
        if(R)
            s11 = (new StringBuilder()).append(s11).append("PersonalCard = ").append(Q).append("   ").toString();
        if(T)
            s11 = (new StringBuilder()).append(s11).append("HasWeiXinHdHeadImg = ").append(S).append("   ").toString();
        if(V)
            s11 = (new StringBuilder()).append(s11).append("VerifyFlag = ").append(U).append("   ").toString();
        if(X)
            s11 = (new StringBuilder()).append(s11).append("VerifyInfo = ").append(W).append("   ").toString();
        if(Z)
            s11 = (new StringBuilder()).append(s11).append("Level = ").append(Y).append("   ").toString();
        if(ab)
            s11 = (new StringBuilder()).append(s11).append("Source = ").append(aa).append("   ").toString();
        if(ad)
            s11 = (new StringBuilder()).append(s11).append("Weibo = ").append(ac).append("   ").toString();
        if(af)
            s11 = (new StringBuilder()).append(s11).append("VerifyContent = ").append(ae).append("   ").toString();
        if(ah)
            s11 = (new StringBuilder()).append(s11).append("Alias = ").append(ag).append("   ").toString();
        if(aj)
            s11 = (new StringBuilder()).append(s11).append("ChatRoomOwner = ").append(ai).append("   ").toString();
        if(al)
            s11 = (new StringBuilder()).append(s11).append("WeiboNickname = ").append(ak).append("   ").toString();
        if(an)
            s11 = (new StringBuilder()).append(s11).append("WeiboFlag = ").append(am).append("   ").toString();
        return (new StringBuilder()).append(s11).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private LinkedList D;
    private SKBuiltinString_t E;
    private boolean F;
    private int G;
    private boolean H;
    private int I;
    private boolean J;
    private String K;
    private boolean L;
    private String M;
    private boolean N;
    private String O;
    private boolean P;
    private int Q;
    private boolean R;
    private int S;
    private boolean T;
    private int U;
    private boolean V;
    private String W;
    private boolean X;
    private int Y;
    private boolean Z;
    private int aa;
    private boolean ab;
    private String ac;
    private boolean ad;
    private String ae;
    private boolean af;
    private String ag;
    private boolean ah;
    private String ai;
    private boolean aj;
    private String ak;
    private boolean al;
    private int am;
    private boolean an;
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
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private SKBuiltinString_t t;
    private boolean u;
    private SKBuiltinString_t v;
    private boolean w;
    private SKBuiltinString_t x;
    private boolean y;
    private int z;
}

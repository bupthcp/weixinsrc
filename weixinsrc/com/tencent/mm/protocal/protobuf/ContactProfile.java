// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class ContactProfile extends BaseProtoBuf
{

    public ContactProfile()
    {
        D = new LinkedList();
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
        int j1 = i1 + c.a.a.a.a(5, j) + c.a.a.a.a(7, n) + c.a.a.a.a(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        int k1 = j1 + c.a.a.a.a(10, t);
        if(w)
            k1 += c.a.a.a.b.a.b(11, v);
        if(y)
            k1 += c.a.a.a.b.a.b(12, x);
        int l1 = k1 + c.a.a.a.a(13, z) + c.a.a.a.a(14, B);
        if(F)
            l1 += c.a.a.a.b.a.b(16, E);
        int i2 = l1 + c.a.a.a.a(17, G) + c.a.a.a.a(18, I);
        if(L)
            i2 += c.a.a.a.b.a.b(19, K);
        int j2 = i2 + c.a.a.a.a(20, M) + c.a.a.a.a(21, O);
        if(R)
            j2 += c.a.a.a.b.a.b(22, Q);
        return j2 + (0 + c.a.a.a.b(6, l.a()) + c.a.a.a.a(15, 8, D));
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
        a1.a(5, j);
        a1.b(6, l.a());
        l.a(a1);
        a1.a(7, n);
        a1.a(8, p);
        if(s)
            a1.a(9, r);
        a1.a(10, t);
        if(w)
            a1.a(11, v);
        if(y)
            a1.a(12, x);
        a1.a(13, z);
        a1.a(14, B);
        a1.a(15, 8, D);
        if(F)
            a1.a(16, E);
        a1.a(17, G);
        a1.a(18, I);
        if(L)
            a1.a(19, K);
        a1.a(20, M);
        a1.a(21, O);
        if(R)
            a1.a(22, Q);
    }

    public final byte[] b()
    {
        if(!k || !m || !o || !q || !u || !A || !C || !H || !J || !N || !P)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Sex:").append(k).append(" ImgBuf:").append(m).append(" BitMask:").append(o).append(" BitVal:").append(q).append(" ImgRet:").append(u).append(" ContactType:").append(A).append(" RoomInfoCount:").append(C).append(" ChatRoomNotify:").append(H).append(" AddContactScene:").append(J).append(" ExtUpdateSeq:").append(N).append(" ImgUpdateSeq:").append(P).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("UserName = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("NickName = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("PYInitial = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("QuanPin = ").append(h).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Sex = ").append(j).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ImgBuf = ").append(l).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("BitMask = ").append(n).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("BitVal = ").append(p).append("   ").toString();
        if(s)
            s5 = (new StringBuilder()).append(s5).append("Remark = ").append(r).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("ImgRet = ").append(t).append("   ").toString();
        if(w)
            s6 = (new StringBuilder()).append(s6).append("RemarkPYInitial = ").append(v).append("   ").toString();
        if(y)
            s6 = (new StringBuilder()).append(s6).append("RemarkQuanPin = ").append(x).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("ContactType = ").append(z).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("RoomInfoCount = ").append(B).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("RoomInfoList = ").append(D).append("   ").toString();
        if(F)
            s9 = (new StringBuilder()).append(s9).append("DomainList = ").append(E).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("ChatRoomNotify = ").append(G).append("   ").toString();
        String s11 = (new StringBuilder()).append(s10).append("AddContactScene = ").append(I).append("   ").toString();
        if(L)
            s11 = (new StringBuilder()).append(s11).append("ExtInfo = ").append(K).append("   ").toString();
        String s12 = (new StringBuilder()).append(s11).append("ExtUpdateSeq = ").append(M).append("   ").toString();
        String s13 = (new StringBuilder()).append(s12).append("ImgUpdateSeq = ").append(O).append("   ").toString();
        if(R)
            s13 = (new StringBuilder()).append(s13).append("Alias = ").append(Q).append("   ").toString();
        return (new StringBuilder()).append(s13).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private LinkedList D;
    private String E;
    private boolean F;
    private int G;
    private boolean H;
    private int I;
    private boolean J;
    private String K;
    private boolean L;
    private int M;
    private boolean N;
    private int O;
    private boolean P;
    private String Q;
    private boolean R;
    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private SKBuiltinBuffer_t l;
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
    private int z;
}

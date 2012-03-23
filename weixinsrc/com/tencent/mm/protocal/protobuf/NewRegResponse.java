// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, BuiltinIPList, NetworkControl

public class NewRegResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public NewRegResponse()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        if(o)
            i1 += c.a.a.a.b.a.b(7, n);
        int j1 = i1 + c.a.a.a.a(8, p);
        if(s)
            j1 += c.a.a.a.a(9, r);
        if(u)
            j1 += c.a.a.a.b.a.b(10, t);
        if(y)
            j1 += c.a.a.a.b.a.b(15, x);
        if(A)
            j1 += c.a.a.a.b.a.b(16, z);
        if(C)
            j1 += c.a.a.a.a(17, B);
        if(G)
            j1 += c.a.a.a.a(19, F);
        if(I)
            j1 += c.a.a.a.a(20, H);
        if(K)
            j1 += c.a.a.a.b.a.b(21, J);
        int k1 = 0 + c.a.a.a.b(1, b.a());
        if(w)
            k1 += c.a.a.a.b(14, v.a());
        if(E)
            k1 += c.a.a.a.b(18, D.a());
        return j1 + k1;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        a1.a(8, p);
        if(s)
            a1.a(9, r);
        if(u)
            a1.a(10, t);
        if(w)
        {
            a1.b(14, v.a());
            v.a(a1);
        }
        if(y)
            a1.a(15, x);
        if(A)
            a1.a(16, z);
        if(C)
            a1.a(17, B);
        if(E)
        {
            a1.b(18, D.a());
            D.a(a1);
        }
        if(G)
            a1.a(19, F);
        if(I)
            a1.a(20, H);
        if(K)
            a1.a(21, J);
    }

    public final byte[] b()
    {
        if(!c || !e || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Uin:").append(e).append(" PushMailStatus:").append(q).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseResponse = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Uin = ").append(d).append("   ").toString();
        if(g)
            s3 = (new StringBuilder()).append(s3).append("SessionKey = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("OfficialUserName = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("OfficialNickName = ").append(j).append("   ").toString();
        if(m)
            s3 = (new StringBuilder()).append(s3).append("QQMicroBlogUserName = ").append(l).append("   ").toString();
        if(o)
            s3 = (new StringBuilder()).append(s3).append("BindEmail = ").append(n).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("PushMailStatus = ").append(p).append("   ").toString();
        if(s)
            s4 = (new StringBuilder()).append(s4).append("SendCardBitFlag = ").append(r).append("   ").toString();
        if(u)
            s4 = (new StringBuilder()).append(s4).append("PushMailSettingTicket = ").append(t).append("   ").toString();
        if(w)
            s4 = (new StringBuilder()).append(s4).append("BuiltinIPList = ").append(v).append("   ").toString();
        if(y)
            s4 = (new StringBuilder()).append(s4).append("FSURL = ").append(x).append("   ").toString();
        if(A)
            s4 = (new StringBuilder()).append(s4).append("UserName = ").append(z).append("   ").toString();
        if(C)
            s4 = (new StringBuilder()).append(s4).append("Status = ").append(B).append("   ").toString();
        if(E)
            s4 = (new StringBuilder()).append(s4).append("NetworkControl = ").append(D).append("   ").toString();
        if(G)
            s4 = (new StringBuilder()).append(s4).append("ReturnFlag = ").append(F).append("   ").toString();
        if(I)
            s4 = (new StringBuilder()).append(s4).append("RegType = ").append(H).append("   ").toString();
        if(K)
            s4 = (new StringBuilder()).append(s4).append("AuthKey = ").append(J).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private NetworkControl D;
    private boolean E;
    private int F;
    private boolean G;
    private int H;
    private boolean I;
    private String J;
    private boolean K;
    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private String t;
    private boolean u;
    private BuiltinIPList v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

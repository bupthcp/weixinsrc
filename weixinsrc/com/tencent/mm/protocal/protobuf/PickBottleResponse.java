// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class PickBottleResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public PickBottleResponse()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        return i1 + c.a.a.a.a(7, n) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r) + c.a.a.a.a(10, t) + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
        a1.a(9, r);
        a1.a(10, t);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !o || !q || !s || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" BottleType:").append(e).append(" MsgType:").append(g).append(" UserStatus:").append(o).append(" ThrowCount:").append(q).append(" PickCount:").append(s).append(" Distance:").append(u).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseResponse = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("BottleType = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MsgType = ").append(f).append("   ").toString();
        if(i)
            s4 = (new StringBuilder()).append(s4).append("BottleInfo = ").append(h).append("   ").toString();
        if(k)
            s4 = (new StringBuilder()).append(s4).append("UserInfo = ").append(j).append("   ").toString();
        if(m)
            s4 = (new StringBuilder()).append(s4).append("NickName = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("UserStatus = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("ThrowCount = ").append(p).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("PickCount = ").append(r).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("Distance = ").append(t).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private int t;
    private boolean u;
}

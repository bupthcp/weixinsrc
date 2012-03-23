// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinString_t

public class AuthRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public AuthRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(m)
            i1 = 0 + c.a.a.a.b.a.b(6, l);
        if(o)
            i1 += c.a.a.a.a(7, n);
        if(q)
            i1 += c.a.a.a.b.a.b(8, p);
        if(s)
            i1 += c.a.a.a.b.a.b(9, r);
        if(u)
            i1 += c.a.a.a.b.a.b(10, t);
        if(w)
            i1 += c.a.a.a.b.a.b(11, v);
        if(y)
            i1 += c.a.a.a.b.a.b(12, x);
        if(A)
            i1 += c.a.a.a.a(13, z);
        if(C)
            i1 += c.a.a.a.b.a.b(14, B);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()));
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
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
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
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" UserName:").append(e).append(" Pwd:").append(g).append(" ImgSid:").append(i).append(" ImgCode:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("UserName = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Pwd = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("ImgSid = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("ImgCode = ").append(j).append("   ").toString();
        if(m)
            s6 = (new StringBuilder()).append(s6).append("Pwd2 = ").append(l).append("   ").toString();
        if(o)
            s6 = (new StringBuilder()).append(s6).append("BuiltinIPSeq = ").append(n).append("   ").toString();
        if(q)
            s6 = (new StringBuilder()).append(s6).append("extPwd = ").append(p).append("   ").toString();
        if(s)
            s6 = (new StringBuilder()).append(s6).append("extPwd2 = ").append(r).append("   ").toString();
        if(u)
            s6 = (new StringBuilder()).append(s6).append("TimeZone = ").append(t).append("   ").toString();
        if(w)
            s6 = (new StringBuilder()).append(s6).append("Language = ").append(v).append("   ").toString();
        if(y)
            s6 = (new StringBuilder()).append(s6).append("IMEI = ").append(x).append("   ").toString();
        if(A)
            s6 = (new StringBuilder()).append(s6).append("Channel = ").append(z).append("   ").toString();
        if(C)
            s6 = (new StringBuilder()).append(s6).append("IPhoneVer = ").append(B).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private boolean A;
    private String B;
    private boolean C;
    private BaseRequest b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private SKBuiltinString_t j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
    private String t;
    private boolean u;
    private String v;
    private boolean w;
    private String x;
    private boolean y;
    private int z;
}

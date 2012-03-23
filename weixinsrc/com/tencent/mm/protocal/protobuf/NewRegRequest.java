// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class NewRegRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public NewRegRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        int j1 = i1 + c.a.a.a.a(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        if(o)
            j1 += c.a.a.a.b.a.b(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        if(s)
            j1 += c.a.a.a.a(12, r);
        if(u)
            j1 += c.a.a.a.a(13, t);
        if(w)
            j1 += c.a.a.a.a(14, v);
        if(y)
            j1 += c.a.a.a.b.a.b(15, x);
        if(A)
            j1 += c.a.a.a.b.a.b(16, z);
        return j1 + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(12, r);
        if(u)
            a1.a(13, t);
        if(w)
            a1.a(14, v);
        if(y)
            a1.a(15, x);
        if(A)
            a1.a(16, z);
    }

    public final byte[] b()
    {
        if(!c || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" BindUin:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("UserName = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("Pwd = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("NickName = ").append(h).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("BindUin = ").append(j).append("   ").toString();
        if(m)
            s3 = (new StringBuilder()).append(s3).append("BindEmail = ").append(l).append("   ").toString();
        if(o)
            s3 = (new StringBuilder()).append(s3).append("BindMobile = ").append(n).append("   ").toString();
        if(q)
            s3 = (new StringBuilder()).append(s3).append("Ticket = ").append(p).append("   ").toString();
        if(s)
            s3 = (new StringBuilder()).append(s3).append("BuiltinIPSeq = ").append(r).append("   ").toString();
        if(u)
            s3 = (new StringBuilder()).append(s3).append("DLSrc = ").append(t).append("   ").toString();
        if(w)
            s3 = (new StringBuilder()).append(s3).append("RegMode = ").append(v).append("   ").toString();
        if(y)
            s3 = (new StringBuilder()).append(s3).append("TimeZone = ").append(x).append("   ").toString();
        if(A)
            s3 = (new StringBuilder()).append(s3).append("Language = ").append(z).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private boolean A;
    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private String p;
    private boolean q;
    private int r;
    private boolean s;
    private int t;
    private boolean u;
    private int v;
    private boolean w;
    private String x;
    private boolean y;
    private String z;
}

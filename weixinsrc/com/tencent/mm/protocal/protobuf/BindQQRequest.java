// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class BindQQRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public BindQQRequest()
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
        return i1 + c.a.a.a.a(7, n) + (0 + c.a.a.a.b(1, b.a()));
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
        a1.a(7, n);
    }

    public final byte[] b()
    {
        if(!c || !e || !o)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" QQ:").append(e).append(" OPCode:").append(o).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("QQ = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("Pwd = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("Pwd2 = ").append(h).append("   ").toString();
        if(k)
            s2 = (new StringBuilder()).append(s2).append("ImgSid = ").append(j).append("   ").toString();
        if(m)
            s2 = (new StringBuilder()).append(s2).append("ImgCode = ").append(l).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("OPCode = ").append(n).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseRequest b;
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
    private int n;
    private boolean o;
}

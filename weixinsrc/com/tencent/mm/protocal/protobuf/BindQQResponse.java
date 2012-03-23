// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinBuffer_t

public class BindQQResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public BindQQResponse()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        if(i)
            i1 += c.a.a.a.a(4, h);
        if(k)
            i1 += c.a.a.a.a(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        if(o)
            i1 += c.a.a.a.a(7, n);
        if(q)
            i1 += c.a.a.a.b.a.b(8, p);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
    }

    public final byte[] b()
    {
        if(!c || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" ImgBuf:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("ImgSid = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ImgBuf = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("PushMailStatus = ").append(h).append("   ").toString();
        if(k)
            s2 = (new StringBuilder()).append(s2).append("PrivateMsgStatus = ").append(j).append("   ").toString();
        if(m)
            s2 = (new StringBuilder()).append(s2).append("MicroBlogName = ").append(l).append("   ").toString();
        if(o)
            s2 = (new StringBuilder()).append(s2).append("Status = ").append(n).append("   ").toString();
        if(q)
            s2 = (new StringBuilder()).append(s2).append("QQMailSkey = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private String d;
    private boolean e;
    private SKBuiltinBuffer_t f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private String p;
    private boolean q;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, SKBuiltinBuffer_t, BaseRequest

public class UploadVoiceRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadVoiceRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(c)
            i1 = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i1 += c.a.a.a.b.a.b(2, d);
        int j1 = i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h);
        if(k)
            j1 += c.a.a.a.b.a.b(5, j);
        int k1 = j1 + c.a.a.a.a(6, l) + c.a.a.a.a(7, n) + c.a.a.a.a(9, r);
        if(w)
            k1 += c.a.a.a.a(11, v);
        if(y)
            k1 += c.a.a.a.b.a.b(12, x);
        return k1 + (0 + c.a.a.a.b(8, p.a()) + c.a.a.a.b(10, t.a()));
    }

    public final UploadVoiceRequest a(int i1)
    {
        f = i1;
        g = true;
        return this;
    }

    public final UploadVoiceRequest a(BaseRequest baserequest)
    {
        t = baserequest;
        u = true;
        return this;
    }

    public final UploadVoiceRequest a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        p = skbuiltinbuffer_t;
        q = true;
        return this;
    }

    public final UploadVoiceRequest a(String s1)
    {
        b = s1;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        if(k)
            a1.a(5, j);
        a1.a(6, l);
        a1.a(7, n);
        a1.b(8, p.a());
        p.a(a1);
        a1.a(9, r);
        a1.b(10, t.a());
        t.a(a1);
        if(w)
            a1.a(11, v);
        if(y)
            a1.a(12, x);
    }

    public final UploadVoiceRequest b(int i1)
    {
        h = i1;
        i = true;
        return this;
    }

    public final UploadVoiceRequest b(String s1)
    {
        d = s1;
        e = true;
        return this;
    }

    public final byte[] b()
    {
        if(!g || !i || !m || !o || !q || !s || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Offset:").append(g).append(" Length:").append(i).append(" MsgId:").append(m).append(" VoiceLength:").append(o).append(" Data:").append(q).append(" EndFlag:").append(s).append(" BaseRequest:").append(u).append("").toString());
        else
            return super.b();
    }

    public final UploadVoiceRequest c(int i1)
    {
        l = i1;
        m = true;
        return this;
    }

    public final UploadVoiceRequest c(String s1)
    {
        j = s1;
        k = true;
        return this;
    }

    public final String c()
    {
        return d;
    }

    public final int d()
    {
        return f;
    }

    public final UploadVoiceRequest d(int i1)
    {
        n = i1;
        o = true;
        return this;
    }

    public final int e()
    {
        return l;
    }

    public final UploadVoiceRequest e(int i1)
    {
        r = i1;
        s = true;
        return this;
    }

    public final SKBuiltinBuffer_t f()
    {
        return p;
    }

    public final UploadVoiceRequest f(int i1)
    {
        v = i1;
        w = true;
        return this;
    }

    public final int g()
    {
        return r;
    }

    public final int h()
    {
        return v;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("FromUserName = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("ToUserName = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Offset = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Length = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("ClientMsgId = ").append(j).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MsgId = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("VoiceLength = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Data = ").append(p).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("EndFlag = ").append(r).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("BaseRequest = ").append(t).append("   ").toString();
        if(w)
            s8 = (new StringBuilder()).append(s8).append("CancelFlag = ").append(v).append("   ").toString();
        if(y)
            s8 = (new StringBuilder()).append(s8).append("MsgSource = ").append(x).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private String j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private SKBuiltinBuffer_t p;
    private boolean q;
    private int r;
    private boolean s;
    private BaseRequest t;
    private boolean u;
    private int v;
    private boolean w;
    private String x;
    private boolean y;
}

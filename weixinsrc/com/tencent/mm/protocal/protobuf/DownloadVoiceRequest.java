// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class DownloadVoiceRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public DownloadVoiceRequest()
    {
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(i)
            l += c.a.a.a.b.a.b(4, h);
        return l + (0 + c.a.a.a.b(5, j.a()));
    }

    public final DownloadVoiceRequest a(int l)
    {
        b = l;
        c = true;
        return this;
    }

    public final DownloadVoiceRequest a(BaseRequest baserequest)
    {
        j = baserequest;
        k = true;
        return this;
    }

    public final DownloadVoiceRequest a(String s)
    {
        h = s;
        i = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.b(5, j.a());
        j.a(a1);
    }

    public final DownloadVoiceRequest b(int l)
    {
        d = l;
        e = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  MsgId:").append(c).append(" Offset:").append(e).append(" Length:").append(g).append(" BaseRequest:").append(k).append("").toString());
        else
            return super.b();
    }

    public final int c()
    {
        return b;
    }

    public final DownloadVoiceRequest c(int l)
    {
        f = l;
        g = true;
        return this;
    }

    public final int d()
    {
        return d;
    }

    public final int e()
    {
        return f;
    }

    public final String f()
    {
        return h;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("MsgId = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Offset = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Length = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("ClientMsgId = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("BaseRequest = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private BaseRequest j;
    private boolean k;
}

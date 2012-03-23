// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, VoipRelayData

public class VoipAnswerReq extends BaseProtoBuf
    implements RequestProtoBuf
{

    public VoipAnswerReq()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        return i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(5, j.a()) + c.a.a.a.b(6, l.a()));
    }

    public final VoipAnswerReq a(int i1)
    {
        f = i1;
        g = true;
        return this;
    }

    public final VoipAnswerReq a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final VoipAnswerReq a(VoipRelayData voiprelaydata)
    {
        j = voiprelaydata;
        k = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.b(5, j.a());
        j.a(a1);
        a1.b(6, l.a());
        l.a(a1);
    }

    public final VoipAnswerReq b(VoipRelayData voiprelaydata)
    {
        l = voiprelaydata;
        m = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k || !m)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" RoomId:").append(g).append(" Answer:").append(i).append(" PeerId:").append(k).append(" CapInfo:").append(m).append("").toString());
        else
            return super.b();
    }

    public final VoipAnswerReq c()
    {
        h = 1;
        i = true;
        return this;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("FromUsername = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("RoomId = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Answer = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("PeerId = ").append(j).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("CapInfo = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private VoipRelayData j;
    private boolean k;
    private VoipRelayData l;
    private boolean m;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinBuffer_t, CmdList

public class VoipSyncReq extends BaseProtoBuf
    implements RequestProtoBuf
{

    public VoipSyncReq()
    {
    }

    public final int a()
    {
        int l = 0;
        if(e)
            l = 0 + c.a.a.a.b.a.b(2, d);
        return l + c.a.a.a.a(3, f) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()));
    }

    public final VoipSyncReq a(int l)
    {
        f = l;
        g = true;
        return this;
    }

    public final VoipSyncReq a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final VoipSyncReq a(CmdList cmdlist)
    {
        j = cmdlist;
        k = true;
        return this;
    }

    public final VoipSyncReq a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        h = skbuiltinbuffer_t;
        i = true;
        return this;
    }

    public final VoipSyncReq a(String s)
    {
        d = s;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        a1.b(5, j.a());
        j.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" RoomId:").append(g).append(" KeyBuf:").append(i).append(" OpLog:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("FromUsername = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("RoomId = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("KeyBuf = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("OpLog = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
    private CmdList j;
    private boolean k;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinBuffer_t

public class ShakeGetRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public ShakeGetRequest()
    {
    }

    public final int a()
    {
        int i = 0;
        if(g)
            i = 0 + c.a.a.a.a(3, f);
        return i + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()));
    }

    public final ShakeGetRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final ShakeGetRequest a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        d = skbuiltinbuffer_t;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        if(g)
            a1.a(3, f);
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" Buffer:").append(e).append("").toString());
        else
            return super.b();
    }

    public final ShakeGetRequest c()
    {
        f = 1;
        g = true;
        return this;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Buffer = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("IsNewVerson = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private SKBuiltinBuffer_t d;
    private boolean e;
    private int f;
    private boolean g;
}

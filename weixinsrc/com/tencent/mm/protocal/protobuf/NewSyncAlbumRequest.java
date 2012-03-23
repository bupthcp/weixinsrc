// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinBuffer_t

public class NewSyncAlbumRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public NewSyncAlbumRequest()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()));
    }

    public final NewSyncAlbumRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" Selector:").append(e).append(" KeyBuf:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Selector = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("KeyBuf = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private SKBuiltinBuffer_t f;
    private boolean g;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinString_t

public class InitRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public InitRequest()
    {
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(3, f);
        if(k)
            l += c.a.a.a.b.a.b(5, j);
        return l + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(4, h.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        if(k)
            a1.a(5, j);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" UserName:").append(e).append(" SyncKey:").append(g).append(" Buffer:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("UserName = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("SyncKey = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Buffer = ").append(h).append("   ").toString();
        if(k)
            s4 = (new StringBuilder()).append(s4).append("Language = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private String j;
    private boolean k;
}

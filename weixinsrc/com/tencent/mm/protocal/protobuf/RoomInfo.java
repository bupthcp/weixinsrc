// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class RoomInfo extends BaseProtoBuf
{

    public RoomInfo()
    {
    }

    public final int a()
    {
        return 0 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  UserName:").append(c).append(" NickName:").append(e).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("UserName = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("NickName = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private SKBuiltinString_t b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
}

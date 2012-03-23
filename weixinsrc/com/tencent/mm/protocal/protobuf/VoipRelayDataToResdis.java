// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class VoipRelayDataToResdis extends BaseProtoBuf
{

    public VoipRelayDataToResdis()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Buffer:").append(c).append(" Seq:").append(e).append(" Uin:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Buffer = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Seq = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Uin = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private SKBuiltinBuffer_t b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
}

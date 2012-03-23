// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class ModMsgStatus extends BaseProtoBuf
{

    public ModMsgStatus()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + c.a.a.a.a(4, h) + (0 + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        a1.a(4, h);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  MsgId:").append(c).append(" FromUserName:").append(e).append(" ToUserName:").append(g).append(" Status:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("MsgId = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("FromUserName = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ToUserName = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Status = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private int h;
    private boolean i;
}

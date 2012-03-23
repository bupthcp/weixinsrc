// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class MicroMsgResponse extends BaseProtoBuf
{

    public MicroMsgResponse()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        int j1 = i1 + c.a.a.a.a(6, l);
        if(o)
            j1 += c.a.a.a.a(7, n);
        return j1 + (0 + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        a1.a(4, h);
        if(k)
            a1.a(5, j);
        a1.a(6, l);
        if(o)
            a1.a(7, n);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !m)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Ret:").append(c).append(" FromUserName:").append(e).append(" ToUserName:").append(g).append(" MsgId:").append(i).append(" CreateTime:").append(m).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Ret = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("FromUserName = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ToUserName = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MsgId = ").append(h).append("   ").toString();
        if(k)
            s4 = (new StringBuilder()).append(s4).append("ClientMsgId = ").append(j).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("CreateTime = ").append(l).append("   ").toString();
        if(o)
            s5 = (new StringBuilder()).append(s5).append("Type = ").append(n).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private int h;
    private boolean i;
    private String j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
}

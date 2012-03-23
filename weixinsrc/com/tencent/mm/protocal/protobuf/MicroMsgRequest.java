// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class MicroMsgRequest extends BaseProtoBuf
{

    public MicroMsgRequest()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        int j1 = i1 + c.a.a.a.a(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        if(o)
            j1 += c.a.a.a.b.a.b(7, n);
        if(q)
            j1 += c.a.a.a.a(8, p);
        return j1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  FromUserName:").append(c).append(" ToUserName:").append(e).append(" Type:").append(g).append(" CreateTime:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("FromUserName = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ToUserName = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Type = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("Content = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("CreateTime = ").append(j).append("   ").toString();
        if(m)
            s4 = (new StringBuilder()).append(s4).append("ClientMsgId = ").append(l).append("   ").toString();
        if(o)
            s4 = (new StringBuilder()).append(s4).append("MsgSource = ").append(n).append("   ").toString();
        if(q)
            s4 = (new StringBuilder()).append(s4).append("EmojiFlag = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private SKBuiltinString_t b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private int p;
    private boolean q;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t, SKBuiltinBuffer_t

public class AddMsg extends BaseProtoBuf
{

    public AddMsg()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(4, h) + c.a.a.a.a(6, l) + c.a.a.a.a(7, n) + c.a.a.a.a(9, r);
        if(u)
            i1 += c.a.a.a.b.a.b(10, t);
        return i1 + (0 + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(5, j.a()) + c.a.a.a.b(8, p.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        a1.a(4, h);
        a1.b(5, j.a());
        j.a(a1);
        a1.a(6, l);
        a1.a(7, n);
        a1.b(8, p.a());
        p.a(a1);
        a1.a(9, r);
        if(u)
            a1.a(10, t);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  MsgId:").append(c).append(" FromUserName:").append(e).append(" ToUserName:").append(g).append(" MsgType:").append(i).append(" Content:").append(k).append(" Status:").append(m).append(" ImgStatus:").append(o).append(" ImgBuf:").append(q).append(" CreateTime:").append(s).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("MsgId = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("FromUserName = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ToUserName = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("MsgType = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Content = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("Status = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("ImgStatus = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("ImgBuf = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("CreateTime = ").append(r).append("   ").toString();
        if(u)
            s10 = (new StringBuilder()).append(s10).append("MsgSource = ").append(t).append("   ").toString();
        return (new StringBuilder()).append(s10).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private int h;
    private boolean i;
    private SKBuiltinString_t j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private SKBuiltinBuffer_t p;
    private boolean q;
    private int r;
    private boolean s;
    private String t;
    private boolean u;
}

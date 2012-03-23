// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class EmojiUploadInfoReq extends BaseProtoBuf
{

    public EmojiUploadInfoReq()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(c)
            i1 = 0 + c.a.a.a.b.a.b(1, b);
        int j1 = i1 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        if(o)
            j1 += c.a.a.a.b.a.b(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        return j1 + (0 + c.a.a.a.b(4, h.a()));
    }

    public final EmojiUploadInfoReq a(int i1)
    {
        d = i1;
        e = true;
        return this;
    }

    public final EmojiUploadInfoReq a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        h = skbuiltinbuffer_t;
        i = true;
        return this;
    }

    public final EmojiUploadInfoReq a(String s1)
    {
        b = s1;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
    }

    public final EmojiUploadInfoReq b(int i1)
    {
        f = i1;
        g = true;
        return this;
    }

    public final EmojiUploadInfoReq b(String s1)
    {
        l = s1;
        m = true;
        return this;
    }

    public final byte[] b()
    {
        if(!e || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  StartPos:").append(e).append(" TotalLen:").append(g).append(" EmojiBuffer:").append(i).append(" Type:").append(k).append("").toString());
        else
            return super.b();
    }

    public final EmojiUploadInfoReq c(int i1)
    {
        j = i1;
        k = true;
        return this;
    }

    public final EmojiUploadInfoReq c(String s1)
    {
        n = s1;
        o = true;
        return this;
    }

    public final String c()
    {
        return b;
    }

    public final EmojiUploadInfoReq d(String s1)
    {
        p = s1;
        q = true;
        return this;
    }

    public final EmojiUploadInfoReq e(String s1)
    {
        r = s1;
        s = true;
        return this;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("MD5 = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("EmojiBuffer = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Type = ").append(j).append("   ").toString();
        if(m)
            s5 = (new StringBuilder()).append(s5).append("ToUserName = ").append(l).append("   ").toString();
        if(o)
            s5 = (new StringBuilder()).append(s5).append("ExternXML = ").append(n).append("   ").toString();
        if(q)
            s5 = (new StringBuilder()).append(s5).append("Report = ").append(p).append("   ").toString();
        if(s)
            s5 = (new StringBuilder()).append(s5).append("ClientMsgID = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
}

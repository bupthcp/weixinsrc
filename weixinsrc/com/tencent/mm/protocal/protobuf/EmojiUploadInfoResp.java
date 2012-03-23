// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class EmojiUploadInfoResp extends BaseProtoBuf
{

    public EmojiUploadInfoResp()
    {
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(i)
            l += c.a.a.a.b.a.b(4, h);
        return 0 + (l + c.a.a.a.a(5, j));
    }

    public final EmojiUploadInfoResp a(int l)
    {
        b = l;
        c = true;
        return this;
    }

    public final EmojiUploadInfoResp a(String s)
    {
        h = s;
        i = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
    }

    public final EmojiUploadInfoResp b(int l)
    {
        d = l;
        e = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Ret:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" MsgID:").append(k).append("").toString());
        else
            return super.b();
    }

    public final int c()
    {
        return d;
    }

    public final EmojiUploadInfoResp c(int l)
    {
        f = l;
        g = true;
        return this;
    }

    public final int d()
    {
        return f;
    }

    public final EmojiUploadInfoResp d(int l)
    {
        j = l;
        k = true;
        return this;
    }

    public final String e()
    {
        return h;
    }

    public final boolean f()
    {
        return i;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Ret = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("MD5 = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MsgID = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
}

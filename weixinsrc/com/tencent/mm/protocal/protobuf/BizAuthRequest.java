// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class BizAuthRequest extends BaseProtoBuf
{

    public BizAuthRequest()
    {
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(1, b);
        if(e)
            l += c.a.a.a.b.a.b(2, d);
        if(g)
            l += c.a.a.a.b.a.b(3, f);
        if(i)
            l += c.a.a.a.b.a.b(4, h);
        if(k)
            l += c.a.a.a.b.a.b(5, j);
        return l + 0;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
    }

    public final byte[] b()
    {
        if(!c)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  QQUin:").append(c).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("QQUin = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("Pwd = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("Pwd2 = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("ImgSid = ").append(h).append("   ").toString();
        if(k)
            s1 = (new StringBuilder()).append(s1).append("ImgCode = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s1).append(")").toString();
    }

    private int b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
}

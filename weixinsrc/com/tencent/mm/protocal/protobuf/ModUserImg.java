// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class ModUserImg extends BaseProtoBuf
{

    public ModUserImg()
    {
    }

    public final int a()
    {
        int j = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d);
        if(g)
            j += c.a.a.a.b.a.b(3, f);
        if(i)
            j += c.a.a.a.b.a.b(4, h);
        return j + 0;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  ImgType:").append(c).append(" ImgLen:").append(e).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("ImgType = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ImgLen = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("ImgBuf = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("ImgMd5 = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
}

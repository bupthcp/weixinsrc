// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class QQGroup extends BaseProtoBuf
{

    public QQGroup()
    {
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(1, b);
        if(e)
            l += c.a.a.a.b.a.b(2, d);
        if(g)
            l += c.a.a.a.b.a.b(3, f);
        return 0 + (l + c.a.a.a.a(4, h) + c.a.a.a.a(5, j));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
    }

    public final byte[] b()
    {
        if(!c || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  GroupID:").append(c).append(" MemberNum:").append(i).append(" WeixinNum:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("GroupID = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("GroupName = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("MD5 = ").append(f).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("MemberNum = ").append(h).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("WeixinNum = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private int b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private boolean k;
}

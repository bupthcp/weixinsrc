// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class NewInviteFriend extends BaseProtoBuf
{

    public NewInviteFriend()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b);
        if(e)
            i1 += c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        int j1 = i1 + c.a.a.a.a(6, l) + c.a.a.a.a(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        return j1 + 0;
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
        a1.a(6, l);
        a1.a(7, n);
        if(q)
            a1.a(8, p);
    }

    public final byte[] b()
    {
        if(!c || !m || !o)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Uin:").append(c).append(" FriendType:").append(m).append(" GroupId:").append(o).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Uin = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("NickName = ").append(d).append("   ").toString();
        if(g)
            s1 = (new StringBuilder()).append(s1).append("Email = ").append(f).append("   ").toString();
        if(i)
            s1 = (new StringBuilder()).append(s1).append("Remark = ").append(h).append("   ").toString();
        if(k)
            s1 = (new StringBuilder()).append(s1).append("UserName = ").append(j).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("FriendType = ").append(l).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("GroupId = ").append(n).append("   ").toString();
        if(q)
            s3 = (new StringBuilder()).append(s3).append("ImgIdx = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
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
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private String p;
    private boolean q;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class InviteFriend extends BaseProtoBuf
{

    public InviteFriend()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.a(6, l);
        return i1 + (0 + c.a.a.a.b(2, d.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Uin:").append(c).append(" NickName:").append(e).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Uin = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("NickName = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("Email = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("Remark = ").append(h).append("   ").toString();
        if(k)
            s2 = (new StringBuilder()).append(s2).append("UserName = ").append(j).append("   ").toString();
        if(m)
            s2 = (new StringBuilder()).append(s2).append("FriendType = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private int l;
    private boolean m;
}

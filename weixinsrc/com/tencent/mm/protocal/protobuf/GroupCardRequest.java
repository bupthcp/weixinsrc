// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class GroupCardRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public GroupCardRequest()
    {
        j = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        int j1 = i1 + c.a.a.a.a(4, h);
        if(l)
            j1 += c.a.a.a.b.a.b(6, k);
        return j1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(5, 8, j));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
        a1.a(4, h);
        a1.a(5, 8, j);
        if(l)
            a1.a(6, k);
    }

    public final byte[] b()
    {
        if(!c || !e || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" OpCode:").append(e).append(" MemberCount:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("OpCode = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("GroupNickName = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("MemberCount = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MemberList = ").append(j).append("   ").toString();
        if(l)
            s4 = (new StringBuilder()).append(s4).append("GroupUserName = ").append(k).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
    private LinkedList j;
    private String k;
    private boolean l;
}

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

public class VerifyUserRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public VerifyUserRequest()
    {
        h = new LinkedList();
        m = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(j)
            i1 += c.a.a.a.b.a.b(5, i);
        if(l)
            i1 += c.a.a.a.a(6, k);
        return i1 + c.a.a.a.a(7, 2, m) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(4, 8, h));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, 8, h);
        if(j)
            a1.a(5, i);
        if(l)
            a1.a(6, k);
        a1.a(7, 2, m);
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" Opcode:").append(e).append(" VerifyUserListSize:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Opcode = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("VerifyUserListSize = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("VerifyUserList = ").append(h).append("   ").toString();
        if(j)
            s4 = (new StringBuilder()).append(s4).append("VerifyContent = ").append(i).append("   ").toString();
        if(l)
            s4 = (new StringBuilder()).append(s4).append("SceneListCount = ").append(k).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("SceneList = ").append(m).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private LinkedList h;
    private String i;
    private boolean j;
    private int k;
    private boolean l;
    private LinkedList m;
}

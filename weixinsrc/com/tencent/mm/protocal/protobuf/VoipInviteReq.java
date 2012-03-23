// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, VoipRelayData

public class VoipInviteReq extends BaseProtoBuf
    implements RequestProtoBuf
{

    public VoipInviteReq()
    {
        h = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        return i1 + c.a.a.a.a(3, f) + c.a.a.a.a(5, i) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(4, 8, h) + c.a.a.a.b(6, k.a()) + c.a.a.a.b(7, m.a()));
    }

    public final VoipInviteReq a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.a(4, 8, h);
        a1.a(5, i);
        a1.b(6, k.a());
        k.a(a1);
        a1.b(7, m.a());
        m.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !g || !j || !l || !n)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" InviteUserCount:").append(g).append(" Type:").append(j).append(" PeerId:").append(l).append(" CapInfo:").append(n).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("FromUsername = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("InviteUserCount = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ToUsernameList = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Type = ").append(i).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("PeerId = ").append(k).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("CapInfo = ").append(m).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private LinkedList h;
    private int i;
    private boolean j;
    private VoipRelayData k;
    private boolean l;
    private VoipRelayData m;
    private boolean n;
}

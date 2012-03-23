// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class SyncResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public SyncResponse()
    {
        j = new LinkedList();
        m = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(6, k);
        if(o)
            i1 += c.a.a.a.b.a.b(8, n);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(5, 8, j) + c.a.a.a.a(7, 8, m));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, 8, j);
        a1.a(6, k);
        a1.a(7, 8, m);
        if(o)
            a1.a(8, n);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !l)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" NewSyncKey:").append(e).append(" ContinueFlag:").append(g).append(" CmdCount:").append(i).append(" OOBCount:").append(l).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("NewSyncKey = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ContinueFlag = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("CmdCount = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("CmdList = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("OOBCount = ").append(k).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("OOBList = ").append(m).append("   ").toString();
        if(o)
            s7 = (new StringBuilder()).append(s7).append("KeyBuf = ").append(n).append("   ").toString();
        return (new StringBuilder()).append(s7).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private LinkedList j;
    private int k;
    private boolean l;
    private LinkedList m;
    private String n;
    private boolean o;
}

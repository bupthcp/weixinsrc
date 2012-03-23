// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinString_t, CmdList

public class SyncRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public SyncRequest()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j);
        if(o)
            i1 += c.a.a.a.b.a.b(7, n);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(6, l.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
        a1.b(6, l.a());
        l.a(a1);
        if(o)
            a1.a(7, n);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" UserName:").append(e).append(" SyncKey:").append(g).append(" Scene:").append(i).append(" Option:").append(k).append(" Oplog:").append(m).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("UserName = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("SyncKey = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Scene = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Option = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Oplog = ").append(l).append("   ").toString();
        if(o)
            s6 = (new StringBuilder()).append(s6).append("KeyBuf = ").append(n).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private boolean k;
    private CmdList l;
    private boolean m;
    private String n;
    private boolean o;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class LbsRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public LbsRequest()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + (4 + c.a.a.a.b.a.a(3)) + (4 + c.a.a.a.b.a.a(4)) + c.a.a.a.a(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        if(o)
            i1 += c.a.a.a.b.a.b(7, n);
        if(q)
            i1 += c.a.a.a.a(8, p);
        return i1 + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" OpCode:").append(e).append(" Longitude:").append(g).append(" Latitude:").append(i).append(" Precision:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("OpCode = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Longitude = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Latitude = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Precision = ").append(j).append("   ").toString();
        if(m)
            s5 = (new StringBuilder()).append(s5).append("MacAddr = ").append(l).append("   ").toString();
        if(o)
            s5 = (new StringBuilder()).append(s5).append("CellId = ").append(n).append("   ").toString();
        if(q)
            s5 = (new StringBuilder()).append(s5).append("GPSSource = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private float f;
    private boolean g;
    private float h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private int p;
    private boolean q;
}

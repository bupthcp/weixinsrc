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

public class ThrowBottleResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public ThrowBottleResponse()
    {
        n = new LinkedList();
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j) + c.a.a.a.a(6, l) + c.a.a.a.a(8, o) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(7, 8, n));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
        a1.a(6, l);
        a1.a(7, 8, n);
        a1.a(8, o);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !p)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" ThrowCount:").append(i).append(" PickCount:").append(k).append(" BottleListCount:").append(m).append(" Distance:").append(p).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ThrowCount = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("PickCount = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("BottleListCount = ").append(l).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("BottleList = ").append(n).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("Distance = ").append(o).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
    private LinkedList n;
    private int o;
    private boolean p;
}

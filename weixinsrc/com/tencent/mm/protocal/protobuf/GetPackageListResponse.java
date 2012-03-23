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

public class GetPackageListResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public GetPackageListResponse()
    {
        f = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(4, g) + c.a.a.a.a(5, i);
        if(l)
            i1 += c.a.a.a.a(6, k);
        return i1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
        a1.a(4, g);
        a1.a(5, i);
        if(l)
            a1.a(6, k);
    }

    public final byte[] b()
    {
        if(!c || !e || !h || !j)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Count:").append(e).append(" ContinueFlag:").append(h).append(" SvrCount:").append(j).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Count = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("List = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ContinueFlag = ").append(g).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("SvrCount = ").append(i).append("   ").toString();
        if(l)
            s5 = (new StringBuilder()).append(s5).append("Type = ").append(k).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private int g;
    private boolean h;
    private int i;
    private boolean j;
    private int k;
    private boolean l;
}

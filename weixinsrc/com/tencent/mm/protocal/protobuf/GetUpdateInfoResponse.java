// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class GetUpdateInfoResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public GetUpdateInfoResponse()
    {
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(2, d);
        if(g)
            l += c.a.a.a.b.a.b(3, f);
        int i1 = l + c.a.a.a.a(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        return i1 + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
        a1.a(4, h);
        if(k)
            a1.a(5, j);
    }

    public final byte[] b()
    {
        if(!c || !e || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" PackVersion:").append(e).append(" PackSize:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("PackVersion = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("PackMd5 = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("PackSize = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("PackDescription = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private String f;
    private boolean g;
    private int h;
    private boolean i;
    private String j;
    private boolean k;
}

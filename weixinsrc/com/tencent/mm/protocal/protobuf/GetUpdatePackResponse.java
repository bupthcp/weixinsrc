// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinBuffer_t

public class GetUpdatePackResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public GetUpdatePackResponse()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(5, j.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.b(5, j.a());
        j.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" TotalLen:").append(e).append(" StartPos:").append(g).append(" DataLen:").append(i).append(" Data:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("TotalLen = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("StartPos = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("DataLen = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Data = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private SKBuiltinBuffer_t j;
    private boolean k;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class UploadHDHeadImgResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadHDHeadImgResponse()
    {
    }

    public final int a()
    {
        int j = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(i)
            j += c.a.a.a.b.a.b(4, h);
        return j + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" TotalLen:").append(e).append(" StartPos:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("TotalLen = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("StartPos = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("FinalImgMd5sum = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
}

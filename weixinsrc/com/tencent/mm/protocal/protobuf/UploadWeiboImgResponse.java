// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class UploadWeiboImgResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadWeiboImgResponse()
    {
    }

    public final int a()
    {
        int l = 0;
        if(e)
            l = 0 + c.a.a.a.b.a.b(2, d);
        return l + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j) + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" TotalLen:").append(g).append(" StartPos:").append(i).append(" DataLen:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("ClientImgId = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("TotalLen = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("StartPos = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("DataLen = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private boolean k;
}

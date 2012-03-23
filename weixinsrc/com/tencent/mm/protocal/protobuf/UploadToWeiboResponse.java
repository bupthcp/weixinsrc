// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class UploadToWeiboResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadToWeiboResponse()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        return i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j) + c.a.a.a.a(6, l) + (0 + c.a.a.a.b(1, b.a()));
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
        a1.a(6, l);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k || !m)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Type:").append(g).append(" TotalLen:").append(i).append(" StartPos:").append(k).append(" DataLen:").append(m).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("ClientMsgId = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Type = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("StartPos = ").append(j).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("DataLen = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
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
    private int l;
    private boolean m;
}

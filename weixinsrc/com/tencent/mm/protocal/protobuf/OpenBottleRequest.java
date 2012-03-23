// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, ContentInfo

public class OpenBottleRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public OpenBottleRequest()
    {
    }

    public final int a()
    {
        int l = 0;
        if(e)
            l = 0 + c.a.a.a.b.a.b(2, d);
        return l + c.a.a.a.a(5, j) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        a1.b(4, h.a());
        h.a(a1);
        a1.a(5, j);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" BigContentInfo:").append(g).append(" SmallContentInfo:").append(i).append(" MsgType:").append(k).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("BottleInfo = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("BigContentInfo = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("SmallContentInfo = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MsgType = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private ContentInfo f;
    private boolean g;
    private ContentInfo h;
    private boolean i;
    private int j;
    private boolean k;
}

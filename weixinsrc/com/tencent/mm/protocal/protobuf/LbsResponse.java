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

public class LbsResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public LbsResponse()
    {
        f = new LinkedList();
    }

    public final int a()
    {
        int k = 0 + c.a.a.a.a(2, d);
        if(h)
            k += c.a.a.a.a(4, g);
        if(j)
            k += c.a.a.a.a(5, i);
        return k + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
        if(h)
            a1.a(4, g);
        if(j)
            a1.a(5, i);
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" ContactCount:").append(e).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ContactCount = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ContactList = ").append(f).append("   ").toString();
        if(h)
            s3 = (new StringBuilder()).append(s3).append("State = ").append(g).append("   ").toString();
        if(j)
            s3 = (new StringBuilder()).append(s3).append("FlushTime = ").append(i).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
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
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class UploadToWeiboRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadToWeiboRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        int j1 = i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j) + c.a.a.a.a(6, l);
        if(o)
            j1 += c.a.a.a.b.a.b(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        return j1 + c.a.a.a.a(9, r) + (0 + c.a.a.a.b(1, b.a()));
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
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
        a1.a(9, r);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k || !m || !s)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" Type:").append(g).append(" TotalLen:").append(i).append(" StartPos:").append(k).append(" DataLen:").append(m).append(" FilterType:").append(s).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("ClientMsgId = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Type = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("TotalLen = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("StartPos = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("DataLen = ").append(l).append("   ").toString();
        if(o)
            s6 = (new StringBuilder()).append(s6).append("Data = ").append(n).append("   ").toString();
        if(q)
            s6 = (new StringBuilder()).append(s6).append("Content = ").append(p).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("FilterType = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s7).append(")").toString();
    }

    private BaseRequest b;
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
    private String n;
    private boolean o;
    private String p;
    private boolean q;
    private int r;
    private boolean s;
}

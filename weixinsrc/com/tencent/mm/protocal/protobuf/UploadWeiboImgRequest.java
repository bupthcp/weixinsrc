// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class UploadWeiboImgRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadWeiboImgRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        int j1 = i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        if(o)
            j1 += c.a.a.a.b.a.b(7, n);
        int k1 = j1 + c.a.a.a.a(8, p);
        if(s)
            k1 += c.a.a.a.a(9, r);
        return k1 + (0 + c.a.a.a.b(1, b.a()));
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
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        a1.a(8, p);
        if(s)
            a1.a(9, r);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !k || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" TotalLen:").append(g).append(" StartPos:").append(i).append(" DataLen:").append(k).append(" FilterType:").append(q).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("ClientImgId = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("StartPos = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("DataLen = ").append(j).append("   ").toString();
        if(m)
            s5 = (new StringBuilder()).append(s5).append("Data = ").append(l).append("   ").toString();
        if(o)
            s5 = (new StringBuilder()).append(s5).append("Content = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("FilterType = ").append(p).append("   ").toString();
        if(s)
            s6 = (new StringBuilder()).append(s6).append("Flag = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
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
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
}

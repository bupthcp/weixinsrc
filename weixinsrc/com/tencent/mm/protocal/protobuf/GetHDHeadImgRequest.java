// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class GetHDHeadImgRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public GetHDHeadImgRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        int j1 = i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h);
        if(k)
            j1 += c.a.a.a.b.a.b(5, j);
        return j1 + c.a.a.a.a(6, l) + c.a.a.a.a(7, n) + c.a.a.a.a(8, p) + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        if(k)
            a1.a(5, j);
        a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
    }

    public final byte[] b()
    {
        if(!c || !g || !i || !m || !o || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" ImgWidth:").append(g).append(" ImgHeight:").append(i).append(" TotalLen:").append(m).append(" StartPos:").append(o).append(" HeadImgType:").append(q).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("UserName = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ImgWidth = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ImgHeight = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("ImgFormat = ").append(j).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("TotalLen = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("StartPos = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("HeadImgType = ").append(p).append("   ").toString();
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
    private String j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinString_t

public class UploadMsgImgResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadMsgImgResponse()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(6, l) + c.a.a.a.a(7, n) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        a1.b(4, h.a());
        h.a(a1);
        a1.b(5, j.a());
        j.a(a1);
        a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
        a1.a(9, r);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !m || !o || !q || !s)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" MsgId:").append(e).append(" ClientImgId:").append(g).append(" FromUserName:").append(i).append(" ToUserName:").append(k).append(" TotalLen:").append(m).append(" StartPos:").append(o).append(" DataLen:").append(q).append(" CreateTime:").append(s).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseResponse = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("MsgId = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ClientImgId = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("FromUserName = ").append(h).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("ToUserName = ").append(j).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("TotalLen = ").append(l).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("StartPos = ").append(n).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("DataLen = ").append(p).append("   ").toString();
        String s10 = (new StringBuilder()).append(s9).append("CreateTime = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s10).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private SKBuiltinString_t j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
}

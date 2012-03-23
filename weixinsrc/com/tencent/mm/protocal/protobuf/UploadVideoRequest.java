// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinBuffer_t

public class UploadVideoRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadVideoRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        int j1 = i1 + c.a.a.a.a(5, j) + c.a.a.a.a(6, l) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r) + c.a.a.a.a(11, v);
        if(y)
            j1 += c.a.a.a.a(12, x);
        if(A)
            j1 += c.a.a.a.a(13, z);
        if(C)
            j1 += c.a.a.a.a(14, B);
        if(E)
            j1 += c.a.a.a.b.a.b(15, D);
        return j1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(7, n.a()) + c.a.a.a.b(10, t.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        a1.a(6, l);
        a1.b(7, n.a());
        n.a(a1);
        a1.a(8, p);
        a1.a(9, r);
        a1.b(10, t.a());
        t.a(a1);
        a1.a(11, v);
        if(y)
            a1.a(12, x);
        if(A)
            a1.a(13, z);
        if(C)
            a1.a(14, B);
        if(E)
            a1.a(15, D);
    }

    public final byte[] b()
    {
        if(!c || !k || !m || !o || !q || !s || !u || !w)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" ThumbTotalLen:").append(k).append(" ThumbStartPos:").append(m).append(" ThumbData:").append(o).append(" VideoTotalLen:").append(q).append(" VideoStartPos:").append(s).append(" VideoData:").append(u).append(" PlayLength:").append(w).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("ClientMsgId = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("FromUserName = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("ToUserName = ").append(h).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ThumbTotalLen = ").append(j).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ThumbStartPos = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("ThumbData = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("VideoTotalLen = ").append(p).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("VideoStartPos = ").append(r).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("VideoData = ").append(t).append("   ").toString();
        String s9 = (new StringBuilder()).append(s8).append("PlayLength = ").append(v).append("   ").toString();
        if(y)
            s9 = (new StringBuilder()).append(s9).append("NetworkEnv = ").append(x).append("   ").toString();
        if(A)
            s9 = (new StringBuilder()).append(s9).append("CameraType = ").append(z).append("   ").toString();
        if(C)
            s9 = (new StringBuilder()).append(s9).append("FuncFlag = ").append(B).append("   ").toString();
        if(E)
            s9 = (new StringBuilder()).append(s9).append("MsgSource = ").append(D).append("   ").toString();
        return (new StringBuilder()).append(s9).append(")").toString();
    }

    private boolean A;
    private int B;
    private boolean C;
    private String D;
    private boolean E;
    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
    private SKBuiltinBuffer_t n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private SKBuiltinBuffer_t t;
    private boolean u;
    private int v;
    private boolean w;
    private int x;
    private boolean y;
    private int z;
}

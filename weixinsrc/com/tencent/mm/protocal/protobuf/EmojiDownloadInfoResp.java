// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class EmojiDownloadInfoResp extends BaseProtoBuf
{

    public EmojiDownloadInfoResp()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        return i1 + (0 + c.a.a.a.b(4, h.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Ret:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" EmojiBuffer:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Ret = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("EmojiBuffer = ").append(h).append("   ").toString();
        if(k)
            s4 = (new StringBuilder()).append(s4).append("MD5 = ").append(j).append("   ").toString();
        if(m)
            s4 = (new StringBuilder()).append(s4).append("ID = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
}

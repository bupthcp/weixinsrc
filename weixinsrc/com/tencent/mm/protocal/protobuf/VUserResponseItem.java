// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class VUserResponseItem extends BaseProtoBuf
{

    public VUserResponseItem()
    {
    }

    public final int a()
    {
        int j = 0 + c.a.a.a.a(1, b);
        if(e)
            j += c.a.a.a.b.a.b(2, d);
        return j + (0 + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        a1.b(4, h.a());
        h.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  ID:").append(c).append(" Icon:").append(g).append(" HDIcon:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("ID = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("Desc = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Icon = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("HDIcon = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private int b;
    private boolean c;
    private String d;
    private boolean e;
    private SKBuiltinBuffer_t f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
}

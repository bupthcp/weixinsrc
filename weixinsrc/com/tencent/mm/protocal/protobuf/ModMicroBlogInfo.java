// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class ModMicroBlogInfo extends BaseProtoBuf
{

    public ModMicroBlogInfo()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  UserName:").append(c).append(" MicroBlogType:").append(e).append(" NotifyStatus:").append(g).append(" DeleteFlag:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("UserName = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("MicroBlogType = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("NotifyStatus = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("DeleteFlag = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private SKBuiltinString_t b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
}

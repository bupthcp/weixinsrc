// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            DisturbTimeSpan

public class DisturbSetting extends BaseProtoBuf
{

    public DisturbSetting()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + c.a.a.a.a(3, f) + (0 + c.a.a.a.b(2, d.a()) + c.a.a.a.b(4, h.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  NightSetting:").append(c).append(" NightTime:").append(e).append(" AllDaySetting:").append(g).append(" AllDayTime:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("NightSetting = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("NightTime = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("AllDaySetting = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("AllDayTime = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private int b;
    private boolean c;
    private DisturbTimeSpan d;
    private boolean e;
    private int f;
    private boolean g;
    private DisturbTimeSpan h;
    private boolean i;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class LikeUserInfo extends BaseProtoBuf
{

    public LikeUserInfo()
    {
    }

    protected static boolean a(a a1, LikeUserInfo likeuserinfo, int i)
    {
        boolean flag = true;
        i;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 28
    //                   2 44;
           goto _L1 _L2 _L3
_L1:
        flag = false;
_L5:
        return flag;
_L2:
        likeuserinfo.b = a1.b();
        likeuserinfo.c = flag;
        continue; /* Loop/switch isn't completed */
_L3:
        likeuserinfo.d = a1.a();
        likeuserinfo.e = flag;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final int a()
    {
        int i = 0;
        if(c)
            i = 0 + c.a.a.a.b.a.b(1, b);
        return 0 + (i + c.a.a.a.a(2, d));
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        a1.a(2, d);
    }

    public final byte[] b()
    {
        if(!e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Source:").append(e).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("Username = ").append(b).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("Source = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s1).append(")").toString();
    }

    private String b;
    private boolean c;
    private int d;
    private boolean e;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class VoipStatusItem extends BaseProtoBuf
{

    public VoipStatusItem()
    {
    }

    public static VoipStatusItem a(byte abyte0[])
    {
        a a1;
        int i;
        VoipStatusItem voipstatusitem;
        a1 = new a(abyte0, a);
        i = a(a1);
        voipstatusitem = new VoipStatusItem();
_L2:
        boolean flag;
        if(i <= 0)
            break MISSING_BLOCK_LABEL_110;
        switch(i)
        {
        default:
            flag = false;
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_91;
        }
_L3:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L2; else goto _L1
_L1:
        voipstatusitem.b = a1.b();
        voipstatusitem.c = true;
        flag = true;
          goto _L3
        voipstatusitem.d = a1.a();
        voipstatusitem.e = true;
        flag = true;
          goto _L3
        return voipstatusitem.d();
    }

    private VoipStatusItem d()
    {
        if(!e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Status:").append(e).append("").toString());
        else
            return this;
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
        d();
        return super.b();
    }

    public final int c()
    {
        return d;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("Username = ").append(b).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("Status = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s1).append(")").toString();
    }

    private String b;
    private boolean c;
    private int d;
    private boolean e;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class VoipRelayData extends BaseProtoBuf
{

    public VoipRelayData()
    {
    }

    public static VoipRelayData a(byte abyte0[])
    {
        a a1;
        int i;
        VoipRelayData voiprelaydata;
        a1 = new a(abyte0, a);
        i = a(a1);
        voiprelaydata = new VoipRelayData();
_L2:
        boolean flag;
        if(i <= 0)
            break MISSING_BLOCK_LABEL_186;
        switch(i)
        {
        default:
            flag = false;
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_87;
        }
_L3:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L2; else goto _L1
_L1:
        voiprelaydata.a(a1.a());
        flag = true;
          goto _L3
        LinkedList linkedlist = a1.a(2);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a2, skbuiltinbuffer_t, a(a2)));
            voiprelaydata.a(skbuiltinbuffer_t);
        }

        flag = true;
          goto _L3
        return voiprelaydata.e();
    }

    private VoipRelayData e()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Type:").append(c).append(" Buffer:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + (0 + c.a.a.a.b(2, d.a()));
    }

    public final VoipRelayData a(int i)
    {
        b = i;
        c = true;
        return this;
    }

    public final VoipRelayData a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        d = skbuiltinbuffer_t;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
    }

    public final byte[] b()
    {
        e();
        return super.b();
    }

    public final int c()
    {
        return b;
    }

    public final SKBuiltinBuffer_t d()
    {
        return d;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Type = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Buffer = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinBuffer_t d;
    private boolean e;
}

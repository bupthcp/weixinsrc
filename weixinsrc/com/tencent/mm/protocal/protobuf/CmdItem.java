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

public class CmdItem extends BaseProtoBuf
{

    public CmdItem()
    {
    }

    protected static boolean a(a a1, CmdItem cmditem, int i)
    {
        boolean flag = false;
        i;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 26
    //                   2 40;
           goto _L1 _L2 _L3
_L1:
        return flag;
_L2:
        cmditem.a(a1.a());
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        LinkedList linkedlist = a1.a(2);
        for(int j = ((flag) ? 1 : 0); j < linkedlist.size(); j++)
        {
            byte abyte0[] = (byte[])linkedlist.get(j);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a2, skbuiltinbuffer_t, a(a2)));
            cmditem.a(skbuiltinbuffer_t);
        }

        flag = true;
        if(true) goto _L1; else goto _L4
_L4:
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + (0 + c.a.a.a.b(2, d.a()));
    }

    public final CmdItem a(int i)
    {
        b = i;
        c = true;
        return this;
    }

    public final CmdItem a(SKBuiltinBuffer_t skbuiltinbuffer_t)
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
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  CmdId:").append(c).append(" CmdBuf:").append(e).append("").toString());
        else
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
        String s1 = (new StringBuilder()).append(s).append("CmdId = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("CmdBuf = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinBuffer_t d;
    private boolean e;
}

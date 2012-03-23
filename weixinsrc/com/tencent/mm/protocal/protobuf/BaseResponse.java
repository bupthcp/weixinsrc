// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinString_t

public class BaseResponse extends BaseProtoBuf
{

    public BaseResponse()
    {
    }

    protected static boolean a(a a1, BaseResponse baseresponse, int i)
    {
        boolean flag = false;
        i;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 26
    //                   2 44;
           goto _L1 _L2 _L3
_L1:
        return flag;
_L2:
        baseresponse.b = a1.a();
        baseresponse.c = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        LinkedList linkedlist = a1.a(2);
        for(int j = ((flag) ? 1 : 0); j < linkedlist.size(); j++)
        {
            byte abyte0[] = (byte[])linkedlist.get(j);
            SKBuiltinString_t skbuiltinstring_t = new SKBuiltinString_t();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinString_t.a(a2, skbuiltinstring_t, a(a2)));
            baseresponse.d = skbuiltinstring_t;
            baseresponse.e = true;
        }

        flag = true;
        if(true) goto _L1; else goto _L4
_L4:
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + (0 + c.a.a.a.b(2, d.a()));
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
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Ret:").append(c).append(" ErrMsg:").append(e).append("").toString());
        else
            return super.b();
    }

    public final int c()
    {
        return b;
    }

    public final SKBuiltinString_t d()
    {
        return d;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("Ret = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ErrMsg = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private int b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
}

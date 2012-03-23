// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, ShakeGetItem

public class ShakeGetResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public ShakeGetResponse()
    {
        f = new LinkedList();
    }

    public static ShakeGetResponse a(byte abyte0[])
    {
        a a1;
        int i1;
        ShakeGetResponse shakegetresponse;
        a1 = new a(abyte0, a);
        i1 = a(a1);
        shakegetresponse = new ShakeGetResponse();
_L9:
        if(i1 <= 0)
            break MISSING_BLOCK_LABEL_387;
        i1;
        JVM INSTR tableswitch 1 6: default 68
    //                   1 88
    //                   2 194
    //                   3 213
    //                   4 330
    //                   5 349
    //                   6 368;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_368;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L10:
        if(!flag)
            a1.g();
        i1 = a(a1);
        if(true) goto _L9; else goto _L8
_L8:
        LinkedList linkedlist1 = a1.a(1);
        for(int k1 = 0; k1 < linkedlist1.size(); k1++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k1);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            shakegetresponse.b = baseresponse;
            shakegetresponse.c = true;
        }

        flag = true;
          goto _L10
_L3:
        shakegetresponse.d = a1.a();
        shakegetresponse.e = true;
        flag = true;
          goto _L10
_L4:
        LinkedList linkedlist = a1.a(3);
        for(int j1 = 0; j1 < linkedlist.size(); j1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j1);
            ShakeGetItem shakegetitem = new ShakeGetItem();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.ShakeGetItem.a(a2, shakegetitem, a(a2)));
            if(!shakegetresponse.g)
                shakegetresponse.g = true;
            shakegetresponse.f.add(shakegetitem);
        }

        flag = true;
          goto _L10
_L5:
        shakegetresponse.h = a1.b();
        shakegetresponse.i = true;
        flag = true;
          goto _L10
_L6:
        shakegetresponse.j = a1.a();
        shakegetresponse.k = true;
        flag = true;
          goto _L10
        shakegetresponse.l = a1.a();
        shakegetresponse.m = true;
        flag = true;
          goto _L10
        return shakegetresponse.i();
    }

    private ShakeGetResponse i()
    {
        if(!c || !e || !k || !m)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Count:").append(e).append(" Scence:").append(k).append(" Ret:").append(m).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        return i1 + c.a.a.a.a(5, j) + c.a.a.a.a(6, l) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        a1.a(6, l);
    }

    public final byte[] b()
    {
        i();
        return super.b();
    }

    public final BaseResponse c()
    {
        return b;
    }

    public final int d()
    {
        return d;
    }

    public final LinkedList e()
    {
        return f;
    }

    public final String f()
    {
        return h;
    }

    public final int g()
    {
        return j;
    }

    public final int h()
    {
        return l;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Count = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ShakeGetList = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("Tips = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Scence = ").append(j).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Ret = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private int l;
    private boolean m;
}

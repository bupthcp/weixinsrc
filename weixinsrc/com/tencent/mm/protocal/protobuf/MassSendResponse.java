// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class MassSendResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public MassSendResponse()
    {
    }

    public static MassSendResponse a(byte abyte0[])
    {
        a a1;
        int j;
        MassSendResponse masssendresponse;
        a1 = new a(abyte0, a);
        j = a(a1);
        masssendresponse = new MassSendResponse();
_L7:
        if(j <= 0)
            break MISSING_BLOCK_LABEL_243;
        j;
        JVM INSTR tableswitch 1 4: default 60
    //                   1 80
    //                   2 186
    //                   3 205
    //                   4 224;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_224;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L8:
        if(!flag)
            a1.g();
        j = a(a1);
        if(true) goto _L7; else goto _L6
_L6:
        LinkedList linkedlist = a1.a(1);
        for(int k = 0; k < linkedlist.size(); k++)
        {
            byte abyte1[] = (byte[])linkedlist.get(k);
            BaseResponse baseresponse = new BaseResponse();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a2, baseresponse, a(a2)));
            masssendresponse.b = baseresponse;
            masssendresponse.c = true;
        }

        flag = true;
          goto _L8
_L3:
        masssendresponse.d = a1.a();
        masssendresponse.e = true;
        flag = true;
          goto _L8
_L4:
        masssendresponse.f = a1.a();
        masssendresponse.g = true;
        flag = true;
          goto _L8
        masssendresponse.h = a1.a();
        masssendresponse.i = true;
        flag = true;
          goto _L8
        return masssendresponse.g();
    }

    private MassSendResponse g()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" DataStartPos:").append(e).append(" ThumbStartPos:").append(g).append(" MaxSupport:").append(i).append("").toString());
        else
            return this;
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
        g();
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

    public final int e()
    {
        return f;
    }

    public final int f()
    {
        return h;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("DataStartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ThumbStartPos = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MaxSupport = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
}

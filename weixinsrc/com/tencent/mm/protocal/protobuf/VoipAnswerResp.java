// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, VoipAddr

public class VoipAnswerResp extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public VoipAnswerResp()
    {
        f = new LinkedList();
    }

    public static VoipAnswerResp a(byte abyte0[])
    {
        a a1;
        int i;
        VoipAnswerResp voipanswerresp;
        a1 = new a(abyte0, a);
        i = a(a1);
        voipanswerresp = new VoipAnswerResp();
_L6:
        if(i <= 0)
            break MISSING_BLOCK_LABEL_318;
        i;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 76
    //                   2 182
    //                   3 201;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_201;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L7:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L6; else goto _L5
_L5:
        LinkedList linkedlist1 = a1.a(1);
        for(int k = 0; k < linkedlist1.size(); k++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            voipanswerresp.b = baseresponse;
            voipanswerresp.c = true;
        }

        flag = true;
          goto _L7
_L3:
        voipanswerresp.d = a1.a();
        voipanswerresp.e = true;
        flag = true;
          goto _L7
        LinkedList linkedlist = a1.a(3);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            VoipAddr voipaddr = new VoipAddr();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.VoipAddr.a(a2, voipaddr, a(a2)));
            if(!voipanswerresp.g)
                voipanswerresp.g = true;
            voipanswerresp.f.add(voipaddr);
        }

        flag = true;
          goto _L7
        return voipanswerresp.d();
    }

    private VoipAnswerResp d()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" AddrCount:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
    }

    public final byte[] b()
    {
        d();
        return super.b();
    }

    public final BaseResponse c()
    {
        return b;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("AddrCount = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("AddrList = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private boolean g;
}

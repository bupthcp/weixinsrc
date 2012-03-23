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

public class VoipHeartBeatResp extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public VoipHeartBeatResp()
    {
    }

    public static VoipHeartBeatResp a(byte abyte0[])
    {
        a a1;
        int i;
        VoipHeartBeatResp voipheartbeatresp;
        a1 = new a(abyte0, a);
        i = a(a1);
        voipheartbeatresp = new VoipHeartBeatResp();
_L7:
        if(i <= 0) goto _L2; else goto _L1
_L1:
        i;
        JVM INSTR tableswitch 1 1: default 48
    //                   1 68;
           goto _L3 _L4
_L3:
        boolean flag = false;
_L5:
        if(!flag)
            a1.g();
        i = a(a1);
        continue; /* Loop/switch isn't completed */
_L4:
        LinkedList linkedlist = a1.a(1);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            BaseResponse baseresponse = new BaseResponse();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a2, baseresponse, a(a2)));
            voipheartbeatresp.b = baseresponse;
            voipheartbeatresp.c = true;
        }

        flag = true;
        if(true) goto _L5; else goto _L2
_L2:
        return voipheartbeatresp.d();
        if(true) goto _L7; else goto _L6
_L6:
    }

    private VoipHeartBeatResp d()
    {
        if(!c)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
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
        return (new StringBuilder()).append(s1).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
}

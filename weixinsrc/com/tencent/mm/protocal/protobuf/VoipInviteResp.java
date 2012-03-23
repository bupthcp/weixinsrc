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

public class VoipInviteResp extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public VoipInviteResp()
    {
        h = new LinkedList();
    }

    public static VoipInviteResp a(byte abyte0[])
    {
        a a1;
        int j;
        VoipInviteResp voipinviteresp;
        a1 = new a(abyte0, a);
        j = a(a1);
        voipinviteresp = new VoipInviteResp();
_L7:
        if(j <= 0)
            break MISSING_BLOCK_LABEL_341;
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
        LinkedList linkedlist1 = a1.a(1);
        for(int l = 0; l < linkedlist1.size(); l++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(l);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            voipinviteresp.b = baseresponse;
            voipinviteresp.c = true;
        }

        flag = true;
          goto _L8
_L3:
        voipinviteresp.d = a1.a();
        voipinviteresp.e = true;
        flag = true;
          goto _L8
_L4:
        voipinviteresp.f = a1.a();
        voipinviteresp.g = true;
        flag = true;
          goto _L8
        LinkedList linkedlist = a1.a(4);
        for(int k = 0; k < linkedlist.size(); k++)
        {
            byte abyte1[] = (byte[])linkedlist.get(k);
            VoipAddr voipaddr = new VoipAddr();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.VoipAddr.a(a2, voipaddr, a(a2)));
            if(!voipinviteresp.i)
                voipinviteresp.i = true;
            voipinviteresp.h.add(voipaddr);
        }

        flag = true;
          goto _L8
        return voipinviteresp.e();
    }

    private VoipInviteResp e()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" RoomId:").append(e).append(" AddrCount:").append(g).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(4, 8, h));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, 8, h);
    }

    public final byte[] b()
    {
        e();
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

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("RoomId = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("AddrCount = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("AddrList = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private LinkedList h;
    private boolean i;
}

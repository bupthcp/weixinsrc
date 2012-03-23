// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinBuffer_t, CmdList

public class VoipSyncResp extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public VoipSyncResp()
    {
    }

    public static VoipSyncResp a(byte abyte0[])
    {
        a a1;
        int i1;
        VoipSyncResp voipsyncresp;
        a1 = new a(abyte0, a);
        i1 = a(a1);
        voipsyncresp = new VoipSyncResp();
_L11:
        if(i1 <= 0)
            break MISSING_BLOCK_LABEL_509;
        i1;
        JVM INSTR tableswitch 1 8: default 76
    //                   1 96
    //                   2 202
    //                   3 221
    //                   4 240
    //                   5 346
    //                   6 452
    //                   7 471
    //                   8 490;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_490;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L12:
        if(!flag)
            a1.g();
        i1 = a(a1);
        if(true) goto _L11; else goto _L10
_L10:
        LinkedList linkedlist2 = a1.a(1);
        for(int l1 = 0; l1 < linkedlist2.size(); l1++)
        {
            byte abyte3[] = (byte[])linkedlist2.get(l1);
            BaseResponse baseresponse = new BaseResponse();
            a a4 = new a(abyte3, a);
            for(boolean flag3 = true; flag3; flag3 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a4, baseresponse, a(a4)));
            voipsyncresp.b = baseresponse;
            voipsyncresp.c = true;
        }

        flag = true;
          goto _L12
_L3:
        voipsyncresp.d = a1.b();
        voipsyncresp.e = true;
        flag = true;
          goto _L12
_L4:
        voipsyncresp.f = a1.a();
        voipsyncresp.g = true;
        flag = true;
          goto _L12
_L5:
        LinkedList linkedlist1 = a1.a(4);
        for(int k1 = 0; k1 < linkedlist1.size(); k1++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k1);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a3, skbuiltinbuffer_t, a(a3)));
            voipsyncresp.h = skbuiltinbuffer_t;
            voipsyncresp.i = true;
        }

        flag = true;
          goto _L12
_L6:
        LinkedList linkedlist = a1.a(5);
        for(int j1 = 0; j1 < linkedlist.size(); j1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j1);
            CmdList cmdlist = new CmdList();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.CmdList.a(a2, cmdlist, a(a2)));
            voipsyncresp.j = cmdlist;
            voipsyncresp.k = true;
        }

        flag = true;
          goto _L12
_L7:
        voipsyncresp.l = a1.a();
        voipsyncresp.m = true;
        flag = true;
          goto _L12
_L8:
        voipsyncresp.n = a1.a();
        voipsyncresp.o = true;
        flag = true;
          goto _L12
        voipsyncresp.p = a1.d();
        voipsyncresp.q = true;
        flag = true;
          goto _L12
        return voipsyncresp.j();
    }

    private VoipSyncResp j()
    {
        if(!c || !g || !i || !k || !m || !o || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" RoomId:").append(g).append(" KeyBuf:").append(i).append(" CmdList:").append(k).append(" MemberId:").append(m).append(" ContinueFlag:").append(o).append(" Key:").append(q).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        return i1 + c.a.a.a.a(3, f) + c.a.a.a.a(6, l) + c.a.a.a.a(7, n) + c.a.a.a.b.a.b(8, p) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        a1.b(5, j.a());
        j.a(a1);
        a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
    }

    public final byte[] b()
    {
        j();
        return super.b();
    }

    public final BaseResponse c()
    {
        return b;
    }

    public final String d()
    {
        return d;
    }

    public final int e()
    {
        return f;
    }

    public final SKBuiltinBuffer_t f()
    {
        return h;
    }

    public final CmdList g()
    {
        return j;
    }

    public final int h()
    {
        return l;
    }

    public final long i()
    {
        return p;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("CallerUserName = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("RoomId = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("KeyBuf = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("CmdList = ").append(j).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("MemberId = ").append(l).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("ContinueFlag = ").append(n).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("Key = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s7).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
    private CmdList j;
    private boolean k;
    private int l;
    private boolean m;
    private int n;
    private boolean o;
    private long p;
    private boolean q;
}

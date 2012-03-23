// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.MMProtocalJni;
import junit.framework.Assert;

public class RemoteReq extends com.tencent.mm.protocal.IMMBaseReq_AIDL.Stub
{

    public RemoteReq(com.tencent.mm.protocal.MMBase.Req req, int i1)
    {
        a = req;
        b = i1;
    }

    public final void a(int i1)
    {
        a.i(i1);
    }

    public final void a(String s)
    {
        a.o(s);
    }

    public final boolean a(int i1, String s, byte abyte0[], int j1)
    {
        PByteArray pbytearray = new PByteArray();
        i1;
        JVM INSTR lookupswitch 2: default 36
    //                   1: 91
    //                   38: 119;
           goto _L1 _L2 _L3
_L1:
        if(a instanceof com.tencent.mm.protocal.MMBase.ProtoBufRequest) goto _L5; else goto _L4
_L4:
        boolean flag;
        if(MMProtocalJni.reqToBuf(i1, a, pbytearray, s, abyte0, j1))
        {
            c = pbytearray.value;
            a.b(c.length);
            flag = true;
        } else
        {
            flag = false;
        }
_L8:
        return flag;
_L2:
        if(Util.h(((com.tencent.mm.protocal.MMAuth.Req)a).b()).length() <= 0)
            Assert.assertTrue("empty username when auth", false);
          goto _L1
_L3:
        byte abyte1[] = ((com.tencent.mm.protocal.MMSync.Req)a).e();
        if(abyte1 != null && abyte1.length > 0 && !MMProtocalJni.verifySyncKey(abyte1))
            Log.a("MicroMsg.PacketVerify", (new StringBuilder()).append("synckey verification not passed, dump=").append(Util.a(abyte1)).toString());
          goto _L1
_L5:
        com.tencent.mm.protocal.MMBase.ProtoBufRequest protobufrequest;
        byte abyte2[];
        protobufrequest = (com.tencent.mm.protocal.MMBase.ProtoBufRequest)a;
        abyte2 = protobufrequest.c();
        if(abyte2 == null || !MMProtocalJni.pack(abyte2, pbytearray, s, abyte0, a.w(), a.t(), protobufrequest.b())) goto _L7; else goto _L6
_L6:
        Log.d("MicroMsg.RemoteReq", "reqToBuf using protobuf ok");
        c = pbytearray.value;
        a.b(c.length);
        flag = true;
          goto _L8
        Exception exception;
        exception;
        Log.a("MicroMsg.RemoteReq", (new StringBuilder()).append("protobuf build exception, check now! :").append(exception.getMessage()).toString());
_L7:
        flag = false;
          goto _L8
    }

    public final byte[] a()
    {
        return c;
    }

    public final String b()
    {
        return a.s();
    }

    public final void b(int i1)
    {
        a.j(i1);
    }

    public final void b(String s)
    {
        a.p(s);
    }

    public final int c()
    {
        return a.t();
    }

    public final void c(int i1)
    {
        a.k(i1);
    }

    public final void c(String s)
    {
        a.q(s);
    }

    public final int d()
    {
        return a.u();
    }

    public final String e()
    {
        return a.v();
    }

    public final String f()
    {
        return a.w();
    }

    public final int g()
    {
        return a.x();
    }

    public final String h()
    {
        b;
        JVM INSTR lookupswitch 4: default 48
    //                   6: 67
    //                   25: 53
    //                   34: 95
    //                   36: 81;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        String s = "";
_L7:
        return s;
_L3:
        s = ((com.tencent.mm.protocal.MMGetUserName.Req)a).e();
        continue; /* Loop/switch isn't completed */
_L2:
        s = ((com.tencent.mm.protocal.MMGetVerifyImg.Req)a).c();
        continue; /* Loop/switch isn't completed */
_L5:
        s = ((com.tencent.mm.protocal.MMBindOpMoblie.Req)a).c();
        continue; /* Loop/switch isn't completed */
_L4:
        s = ((com.tencent.mm.protocal.MMResetPwd.Req)a).c();
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final String i()
    {
        b;
        JVM INSTR lookupswitch 3: default 40
    //                   1: 45
    //                   2: 45
    //                   23: 45;
           goto _L1 _L2 _L2 _L2
_L1:
        String s = "";
_L4:
        return s;
_L2:
        s = ((com.tencent.mm.protocal.MMProfile.Req)a).b();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final String j()
    {
        b;
        JVM INSTR lookupswitch 3: default 40
    //                   1: 45
    //                   2: 45
    //                   23: 45;
           goto _L1 _L2 _L2 _L2
_L1:
        String s = "";
_L4:
        return s;
_L2:
        s = ((com.tencent.mm.protocal.MMProfile.Req)a).c();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final String k()
    {
        b;
        JVM INSTR lookupswitch 3: default 40
    //                   1: 45
    //                   2: 45
    //                   23: 45;
           goto _L1 _L2 _L2 _L2
_L1:
        String s = "";
_L4:
        return s;
_L2:
        s = ((com.tencent.mm.protocal.MMProfile.Req)a).d();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int l()
    {
        return a.a();
    }

    public final boolean m()
    {
        return a.y();
    }

    private com.tencent.mm.protocal.MMBase.Req a;
    private int b;
    private byte c[];
}

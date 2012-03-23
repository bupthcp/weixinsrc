// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.pointers.PInt;
import com.tencent.mm.protocal.MMProtocalJni;

public class RemoteResp extends com.tencent.mm.protocal.IMMBaseResp_AIDL.Stub
{

    public RemoteResp(com.tencent.mm.protocal.MMBase.Resp resp, int i)
    {
        a = resp;
        b = i;
    }

    public final void a(int i)
    {
        a.a_(i);
    }

    public final void a(String s)
    {
        a.q(s);
    }

    public final boolean a(int i, byte abyte0[], String s)
    {
        PByteArray pbytearray = new PByteArray();
        if(a instanceof com.tencent.mm.protocal.MMBase.ProtoBufResponse) goto _L2; else goto _L1
_L1:
        boolean flag;
        if(MMProtocalJni.bufToResp(i, a, abyte0, s, pbytearray))
        {
            c = pbytearray.value;
            a.b(abyte0.length);
            flag = true;
        } else
        {
            flag = false;
        }
_L4:
        return flag;
_L2:
        PByteArray pbytearray1 = new PByteArray();
        PInt pint = new PInt();
        com.tencent.mm.protocal.MMBase.ProtoBufResponse protobufresponse = (com.tencent.mm.protocal.MMBase.ProtoBufResponse)a;
        try
        {
            if(MMProtocalJni.unpack(pbytearray1, abyte0, s, pbytearray, pint))
            {
                if(pint.value == -13)
                {
                    a.a_(pint.value);
                } else
                {
                    int j = protobufresponse.a(pbytearray1.value);
                    Log.d("MicroMsg.RemoteResp", "bufToResp using protobuf ok");
                    a.a_(j);
                }
                a.b(abyte0.length);
                c = pbytearray.value;
                flag = true;
                continue; /* Loop/switch isn't completed */
            }
        }
        catch(Exception exception)
        {
            Log.a("MicroMsg.RemoteResp", "protobuf unbuild exception, check now!");
        }
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final byte[] a()
    {
        return c;
    }

    public final int b()
    {
        return a.b_();
    }

    public final String c()
    {
        return a.H();
    }

    public final String d()
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
        s = ((com.tencent.mm.protocal.MMProfile.Resp)a).f();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int e()
    {
        b;
        JVM INSTR lookupswitch 3: default 40
    //                   1: 44
    //                   2: 44
    //                   23: 44;
           goto _L1 _L2 _L2 _L2
_L1:
        int i = 0;
_L4:
        return i;
_L2:
        i = ((com.tencent.mm.protocal.MMProfile.Resp)a).e();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int f()
    {
        return a.c_();
    }

    private com.tencent.mm.protocal.MMBase.Resp a;
    private int b;
    private byte c[];
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.algorithm.TypeTransform;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.util.List;
import junit.framework.Assert;

public class NetSceneDirectSend extends NetSceneBase
    implements IOnSceneNotify, IOnGYNetEnd
{

    public NetSceneDirectSend(com.tencent.mm.protocal.MMBase.Resp resp)
    {
        d = "";
        com.tencent.mm.protocal.MMDirectSend.Resp resp1 = (com.tencent.mm.protocal.MMDirectSend.Resp)resp;
        d = resp1.e();
        e = resp1.f();
    }

    public NetSceneDirectSend(List list, byte abyte0[])
    {
        int i = 1;
        super();
        d = "";
        boolean flag;
        int j;
        String s;
        if(list != null && list.size() > 0 && abyte0 != null)
            flag = i;
        else
            flag = false;
        Assert.assertTrue(flag);
        j = (int)(System.currentTimeMillis() / 1000L);
        String s1;
        for(s = (String)list.get(0); i < list.size(); s = s1)
        {
            s1 = (new StringBuilder()).append(s).append(",").append(((String)list.get(i)).trim()).toString();
            i++;
        }

        c = new MMReqRespDirectSend();
        com.tencent.mm.protocal.MMDirectSend.Req req = (com.tencent.mm.protocal.MMDirectSend.Req)c.f();
        req.a(111);
        req.b(0);
        req.c(j);
        req.a(s);
        req.a(abyte0);
        Log.d("MicroMsg.NetSceneDirectSend", (new StringBuilder()).append("NetSceneDirectSend: cmdId=").append(111).append(" seq=").append(j).toString());
        Log.d("MicroMsg.NetSceneDirectSend", (new StringBuilder()).append("NetSceneDirectSend: lstReceiver=").append(s).append(" status = ").append(TypeTransform.a(abyte0)).toString());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 10;
    }

    public final String d()
    {
        return d;
    }

    public final byte[] f()
    {
        return e;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private String d;
    private byte e[];

    private class MMReqRespDirectSend extends MMReqRespBase
    {

        protected final com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 10;
        }

        public final String d()
        {
            return null;
        }

        private final com.tencent.mm.protocal.MMDirectSend.Req a = new com.tencent.mm.protocal.MMDirectSend.Req();
        private final com.tencent.mm.protocal.MMDirectSend.Resp b = new com.tencent.mm.protocal.MMDirectSend.Resp();

        public MMReqRespDirectSend()
        {
        }
    }

}

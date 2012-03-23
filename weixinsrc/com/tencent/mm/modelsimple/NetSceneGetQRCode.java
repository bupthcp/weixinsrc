// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelqrcode.QRCodeStorage;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

public class NetSceneGetQRCode extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetQRCode()
    {
        this(ConfigStorageLogic.b(), Util.a((Integer)MMCore.f().f().a(0x10401)));
    }

    private NetSceneGetQRCode(String s, int i)
    {
        c = null;
        a = new MMReqRespGetQRCode();
        ((com.tencent.mm.protocal.MMGetQRCode.Req)a.f()).a(s);
        ((com.tencent.mm.protocal.MMGetQRCode.Req)a.f()).a(i);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetQRCode", (new StringBuilder()).append("onGYNetEnd errType:").append(j).append(" errCode").append(k).toString());
        if(j == 0 && k == 0)
        {
            String s1 = ((com.tencent.mm.protocal.MMGetQRCode.Req)ireqresp.f()).b();
            byte abyte0[] = ((com.tencent.mm.protocal.MMGetQRCode.Resp)ireqresp.b()).b();
            int l = ((com.tencent.mm.protocal.MMGetQRCode.Resp)ireqresp.b()).d();
            Log.d("MicroMsg.NetSceneGetQRCode", (new StringBuilder()).append("onGYNetEnd QRCODE:").append(abyte0.length).append(" style:").append(l).toString());
            MMCore.f().f().a(0x10401, Integer.valueOf(l));
            MMCore.f().A().a(s1, l, abyte0);
        }
        c.a(j, k, s, this);
    }

    public final int b()
    {
        return 61;
    }

    private final IReqResp a;
    private IOnSceneEnd c;

    private class MMReqRespGetQRCode extends MMReqRespBase
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
            return 61;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getqrcode";
        }

        private final com.tencent.mm.protocal.MMGetQRCode.Req a = new com.tencent.mm.protocal.MMGetQRCode.Req();
        private final com.tencent.mm.protocal.MMGetQRCode.Resp b = new com.tencent.mm.protocal.MMGetQRCode.Resp();

        public MMReqRespGetQRCode()
        {
        }
    }

}

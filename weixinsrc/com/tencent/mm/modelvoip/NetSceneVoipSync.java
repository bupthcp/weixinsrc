// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import com.tencent.mm.model.ConfigStorageLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;

public class NetSceneVoipSync extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneVoipSync(int i, CmdList cmdlist, byte abyte0[])
    {
        c = new MMReqRespVoipSync();
        com.tencent.mm.protocal.MMVoipSync.Req req = (com.tencent.mm.protocal.MMVoipSync.Req)c.f();
        req.a.a(i);
        req.a.a(cmdlist);
        req.a.a(ConfigStorageLogic.b());
        SKBuiltinBuffer_t skbuiltinbuffer_t = (new SKBuiltinBuffer_t()).a(ByteString.a(abyte0)).a(abyte0.length);
        req.a.a(skbuiltinbuffer_t);
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
        return 74;
    }

    public final com.tencent.mm.protocal.MMVoipSync.Resp f()
    {
        return (com.tencent.mm.protocal.MMVoipSync.Resp)c.b();
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespVoipSync extends MMReqRespBase
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
            return 74;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/voipsync";
        }

        private com.tencent.mm.protocal.MMVoipSync.Req a;
        private com.tencent.mm.protocal.MMVoipSync.Resp b;

        public MMReqRespVoipSync()
        {
            a = new com.tencent.mm.protocal.MMVoipSync.Req();
            b = new com.tencent.mm.protocal.MMVoipSync.Resp();
        }
    }

}

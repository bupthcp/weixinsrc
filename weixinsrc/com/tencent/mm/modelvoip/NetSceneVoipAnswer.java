// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoip;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;

public class NetSceneVoipAnswer extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneVoipAnswer(int i, byte abyte0[], byte abyte1[])
    {
        c = new MMReqRespMMVoipAnswer();
        com.tencent.mm.protocal.MMVoipAnswer.Req req = (com.tencent.mm.protocal.MMVoipAnswer.Req)c.f();
        req.a.c();
        req.a.a(i);
        VoipRelayData voiprelaydata = new VoipRelayData();
        voiprelaydata.a(2);
        SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
        skbuiltinbuffer_t.a(ByteString.a(abyte0));
        skbuiltinbuffer_t.a(abyte0.length);
        voiprelaydata.a(skbuiltinbuffer_t);
        req.a.a(voiprelaydata);
        VoipRelayData voiprelaydata1 = new VoipRelayData();
        voiprelaydata1.a(3);
        SKBuiltinBuffer_t skbuiltinbuffer_t1 = new SKBuiltinBuffer_t();
        skbuiltinbuffer_t1.a(ByteString.a(abyte1));
        skbuiltinbuffer_t1.a(abyte1.length);
        voiprelaydata1.a(skbuiltinbuffer_t1);
        req.a.b(voiprelaydata1);
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
        return 72;
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespMMVoipAnswer extends MMReqRespBase
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
            return 72;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/voipanswer";
        }

        private com.tencent.mm.protocal.MMVoipAnswer.Req a;
        private com.tencent.mm.protocal.MMVoipAnswer.Resp b;

        public MMReqRespMMVoipAnswer()
        {
            a = new com.tencent.mm.protocal.MMVoipAnswer.Req();
            b = new com.tencent.mm.protocal.MMVoipAnswer.Resp();
        }
    }

}

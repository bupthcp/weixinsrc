// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.ChatroomMembersLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.util.List;

public class NetSceneDelChatRoomMember extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDelChatRoomMember(String s, List list)
    {
        c = new MMReqRespDelChatRoomMember();
        ((com.tencent.mm.protocal.MMDelChatRoomMember.Req)c.f()).a(s);
        ((com.tencent.mm.protocal.MMDelChatRoomMember.Req)c.f()).a(list);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneDelChatRoomMember", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        com.tencent.mm.protocal.MMDelChatRoomMember.Req req = (com.tencent.mm.protocal.MMDelChatRoomMember.Req)ireqresp.f();
        com.tencent.mm.protocal.MMDelChatRoomMember.Resp resp = (com.tencent.mm.protocal.MMDelChatRoomMember.Resp)ireqresp.b();
        if(resp.b_() != 0)
        {
            a.a(j, k, s, this);
        } else
        {
            ChatroomMembersLogic.a(req.d(), resp);
            a.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 68;
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespDelChatRoomMember extends MMReqRespBase
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
            return 68;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/delchatroommember";
        }

        private com.tencent.mm.protocal.MMDelChatRoomMember.Req a;
        private com.tencent.mm.protocal.MMDelChatRoomMember.Resp b;

        public MMReqRespDelChatRoomMember()
        {
            a = new com.tencent.mm.protocal.MMDelChatRoomMember.Req();
            b = new com.tencent.mm.protocal.MMDelChatRoomMember.Resp();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.ChatroomMembersLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.CollectChatRoomReq;
import com.tencent.mm.protocal.protobuf.GroupCardReq;
import java.util.Iterator;
import java.util.LinkedList;

public class NetSceneCollectChatRoom extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneCollectChatRoom(LinkedList linkedlist)
    {
        d = linkedlist;
        com.tencent.mm.protocal.MMCollectChatRoom.Req req = (com.tencent.mm.protocal.MMCollectChatRoom.Req)c.f();
        req.a.a(linkedlist);
        req.a.a(linkedlist.size());
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneCollectChatRoom", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        if(((com.tencent.mm.protocal.MMCollectChatRoom.Resp)ireqresp.b()).b_() != 0)
        {
            a.a(j, k, s, this);
        } else
        {
            if(d != null)
            {
                GroupCardReq groupcardreq;
                for(Iterator iterator = d.iterator(); iterator.hasNext(); ChatroomMembersLogic.b(groupcardreq.c()))
                {
                    groupcardreq = (GroupCardReq)iterator.next();
                    Log.d("MicroMsg.NetSceneCollectChatRoom", (new StringBuilder()).append("del groupcard Name :").append(groupcardreq.c()).toString());
                }

            }
            a.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 69;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespCollectChatRoom();
    private LinkedList d;

    private class MMReqRespCollectChatRoom extends MMReqRespBase
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
            return 69;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/collectchatroom";
        }

        private final com.tencent.mm.protocal.MMCollectChatRoom.Req a = new com.tencent.mm.protocal.MMCollectChatRoom.Req();
        private final com.tencent.mm.protocal.MMCollectChatRoom.Resp b = new com.tencent.mm.protocal.MMCollectChatRoom.Resp();

        public MMReqRespCollectChatRoom()
        {
        }
    }

}

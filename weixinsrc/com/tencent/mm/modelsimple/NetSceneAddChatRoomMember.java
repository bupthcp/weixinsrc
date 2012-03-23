// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.ChatroomMembersLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.util.LinkedList;
import java.util.List;

public class NetSceneAddChatRoomMember extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneAddChatRoomMember(String s, List list)
    {
        c = null;
        ((com.tencent.mm.protocal.MMAddChatRoomMember.Req)a.f()).a(s);
        ((com.tencent.mm.protocal.MMAddChatRoomMember.Req)a.f()).a(list);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        com.tencent.mm.protocal.MMAddChatRoomMember.Req req = (com.tencent.mm.protocal.MMAddChatRoomMember.Req)ireqresp.f();
        com.tencent.mm.protocal.MMAddChatRoomMember.Resp resp = (com.tencent.mm.protocal.MMAddChatRoomMember.Resp)ireqresp.b();
        if(resp.b_() != 0)
        {
            c.a(j, k, s, this);
        } else
        {
            List list = resp.d();
            int l = 0;
            byte byte0 = 0;
            while(l < list.size()) 
            {
                int i1 = ((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).e();
                if(i1 != 0)
                    if(i1 == 3)
                    {
                        Log.d("MicroMsg.NetSceneAddChatRoomMember", (new StringBuilder()).append(" blacklist : ").append(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h()).toString());
                        e.add(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h());
                        byte0 = -22;
                    } else
                    if(i1 == 1)
                    {
                        Log.d("MicroMsg.NetSceneAddChatRoomMember", (new StringBuilder()).append(" not user : ").append(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h()).toString());
                        f.add(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h());
                        byte0 = -21;
                    } else
                    if(i1 == 2)
                    {
                        Log.d("MicroMsg.NetSceneAddChatRoomMember", (new StringBuilder()).append(" invalid username : ").append(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h()).toString());
                        byte0 = -14;
                        d.add(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h());
                    } else
                    if(i1 == 4)
                    {
                        Log.d("MicroMsg.NetSceneAddChatRoomMember", (new StringBuilder()).append(" verify user : ").append(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h()).toString());
                        byte0 = -44;
                        g.add(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)list.get(l)).h());
                    } else
                    {
                        Log.b("MicroMsg.NetSceneAddChatRoomMember", (new StringBuilder()).append("unknown member status : status = ").append(i1).toString());
                    }
                l++;
            }
            if(byte0 != 0)
            {
                c.a(j, byte0, s, this);
            } else
            {
                ChatroomMembersLogic.a(req.d(), resp);
                c.a(j, k, s, this);
            }
        }
    }

    public final int b()
    {
        return 17;
    }

    public final List f()
    {
        return d;
    }

    public final List g()
    {
        return e;
    }

    public final List h()
    {
        return g;
    }

    private final IReqResp a = new MMReqRespAddChatRoomMember();
    private IOnSceneEnd c;
    private final List d = new LinkedList();
    private final List e = new LinkedList();
    private final List f = new LinkedList();
    private final List g = new LinkedList();

    private class MMReqRespAddChatRoomMember extends MMReqRespBase
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
            return 17;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/addchatroommember";
        }

        private final com.tencent.mm.protocal.MMAddChatRoomMember.Req a = new com.tencent.mm.protocal.MMAddChatRoomMember.Req();
        private final com.tencent.mm.protocal.MMAddChatRoomMember.Resp b = new com.tencent.mm.protocal.MMAddChatRoomMember.Resp();

        public MMReqRespAddChatRoomMember()
        {
        }
    }

}

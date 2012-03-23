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

public class NetSceneCreateChatRoom extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneCreateChatRoom(String s, List list)
    {
        Log.d("MicroMsg.NetSceneCreateChatRoom", (new StringBuilder()).append("topic : ").append(s).append(" size : ").append(list.size()).append(" username : ").append((String)list.get(0)).toString());
        ((com.tencent.mm.protocal.MMCreateChatRoom.Req)c.f()).a(s);
        ((com.tencent.mm.protocal.MMCreateChatRoom.Req)c.f()).a(list);
        g = new LinkedList();
        h = "";
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int l, int i1, int j1, String s, IReqResp ireqresp)
    {
        b(l);
        com.tencent.mm.protocal.MMCreateChatRoom.Resp resp = (com.tencent.mm.protocal.MMCreateChatRoom.Resp)ireqresp.b();
        h = resp.h();
        if(resp.b_() != 0)
        {
            a.a(i1, j1, s, this);
        } else
        {
            List list = resp.k();
            int k1 = 0;
            byte byte0 = 0;
            while(k1 < list.size()) 
            {
                int l1 = ((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).e();
                if(l1 != 0)
                    if(l1 == 3)
                    {
                        Log.d("MicroMsg.NetSceneCreateChatRoom", (new StringBuilder()).append(" blacklist : ").append(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h()).toString());
                        e.add(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h());
                        byte0 = -22;
                    } else
                    if(l1 == 1)
                    {
                        Log.d("MicroMsg.NetSceneCreateChatRoom", (new StringBuilder()).append(" not user : ").append(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h()).toString());
                        f.add(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h());
                        byte0 = -21;
                    } else
                    if(l1 == 2)
                    {
                        Log.d("MicroMsg.NetSceneCreateChatRoom", (new StringBuilder()).append(" invalid username : ").append(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h()).toString());
                        byte0 = -14;
                        d.add(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h());
                    } else
                    if(l1 == 4)
                    {
                        Log.d("MicroMsg.NetSceneCreateChatRoom", (new StringBuilder()).append(" verify user : ").append(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h()).toString());
                        byte0 = -44;
                        g.add(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)list.get(k1)).h());
                    } else
                    {
                        Log.b("MicroMsg.NetSceneCreateChatRoom", (new StringBuilder()).append("unknown member status : status = ").append(l1).toString());
                    }
                k1++;
            }
            if(byte0 != 0)
            {
                a.a(i1, byte0, s, this);
            } else
            {
                ChatroomMembersLogic.a(resp);
                a.a(i1, j1, s, this);
            }
        }
    }

    public final int b()
    {
        return 16;
    }

    public final int g()
    {
        return ((com.tencent.mm.protocal.MMCreateChatRoom.Resp)c.b()).b();
    }

    public final String h()
    {
        return h;
    }

    public final List i()
    {
        return d;
    }

    public final List j()
    {
        return e;
    }

    public final List k()
    {
        return g;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespCreateChatRoom();
    private final List d = new LinkedList();
    private final List e = new LinkedList();
    private final List f = new LinkedList();
    private List g;
    private String h;

    private class MMReqRespCreateChatRoom extends MMReqRespBase
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
            return 16;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/createchatroom";
        }

        private final com.tencent.mm.protocal.MMCreateChatRoom.Req a = new com.tencent.mm.protocal.MMCreateChatRoom.Req();
        private final com.tencent.mm.protocal.MMCreateChatRoom.Resp b = new com.tencent.mm.protocal.MMCreateChatRoom.Resp();

        public MMReqRespCreateChatRoom()
        {
        }
    }

}

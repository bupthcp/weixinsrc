// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.util.*;

public class NetSceneGetInviteFriend extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetInviteFriend(int i)
    {
        ((com.tencent.mm.protocal.MMGetInviteFriend.Req)a.f()).a(i);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        com.tencent.mm.protocal.MMGetInviteFriend.Resp resp = (com.tencent.mm.protocal.MMGetInviteFriend.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneGetInviteFriend", (new StringBuilder()).append("friend:").append(resp.b().size()).append(" group:").append(resp.d().size()).toString());
        HashSet hashset = new HashSet();
        ArrayList arraylist = new ArrayList();
        for(int l = 0; l < resp.b().size(); l++)
            if(!hashset.contains(((com.tencent.mm.protocal.MMGetInviteFriend.RespCmd)resp.b().get(l)).a()))
            {
                arraylist.add(resp.b().get(l));
                hashset.add(((com.tencent.mm.protocal.MMGetInviteFriend.RespCmd)resp.b().get(l)).a());
            }

        resp.a(arraylist);
        c.a(j, k, s, this);
    }

    public final int b()
    {
        return 13;
    }

    public final List g()
    {
        return ((com.tencent.mm.protocal.MMGetInviteFriend.Resp)a.b()).b();
    }

    public final List h()
    {
        return ((com.tencent.mm.protocal.MMGetInviteFriend.Resp)a.b()).d();
    }

    private final IReqResp a = new MMReqRespGetInviteFriend();
    private IOnSceneEnd c;

    private class MMReqRespGetInviteFriend extends MMReqRespBase
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
            return 13;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/newgetinvitefriend";
        }

        private com.tencent.mm.protocal.MMGetInviteFriend.Req a;
        private com.tencent.mm.protocal.MMGetInviteFriend.Resp b;

        public MMReqRespGetInviteFriend()
        {
            a = new com.tencent.mm.protocal.MMGetInviteFriend.Req();
            b = new com.tencent.mm.protocal.MMGetInviteFriend.Resp();
        }
    }

}

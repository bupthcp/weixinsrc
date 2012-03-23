// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.ChatroomMembersLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneAddGroupCard extends NetSceneBase
    implements IOnGYNetEnd
{

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneAddGroupCard", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        com.tencent.mm.protocal.MMGroupCard.Req req = (com.tencent.mm.protocal.MMGroupCard.Req)ireqresp.f();
        com.tencent.mm.protocal.MMGroupCard.Resp resp = (com.tencent.mm.protocal.MMGroupCard.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneAddGroupCard", (new StringBuilder()).append("msg  getGroupUserName ").append(resp.b()).toString());
        if(j == 0 && k >= 0)
            ChatroomMembersLogic.a(resp, req);
        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 44;
    }

    private IOnSceneEnd a;
    private final IReqResp c;
}

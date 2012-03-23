// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.GetTLPhotoListFPRequest;
import com.tencent.mm.protocal.protobuf.GetTLPhotoListFPResponse;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumInfoLogicStorage

public class NetSceneGetTLPhotoListFP extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetTLPhotoListFP()
    {
        a = new MMReqRespGetTLPhotoListFP();
        com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Req req = (com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Req)a.f();
        d = "";
        req.a.a(d);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetTLPhotoListFP", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        ireqresp.f();
        com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Resp resp = (com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Resp)ireqresp.b();
        if(resp.b_() != 0)
        {
            c.a(j, k, s, this);
        } else
        {
            Log.d("MicroMsg.NetSceneGetTLPhotoListFP", (new StringBuilder()).append("photo md5 :").append(resp.a.d()).toString());
            MMCore.f().f().a(0x10701, resp.a.d());
            Log.d("MicroMsg.NetSceneGetTLPhotoListFP", (new StringBuilder()).append("photo count :").append(resp.a.e()).toString());
            AlbumInfoLogicStorage.a(resp);
            c.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 83;
    }

    private IReqResp a;
    private IOnSceneEnd c;
    private String d;

    private class MMReqRespGetTLPhotoListFP extends MMReqRespBase
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
            return 83;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/GetTLPhotoListFP";
        }

        private com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Req a;
        private com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Resp b;

        public MMReqRespGetTLPhotoListFP()
        {
            a = new com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Req();
            b = new com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Resp();
        }
    }

}

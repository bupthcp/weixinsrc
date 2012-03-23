// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.*;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumInfo, AlbumInfoLogicStorage

public class NetSceneGetTLPhotoListNP extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetTLPhotoListNP(AlbumInfo albuminfo)
    {
        a = new MMReqRespGetTLPhotoListNP();
        com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Req req = (com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Req)a.f();
        AlbumPhotoId albumphotoid = new AlbumPhotoId();
        albumphotoid.a((int)albuminfo.d());
        albumphotoid.a(albuminfo.b());
        albumphotoid.b(albuminfo.e());
        req.a.a(albumphotoid);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetTLPhotoListNP", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        ireqresp.f();
        com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Resp resp = (com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Resp)ireqresp.b();
        if(resp.b_() != 0)
        {
            c.a(j, k, s, this);
        } else
        {
            Log.d("MicroMsg.NetSceneGetTLPhotoListNP", (new StringBuilder()).append("photo count :").append(resp.a.d()).toString());
            AlbumInfoLogicStorage.a(resp);
            c.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 87;
    }

    private IReqResp a;
    private IOnSceneEnd c;

    private class MMReqRespGetTLPhotoListNP extends MMReqRespBase
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
            return 87;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/GetTLPhotoListNP";
        }

        private com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Req a;
        private com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Resp b;

        public MMReqRespGetTLPhotoListNP()
        {
            a = new com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Req();
            b = new com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Resp();
        }
    }

}

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
import com.tencent.mm.protocal.protobuf.GetAlbumPhotoListFPRequest;
import com.tencent.mm.protocal.protobuf.GetAlbumPhotoListFPResponse;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumExtStorage, AlbumInfoStorage, AlbumInfoLogicStorage

public class NetSceneGetAlbumPhotoListFP extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetAlbumPhotoListFP(String s)
    {
        Log.d("MicroMsg.NetSceneGetAlbumPhotoListFP", (new StringBuilder()).append("userName: ").append(s).toString());
        d = s;
        a = new MMReqRespAlbumPhotoListFP();
        com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Req req = (com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Req)a.f();
        e = MMCore.f().K().a(s);
        Log.d("MicroMsg.NetSceneGetAlbumPhotoListFP", (new StringBuilder()).append("userName : ").append(s).append(" md5 ").append(e).toString());
        req.a.a(s);
        req.a.b(e);
        req.a.c();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetAlbumPhotoListFP", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        ireqresp.f();
        com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Resp resp = (com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Resp)ireqresp.b();
        if(resp.b_() != 0)
        {
            c.a(j, k, s, this);
        } else
        {
            Log.d("MicroMsg.NetSceneGetAlbumPhotoListFP", (new StringBuilder()).append("photo md5 :").append(resp.a.d()).toString());
            MMCore.f().K().a(d, resp.a.d());
            Log.d("MicroMsg.NetSceneGetAlbumPhotoListFP", (new StringBuilder()).append("photo count :").append(resp.a.e()).toString());
            if(!resp.a.d().equals(e))
            {
                MMCore.f().J().a();
                AlbumInfoLogicStorage.a(d, resp);
            }
            c.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 76;
    }

    private IReqResp a;
    private IOnSceneEnd c;
    private String d;
    private String e;

    private class MMReqRespAlbumPhotoListFP extends MMReqRespBase
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
            return 76;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/GetAlbumPhotoListFP";
        }

        private com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Req a;
        private com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Resp b;

        public MMReqRespAlbumPhotoListFP()
        {
            a = new com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Req();
            b = new com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Resp();
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;

public class NetSceneBatchGetAlbumPhotoAttr extends NetSceneBase
    implements IOnGYNetEnd
{

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneBatchGetAlbumPhotoAttr", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        ireqresp.f();
        if(((com.tencent.mm.plugin.album.protocal.MMBatchGetAlbumPhotoAttr.Resp)ireqresp.b()).b_() == 0)
        {
            Log.d("MicroMsg.AlbumInfoLogicStorage", "updatePhotoAttrList");
            c.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 78;
    }

    private IReqResp a;
    private IOnSceneEnd c;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.BatchGetAlbumPhotoResponse;
import java.util.Iterator;
import java.util.LinkedList;

public class NetSceneBatchGetAlbumPhoto extends NetSceneBase
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
        Log.d("MicroMsg.NetSceneBatchGetAlbumPhoto", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        ireqresp.f();
        com.tencent.mm.plugin.album.protocal.MMBatchGetAlbumPhoto.Resp resp = (com.tencent.mm.plugin.album.protocal.MMBatchGetAlbumPhoto.Resp)ireqresp.b();
        if(resp.b_() == 0)
        {
            for(Iterator iterator = resp.a.d().iterator(); iterator.hasNext(); iterator.next());
            c.a(j, k, s, this);
        }
    }

    public final int b()
    {
        return 77;
    }

    private IReqResp a;
    private IOnSceneEnd c;
}

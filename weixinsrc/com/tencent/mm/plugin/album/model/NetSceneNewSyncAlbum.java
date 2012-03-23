// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import android.os.Handler;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.*;
import java.io.IOException;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumCommentStorage

public class NetSceneNewSyncAlbum extends NetSceneBase
    implements IOnGYNetEnd
{

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneAlbumPhotoComment", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        b(i);
        LinkedList linkedlist = ((com.tencent.mm.plugin.album.protocal.MMNewSyncAlbum.Resp)ireqresp.b()).a.d().d();
        if(linkedlist.size() > 0)
        {
            if(e == null)
                e = MMCore.f().U();
            RespHandler resphandler = d;
            resphandler.a = linkedlist;
            resphandler.b.sendEmptyMessage(0);
        }
        c.a(j, k, s, this);
    }

    public final int b()
    {
        return 89;
    }

    public final void d()
    {
        com.tencent.mm.plugin.album.protocal.MMNewSyncAlbum.Resp resp = (com.tencent.mm.plugin.album.protocal.MMNewSyncAlbum.Resp)a.b();
        resp.a.e().b();
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private IReqResp a;
    private IOnSceneEnd c;
    private RespHandler d;
    private AlbumCommentStorage e;

    private class RespHandler
    {

        LinkedList a;
        Handler b;
        final NetSceneNewSyncAlbum c;
    }

}

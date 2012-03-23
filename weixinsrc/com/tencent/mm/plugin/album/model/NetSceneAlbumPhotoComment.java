// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.protobuf.AlbumPhotoCommentRequest;
import com.tencent.mm.protocal.protobuf.CommentInfo;

public class NetSceneAlbumPhotoComment extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneAlbumPhotoComment(String s, int i, String s1, String s2, String s3, int j, int k)
    {
        a = new MMReqRespAlbumPhotoComment();
        com.tencent.mm.plugin.album.protocal.MMAlbumPhotoComment.Req req = (com.tencent.mm.plugin.album.protocal.MMAlbumPhotoComment.Req)a.f();
        CommentInfo commentinfo = new CommentInfo();
        commentinfo.a(s);
        commentinfo.b(s2);
        commentinfo.b(i);
        commentinfo.c(s1);
        commentinfo.a(3);
        req.a.a(commentinfo);
        CommentInfo commentinfo1 = new CommentInfo();
        commentinfo1.a(s3);
        commentinfo1.c(j);
        commentinfo1.b(s1);
        commentinfo1.b(i);
        commentinfo1.c(s2);
        commentinfo1.a(k);
        req.a.b(commentinfo1);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneAlbumPhotoComment", (new StringBuilder()).append("netId : ").append(i).append(" errType :").append(j).append(" errCode: ").append(k).append(" errMsg :").append(s).toString());
        b(i);
        c.a(j, k, s, this);
    }

    public final int b()
    {
        return 82;
    }

    private IReqResp a;
    private IOnSceneEnd c;

    private class MMReqRespAlbumPhotoComment extends MMReqRespBase
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
            return 82;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/AlbumPhotoComment";
        }

        private com.tencent.mm.plugin.album.protocal.MMAlbumPhotoComment.Req a;
        private com.tencent.mm.plugin.album.protocal.MMAlbumPhotoComment.Resp b;

        public MMReqRespAlbumPhotoComment()
        {
            a = new com.tencent.mm.plugin.album.protocal.MMAlbumPhotoComment.Req();
            b = new com.tencent.mm.plugin.album.protocal.MMAlbumPhotoComment.Resp();
        }
    }

}

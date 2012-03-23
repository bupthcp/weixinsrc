// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.FilesCopy;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumImgStorage, AlbumImg, AlbumInfo, AlbumInfoStorage

public class NetSceneUploadAlbumPhoto extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadAlbumPhoto(String s, IOnSceneProgressEnd ionsceneprogressend)
    {
        com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Req req;
        f = 8192;
        Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("filePath ").append(s).toString());
        a = new MMReqRespMMUploadAlbumPhoto();
        req = (com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Req)a.f();
        g = MMCore.f().M();
        d = ionsceneprogressend;
        e = MMCore.f().L().c(s);
        if(e >= 0L) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("insert to img storage failed id:").append(e).toString());
        a = null;
_L4:
        return;
_L2:
        AlbumImg albumimg = MMCore.f().L().a(e);
        Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("clientId ").append(albumimg.b()).toString());
        req.a.a(albumimg.b());
        req.a.d();
        req.a.c();
        req.a.a(albumimg.h());
        req.a.b(albumimg.i());
        req.a.e();
        req.a.b("foreverzeus");
        if(ionsceneprogressend != null)
            ionsceneprogressend.a(albumimg.h(), albumimg.i(), this);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        int j;
        if(e < 0L)
        {
            j = -1;
        } else
        {
            Log.d("MicroMsg.NetSceneUploadAlbumPhoto", "doScene");
            c = ionsceneend;
            com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Req req = (com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Req)a.f();
            AlbumImg albumimg = MMCore.f().L().a(e);
            int i = albumimg.i() - albumimg.h();
            if(i > f)
                i = f;
            Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("buf to read  path: ").append(albumimg.c()).append(" offset: ").append(albumimg.h()).append(" dataLen : ").append(i).toString());
            byte abyte0[] = FileOperation.a((new StringBuilder()).append(MMCore.f().M()).append(albumimg.b()).toString(), albumimg.h(), i);
            if(abyte0 == null || abyte0.length <= 0)
            {
                j = -1;
            } else
            {
                req.a.a(albumimg.h());
                SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
                skbuiltinbuffer_t.a(ByteString.a(abyte0));
                skbuiltinbuffer_t.a(abyte0.length);
                Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("upLoad  buf Length : ").append(abyte0.length).toString());
                req.a.a(skbuiltinbuffer_t);
                j = a(idispatcher, a, ((IOnGYNetEnd) (this)));
                Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("netId ").append(j).toString());
            }
        }
        return j;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Resp resp;
        b(i);
        Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("onGYNetEnd errtype:").append(j).append(" errcode:").append(k).toString());
        resp = (com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Resp)ireqresp.b();
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("onGYNetEnd failed errtype:").append(j).append(" errcode:").append(k).toString());
        c.a(j, k, s, this);
        MMCore.f().L().b(e);
_L4:
        return;
_L2:
        Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("onGYNetEnd dataLen:").append(resp.a.e()).append(" startpos:").append(resp.a.d()).append(" pcId:").append(resp.a.f().c()).toString());
        Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append(" clientID ").append(resp.a.g()).toString());
        AlbumImg albumimg = MMCore.f().L().a(e);
        if(resp.a.d() < 0 || resp.a.d() > resp.a.e() && resp.a.e() > 0)
        {
            c.a(4, -2, "", this);
            MMCore.f().L().b(e);
        } else
        {
            albumimg.b(resp.a.f().c());
            albumimg.a(resp.a.f().d());
            albumimg.b(resp.a.d());
            albumimg.c(resp.a.e());
            MMCore.f().L().a(e, albumimg);
            if(d != null)
                d.a(albumimg.h(), albumimg.i(), this);
            boolean flag;
            if(albumimg.h() == albumimg.i() && albumimg.i() != 0)
                flag = true;
            else
                flag = false;
            if(flag)
            {
                String s1 = (new StringBuilder()).append("albumb_").append(MD5.a(albumimg.g().getBytes())).toString();
                Log.d("MicroMsg.NetSceneUploadAlbumPhoto", (new StringBuilder()).append("upLoad ok pcId ").append(albumimg.g()).append(" tmp is : ").append(albumimg.b()).append(" newPath: ").append(s1).toString());
                FilesCopy.a((new StringBuilder()).append(g).append(albumimg.b()).toString(), (new StringBuilder()).append(g).append(s1).toString(), true);
                albumimg.c(albumimg.g().split(";")[0]);
                albumimg.a(s1);
                albumimg.d(1 | albumimg.j());
                MMCore.f().L().a(e, albumimg);
                AlbumInfo albuminfo = new AlbumInfo();
                albuminfo.a(resp.a.f().c());
                albuminfo.a(resp.a.f().d());
                albuminfo.a(resp.a.f().e());
                MMCore.f().J().a(albuminfo);
                c.a(0, 0, "", this);
            } else
            if(a(m(), c) < 0)
            {
                c.a(3, -1, "", this);
                MMCore.f().L().b(e);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 79;
    }

    protected final int c()
    {
        return 100;
    }

    private IReqResp a;
    private IOnSceneEnd c;
    private final IOnSceneProgressEnd d;
    private long e;
    private int f;
    private String g;

    private class MMReqRespMMUploadAlbumPhoto extends MMReqRespBase
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
            return 79;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/UploadAlbumPhoto";
        }

        private com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Req a;
        private com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Resp b;

        public MMReqRespMMUploadAlbumPhoto()
        {
            a = new com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Req();
            b = new com.tencent.mm.plugin.album.protocal.MMUploadAlbumPhoto.Resp();
        }
    }

}

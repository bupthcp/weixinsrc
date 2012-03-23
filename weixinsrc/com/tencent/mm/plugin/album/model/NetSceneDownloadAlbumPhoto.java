// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.FilesCopy;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import java.io.*;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumInfoStorage, AlbumImgStorage, AlbumImg, AlbumInfo

public class NetSceneDownloadAlbumPhoto extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDownloadAlbumPhoto(String s)
    {
        a = 8192;
        j = null;
        k = false;
        e = s;
        c = new MMReqRespMMDownloadAlbumPhoto();
        com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Req req = (com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Req)c.f();
        AlbumInfo albuminfo = MMCore.f().J().a(s);
        AlbumImg albumimg = MMCore.f().L().a(s);
        h = MMCore.f().M();
        String s1 = MD5.a((new StringBuilder()).append(s).append(System.currentTimeMillis()).toString().getBytes());
        if(albuminfo != null)
        {
            String s2 = albumimg.b();
            Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("fullFileName: ").append(s2).toString());
            if(s2 != null && !s2.equals("") && albumimg.e() && FileOperation.c((new StringBuilder()).append(h).append(s2).toString()))
            {
                k = true;
                Log.c("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("The bigPic of ").append(s).append(" is already exists").toString());
            } else
            {
                f = null;
                if(albumimg.b() != null && !albumimg.b().equals("") && albumimg.f() && FileOperation.c((new StringBuilder()).append(h).append(albumimg.b()).toString()))
                    f = albumimg.b();
                if(f == null || f.equals(""))
                {
                    f = (new StringBuilder()).append("album_tmp_").append(s1).toString();
                    albumimg.b(0);
                }
                albumimg.a(f);
                g = (new StringBuilder()).append("albumb_").append(s1).toString();
                i = (new StringBuilder()).append(h).append(f).toString();
                AlbumPhotoId albumphotoid = new AlbumPhotoId();
                albumphotoid.a((int)albuminfo.d());
                albumphotoid.a(albuminfo.b());
                albumphotoid.b(albuminfo.e());
                MMCore.f().J().a(s, albuminfo);
                req.a.a(albumphotoid);
                req.a.c();
            }
        }
    }

    private int a(byte abyte0[])
    {
        if(j == null)
            j = new FileOutputStream(new File(i));
        Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("appendBuf ").append(abyte0.length).toString());
        j.write(abyte0);
        int l = abyte0.length;
_L2:
        return l;
        IOException ioexception;
        ioexception;
        l = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void g()
    {
        if(j != null)
        {
            j.flush();
            j.close();
            j = null;
        }
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int l;
        if(e == null || e.equals(""))
        {
            l = -1;
        } else
        {
            d = ionsceneend;
            if(k)
            {
                l = 0;
            } else
            {
                AlbumImg albumimg = MMCore.f().L().a(e);
                com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Req req = (com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Req)c.f();
                Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("doscene  offset:").append(albumimg.h()).append(" to downLoad Size : ").append(a).toString());
                req.a.a(albumimg.h());
                req.a.b(a);
                String s = albumimg.b();
                if(s != null && !s.equals("") && albumimg.e() && FileOperation.c((new StringBuilder()).append(h).append(s).toString()))
                {
                    Log.c("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("The bigPic of ").append(e).append(" is already exists").toString());
                    l = 0;
                } else
                {
                    l = a(idispatcher, c, ((IOnGYNetEnd) (this)));
                }
            }
        }
        return l;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    protected final void a()
    {
        super.a();
        g();
    }

    public final void a(int l, int i1, int j1, String s, IReqResp ireqresp)
    {
        b(l);
        com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Resp resp = (com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("errType:").append(i1).append(" errCode:").append(j1).toString());
        if(i1 != 4 && j1 != 0)
        {
            Log.a("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("errType:").append(i1).append(" errCode:").append(j1).toString());
            FileOperation.d(i);
            d.a(i1, j1, s, this);
            g();
        } else
        if(i1 == 4 || i1 == 5)
        {
            d.a(i1, j1, s, this);
            Log.a("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("ErrType:").append(i1).toString());
            FileOperation.d(i);
            g();
        } else
        if(i1 != 0 || j1 != 0)
        {
            d.a(i1, j1, s, this);
            Log.a("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("ErrType:").append(i1).toString());
            FileOperation.d(i);
            g();
        } else
        {
            Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("download Album  id: ").append(resp.a.g().c()).append(" ").append("offset: ").append(resp.a.d()).append("  totallen ").append(resp.a.e()).toString());
            int k1 = 0;
            if(resp.a.f().d() != null)
                k1 = a(resp.a.f().d().b());
            if(k1 < 0)
            {
                Log.a("MicroMsg.NetSceneDownloadAlbumPhoto", "appendBuf fail");
                FileOperation.d(i);
                g();
            } else
            {
                AlbumImg albumimg = MMCore.f().L().a(e);
                albumimg.b(k1 + albumimg.h());
                albumimg.c(resp.a.e());
                MMCore.f().L().a(e, albumimg);
                if(k1 != 0)
                {
                    Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", "doScene again");
                    a(m(), d);
                } else
                {
                    albumimg.d();
                    albumimg.a(g);
                    Log.d("MicroMsg.NetSceneDownloadAlbumPhoto", (new StringBuilder()).append("downLoad ok bigPicExist ").append(e).append(" path: ").append(albumimg.b()).toString());
                    FilesCopy.a(i, (new StringBuilder()).append(h).append(g).toString(), true);
                    d.a(i1, j1, s, this);
                }
            }
        }
    }

    public final int b()
    {
        return 80;
    }

    protected final int c()
    {
        return 100;
    }

    private int a;
    private IReqResp c;
    private IOnSceneEnd d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private FileOutputStream j;
    private boolean k;

    private class MMReqRespMMDownloadAlbumPhoto extends MMReqRespBase
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
            return 80;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/DownloadAlbumPhoto";
        }

        private com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Req a;
        private com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Resp b;

        public MMReqRespMMDownloadAlbumPhoto()
        {
            a = new com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Req();
            b = new com.tencent.mm.plugin.album.protocal.MMDownloadAlbumPhoto.Resp();
        }
    }

}

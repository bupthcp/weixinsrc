// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelimage;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelimage:
//            ImgService, ImgInfoStorage, ImgInfo

public class NetSceneUploadMsgImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadMsgImg(int i)
    {
        g = 8192;
        h = null;
        e = i;
        d = new MMReqRespUploadMsgImg();
        a = null;
        Log.d("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("FROM SERVICE:").append(i).toString());
        if(ImgService.a(i)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ImgInfo imginfo = MMCore.f().k().a(i);
        if(imginfo != null)
        {
            f = imginfo.e();
            h = MMCore.f().i().a(imginfo.e());
            if(h != null)
            {
                com.tencent.mm.protocal.MMUploadMsgImg.Req req = (com.tencent.mm.protocal.MMUploadMsgImg.Req)d.f();
                req.b(ConfigStorageLogic.b());
                req.c(h.h());
                req.b(imginfo.h());
                req.a(imginfo.i());
                req.a(a(h.h(), i));
                req.d(h.d());
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public NetSceneUploadMsgImg(String s, String s1, String s2, IOnSceneProgressEnd ionsceneprogressend)
    {
        boolean flag;
        flag = true;
        super();
        g = 8192;
        h = null;
        a = ionsceneprogressend;
        e = MMCore.f().k().c(s2);
        Log.d("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("FROM UI :").append(s1).append(" ").append(e).toString());
        if(e >= 0L && ImgService.a((int)e)) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("insert to img storage failed id:").append(e).toString());
        f = -1L;
        d = null;
_L4:
        return;
_L2:
        boolean flag1;
        ImgInfo imginfo;
        com.tencent.mm.protocal.MMUploadMsgImg.Req req;
        if(e >= 0L)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        d = new MMReqRespUploadMsgImg();
        h = new MsgInfo();
        h.c(ContactStorageLogic.H(s1));
        h.a(s1);
        h.e(flag);
        h.c((new StringBuilder()).append("THUMBNAIL://").append(e).toString());
        h.b(MsgInfoStorageLogic.c(h.h()));
        f = MMCore.f().i().a(h);
        if(f < 0L)
            flag = false;
        Assert.assertTrue(flag);
        Log.c("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("NetSceneUploadMsgImg: local msgId = ").append(f).toString());
        imginfo = MMCore.f().k().a(e);
        imginfo.h(FileOperation.a((new StringBuilder()).append(MMCore.f().M()).append(imginfo.j()).toString()));
        imginfo.d((int)f);
        MMCore.f().k().a(e, imginfo);
        Log.d("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("NetSceneUploadMsgImg: local imgId = ").append(e).append(" img len = ").append(imginfo.i()).toString());
        req = (com.tencent.mm.protocal.MMUploadMsgImg.Req)d.f();
        req.b(s);
        req.c(s1);
        req.b(imginfo.h());
        req.a(imginfo.i());
        req.a(a(s1, e));
        req.d(h.d());
        if(ionsceneprogressend != null)
            ionsceneprogressend.a(imginfo.h(), imginfo.i(), this);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static String a(String s, long l)
    {
        boolean flag;
        if(s != null && l >= 0L)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        return (new StringBuilder()).append(s).append(l).toString();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        if(e >= 0L) goto _L2; else goto _L1
_L1:
        int i = -1;
_L4:
        return i;
_L2:
        c = ionsceneend;
        com.tencent.mm.protocal.MMUploadMsgImg.Req req = (com.tencent.mm.protocal.MMUploadMsgImg.Req)d.f();
        ImgInfo imginfo = MMCore.f().k().a(e);
        if(imginfo == null || imginfo.a() == -1)
        {
            i = -1;
        } else
        {
            List list = k_();
            if(list.size() <= 0)
                list.add(new SceneInfo(d.c()));
            ((SceneInfo)list.get(0)).d(imginfo.i());
            int j = imginfo.c();
            if(j >= 100)
            {
                ImgService.c((int)e);
                i = -1;
            } else
            {
                imginfo.b(j + 1);
                imginfo.a(512);
                MMCore.f().k().a(e, imginfo);
                int k = imginfo.i() - imginfo.h();
                if(k > g)
                    k = g;
                byte abyte0[] = FileOperation.a((new StringBuilder()).append(MMCore.f().M()).append(imginfo.j()).toString(), imginfo.h(), k);
                if(abyte0 == null || abyte0.length <= 0)
                {
                    i = -1;
                } else
                {
                    int l = abyte0.length;
                    req.c(l);
                    req.b(imginfo.h());
                    req.a(abyte0);
                    Log.d("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("doScene: dataLen:").append(l).append(" startpos:").append(imginfo.h()).append(" total:").append(req.e()).append(" uin:").append(req.t()).append(" imgid:").append(req.b()).append(" cliver:").append(req.u()).append(" from:").append(req.c()).append(" to:").append(req.d()).toString());
                    i = a(idispatcher, d, ((IOnGYNetEnd) (this)));
                    if(i < 0)
                        ImgService.c((int)e);
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMUploadMsgImg.Resp resp;
        b(i);
        resp = (com.tencent.mm.protocal.MMUploadMsgImg.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("onGYNetEnd errtype:").append(j).append(" errcode:").append(k).append(" dataLen:").append(resp.i()).append(" startpos:").append(resp.h()).append(" total:").append(resp.g()).append(" imgid:").append(resp.f()).append(" from:").append(resp.d()).append(" to:").append(resp.e()).toString());
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("onGYNetEnd failed errtype:").append(j).append(" errcode:").append(k).toString());
        ImgService.c((int)e);
        ImgService.b((int)e);
        MMCore.f().W().a("uploadimg", (new StringBuilder()).append("").append(j).append("-").append(k).toString());
        c.a(j, k, s, this);
_L4:
        return;
_L2:
        g = resp.i();
        if(g > 8192)
            g = 8192;
        ImgInfo imginfo = MMCore.f().k().a(e);
        if(resp.h() < 0 || resp.h() > imginfo.i() && imginfo.i() > 0)
        {
            Log.a("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("onGYNetEnd invalid server return value : startPos = ").append(resp.h()).append(" img totalLen = ").append(imginfo.i()).toString());
            ImgService.c((int)e);
            ImgService.b((int)e);
            MMCore.f().W().a("uploadimg", (new StringBuilder()).append("invalid server return value : startPos = ").append(resp.h()).append(" img totalLen = ").append(imginfo.i()).toString());
            c.a(4, -2, "", this);
        } else
        if(resp.h() < imginfo.h() || imginfo.l() && g <= 0)
        {
            Log.a("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("onGYNetEnd invalid data startPos = ").append(resp.h()).append(" totalLen = ").append(imginfo.i()).append(" off:").append(imginfo.h()).toString());
            ImgService.c((int)e);
            ImgService.b((int)e);
            MMCore.f().W().a("uploadimg", (new StringBuilder()).append("").append(j).append("-").append(k).toString());
            c.a(4, -1, "", this);
        } else
        {
            imginfo.g(resp.h());
            if(imginfo.l())
                imginfo.f(resp.b());
            if(MMCore.f().k().a(e, imginfo) < 0)
            {
                Log.a("MicroMsg.NetSceneUploadMsgImg", (new StringBuilder()).append("update db failed local id:").append(e).append(" server id:").append(imginfo.g()).toString());
                ImgService.c((int)e);
                ImgService.b((int)e);
                MMCore.f().W().a("uploadimg", (new StringBuilder()).append("").append(j).append("-").append(k).toString());
                c.a(3, -1, "", this);
            } else
            {
                if(a != null)
                    a.a(imginfo.h(), imginfo.i(), this);
                if(imginfo.l())
                {
                    h.a(74);
                    h.d(2);
                    h.b(resp.b());
                    h.b(MsgInfoStorageLogic.a(h.h(), resp.j()));
                    MMCore.f().i().a(f, h);
                    ImgService.b((int)e);
                    c.a(0, 0, "", this);
                } else
                if(a(m(), c) < 0)
                {
                    ImgService.b((int)e);
                    c.a(3, -1, "", this);
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 9;
    }

    protected final int c()
    {
        return 100;
    }

    public final int g()
    {
        return (int)e;
    }

    private final IOnSceneProgressEnd a;
    private IOnSceneEnd c;
    private final IReqResp d;
    private long e;
    private long f;
    private int g;
    private MsgInfo h;

    private class MMReqRespUploadMsgImg extends MMReqRespBase
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
            return 9;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/uploadmsgimg";
        }

        private final com.tencent.mm.protocal.MMUploadMsgImg.Req a = new com.tencent.mm.protocal.MMUploadMsgImg.Req();
        private final com.tencent.mm.protocal.MMUploadMsgImg.Resp b = new com.tencent.mm.protocal.MMUploadMsgImg.Resp();

        public MMReqRespUploadMsgImg()
        {
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelimage;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.*;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelimage:
//            ImgInfoStorage, ImgInfo

public class NetSceneGetMsgImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetMsgImg(long l, long l1, IOnSceneProgressEnd ionsceneprogressend)
    {
        boolean flag;
        com.tencent.mm.protocal.MMGetMsgImg.Req req;
        ImgInfo imginfo;
        MsgInfo msginfo;
        if(l >= 0L && l1 >= 0L && ionsceneprogressend != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        a = ionsceneprogressend;
        req = (com.tencent.mm.protocal.MMGetMsgImg.Req)d.f();
        imginfo = MMCore.f().k().a(l);
        msginfo = MMCore.f().i().a(l1);
        e = l;
        req.c(imginfo.h());
        req.b(imginfo.i());
        req.a(msginfo.c());
        req.a(msginfo.h());
        req.b((String)MMCore.f().f().a(2));
        f = 8192;
        ionsceneprogressend.a(imginfo.h(), imginfo.i(), this);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        com.tencent.mm.protocal.MMGetMsgImg.Req req = (com.tencent.mm.protocal.MMGetMsgImg.Req)d.f();
        ImgInfo imginfo = MMCore.f().k().a(e);
        req.c(imginfo.h());
        req.d(f);
        req.b(imginfo.i());
        return a(idispatcher, d, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        c.a(j, k, s, this);
_L4:
        return;
_L2:
        b(i);
        com.tencent.mm.protocal.MMGetMsgImg.Resp resp = (com.tencent.mm.protocal.MMGetMsgImg.Resp)ireqresp.b();
        ImgInfo imginfo = MMCore.f().k().a(e);
        if(resp.h() <= 0)
        {
            Log.a("MicroMsg.NetSceneGetMsgImg", "flood control, malformed data_len");
            c.a(4, -1, "", this);
        } else
        if(resp.i() == null || resp.h() != resp.i().length)
        {
            Log.a("MicroMsg.NetSceneGetMsgImg", "flood control, malformed data is null or dataLen not match with data buf length");
            c.a(4, -1, "", this);
        } else
        if(resp.g() < 0 || resp.g() + resp.h() > resp.f())
        {
            Log.a("MicroMsg.NetSceneGetMsgImg", "flood control, malformed start pos");
            c.a(4, -1, "", this);
        } else
        if(resp.g() != imginfo.h())
        {
            Log.a("MicroMsg.NetSceneGetMsgImg", "flood control, malformed start_pos");
            c.a(4, -1, "", this);
        } else
        if(resp.f() <= 0)
        {
            Log.a("MicroMsg.NetSceneGetMsgImg", "flood control, malformed total_len");
            c.a(4, -1, "", this);
        } else
        {
            List list = k_();
            if(list.size() > 0)
            {
                SceneInfo sceneinfo = (SceneInfo)list.get(0);
                if(sceneinfo != null)
                    sceneinfo.d(resp.f());
            }
            imginfo.h(resp.f());
            imginfo.g(resp.g() + resp.h());
            f = resp.h();
            if(MMCore.f().k().a(e, imginfo) < 0)
            {
                Log.a("MicroMsg.NetSceneGetMsgImg", "onGYNetEnd : update img fail");
                c.a(3, -1, "", this);
            } else
            {
                String s1 = MD5.a(imginfo.j().getBytes());
                FileOperation.a(MMCore.f().M(), s1, ".temp", resp.i());
                Log.d("MicroMsg.NetSceneGetMsgImg", (new StringBuilder()).append("onGYNetEnd : offset = ").append(imginfo.h()).append(" totalLen = ").append(imginfo.i()).toString());
                a.a(imginfo.h(), imginfo.i(), this);
                if(imginfo.m())
                {
                    String s2 = FileOperation.b((new StringBuilder()).append(MMCore.f().M()).append(s1).append(".temp").toString());
                    FileOperation.a(MMCore.f().M(), (new StringBuilder()).append(s1).append(".temp").toString(), (new StringBuilder()).append(s1).append(s2).toString());
                    imginfo.a((new StringBuilder()).append(s1).append(s2).toString());
                    MMCore.f().k().a(e, imginfo);
                    c.a(0, 0, "", this);
                } else
                if(a(m(), c) < 0)
                    c.a(3, -1, s, this);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 8;
    }

    protected final int c()
    {
        return 100;
    }

    public final long g()
    {
        return e;
    }

    private final IOnSceneProgressEnd a;
    private IOnSceneEnd c;
    private final IReqResp d = new MMReqRespGetMsgImg();
    private final long e;
    private int f;

    private class MMReqRespGetMsgImg extends MMReqRespBase
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
            return 8;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getmsgimg";
        }

        private final com.tencent.mm.protocal.MMGetMsgImg.Req a = new com.tencent.mm.protocal.MMGetMsgImg.Req();
        private final com.tencent.mm.protocal.MMGetMsgImg.Resp b = new com.tencent.mm.protocal.MMGetMsgImg.Resp();

        public MMReqRespGetMsgImg()
        {
        }
    }

}

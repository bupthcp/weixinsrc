// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfake;

import android.os.Handler;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelimage.ImgInfo;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import junit.framework.Assert;

public class NetSceneUploadMsgImgFake extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadMsgImgFake(String s, String s1, String s2, IOnSceneProgressEnd ionsceneprogressend)
    {
        boolean flag = true;
        super();
        e = null;
        f = new _cls1();
        c = MMCore.f().k().d(s2);
        Log.c("MicroMsg.NetSceneUploadMsgImgFake", (new StringBuilder()).append("send local msgImg, imgLocalId = ").append(c).append(", fromUserName = ").append(s).append(", toUserName = ").append(s1).append(", origImgPath = ").append(s2).toString());
        e = new MsgInfo();
        e.c(ContactStorageLogic.H(s1));
        e.a(s1);
        e.e(flag);
        e.c((new StringBuilder()).append("THUMBNAIL://").append(c).toString());
        e.b(MsgInfoStorageLogic.c(e.h()));
        d = MMCore.f().i().a(e);
        ImgInfo imginfo;
        if(d < 0L)
            flag = false;
        Assert.assertTrue(flag);
        Log.c("MicroMsg.NetSceneUploadMsgImgFake", (new StringBuilder()).append("NetSceneUploadMsgImgFake: local msgId = ").append(d).toString());
        imginfo = MMCore.f().k().a(c);
        imginfo.d((int)d);
        MMCore.f().k().a(c, imginfo);
        Log.d("MicroMsg.NetSceneUploadMsgImgFake", (new StringBuilder()).append("NetSceneUploadMsgImg: local imgId = ").append(c).append(" img len = ").append(imginfo.i()).toString());
        if(ionsceneprogressend != null)
            ionsceneprogressend.a(imginfo.h(), imginfo.i(), this);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        char c1 = '\uFFFF';
        if(c >= 0L) goto _L2; else goto _L1
_L1:
        return c1;
_L2:
        a = ionsceneend;
        ImgInfo imginfo = MMCore.f().k().a(c);
        if(imginfo != null && imginfo.a() != c1)
        {
            Log.c("MicroMsg.NetSceneUploadMsgImgFake", (new StringBuilder()).append("send local msgimg, imgLocalId = ").append(c).toString());
            f.sendEmptyMessageDelayed(0, 500L);
            c1 = '\u03E7';
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        Log.c("MicroMsg.NetSceneUploadMsgImgFake", (new StringBuilder()).append("recv local msgimg, imgLocalId = ").append(c).toString());
        e.a(74);
        e.d(2);
        e.b(MsgInfoStorageLogic.a(e.h(), System.currentTimeMillis() / 1000L));
        MMCore.f().i().a(d, e);
        a.a(0, 0, "", this);
    }

    public final int b()
    {
        return 9;
    }

    private IOnSceneEnd a;
    private long c;
    private long d;
    private MsgInfo e;
    private Handler f;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            a.a(999, 0, 0, "", null);
        }

        private NetSceneUploadMsgImgFake a;

        _cls1()
        {
            a = NetSceneUploadMsgImgFake.this;
            super();
        }
    }

}

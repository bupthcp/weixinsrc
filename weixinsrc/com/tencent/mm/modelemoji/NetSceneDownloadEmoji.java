// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiInfo, EmojiInfoStorage

public class NetSceneDownloadEmoji extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDownloadEmoji(EmojiInfo emojiinfo)
    {
        boolean flag;
        if(emojiinfo != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        d = emojiinfo;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        com.tencent.mm.protocal.MMDownloadEmoji.Req.EmojiDownloadInfoReq emojidownloadinforeq = new com.tencent.mm.protocal.MMDownloadEmoji.Req.EmojiDownloadInfoReq();
        emojidownloadinforeq.a(d.l());
        emojidownloadinforeq.b(d.k());
        emojidownloadinforeq.a(d.h());
        emojidownloadinforeq.b(d.f());
        ((com.tencent.mm.protocal.MMDownloadEmoji.Req)c.f()).b().clear();
        ((com.tencent.mm.protocal.MMDownloadEmoji.Resp)c.b()).b().clear();
        ((com.tencent.mm.protocal.MMDownloadEmoji.Req)c.f()).a(emojidownloadinforeq);
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        b(i);
        com.tencent.mm.protocal.MMDownloadEmoji.Resp.EmojiDownloadInfoResp emojidownloadinforesp = (com.tencent.mm.protocal.MMDownloadEmoji.Resp.EmojiDownloadInfoResp)((com.tencent.mm.protocal.MMDownloadEmoji.Resp)ireqresp.b()).b().get(0);
        if(emojidownloadinforesp.c() <= 0 || emojidownloadinforesp.b() < d.l())
        {
            Log.a("MicroMsg.NetSceneDownloadEmoji", "flood control, malformed data_len");
            a.a(4, -1, "", this);
        } else
        if(emojidownloadinforesp.d() == null)
        {
            Log.a("MicroMsg.NetSceneDownloadEmoji", "flood control, malformed data is null or dataLen not match with data buf length");
            a.a(4, -1, "", this);
        } else
        {
            d.e(emojidownloadinforesp.c());
            d.a(emojidownloadinforesp.d());
            d.f(d.l() + emojidownloadinforesp.d().length);
            MMCore.f().l().a(d);
            if(d.l() >= d.k())
            {
                d.f(0);
                d.g(EmojiInfo.l);
                MMCore.f().l().a(d);
                a.a(0, 0, "", this);
            } else
            if(a(m(), a) < 0)
                a.a(3, -1, s, this);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 63;
    }

    protected final int c()
    {
        return 100;
    }

    public final EmojiInfo d()
    {
        return d;
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespDownloadEmoji();
    private final EmojiInfo d;

    private class MMReqRespDownloadEmoji extends MMReqRespBase
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
            return 63;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/receiveemoji";
        }

        private final com.tencent.mm.protocal.MMDownloadEmoji.Req a = new com.tencent.mm.protocal.MMDownloadEmoji.Req();
        private final com.tencent.mm.protocal.MMDownloadEmoji.Resp b = new com.tencent.mm.protocal.MMDownloadEmoji.Resp();

        public MMReqRespDownloadEmoji()
        {
        }
    }

}

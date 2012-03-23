// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import java.util.LinkedList;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiInfo, EmojiInfoStorage

public class NetSceneUploadEmoji extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadEmoji(String s, String s1, EmojiInfo emojiinfo)
    {
        boolean flag;
        EmojiUploadInfoReq emojiuploadinforeq;
        flag = true;
        super();
        e = flag;
        boolean flag1;
        com.tencent.mm.protocal.MMUploadEmoji.Req req;
        if(s1 != null && s1.length() > 0 && emojiinfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        d = emojiinfo;
        a = new MMReqRespUploadEmoji();
        emojiinfo.b(MMCore.c());
        req = (com.tencent.mm.protocal.MMUploadEmoji.Req)a.f();
        emojiuploadinforeq = new EmojiUploadInfoReq();
        emojiuploadinforeq.a(emojiinfo.f());
        emojiuploadinforeq.e(s);
        emojiuploadinforeq.b(s1);
        emojiuploadinforeq.b(emojiinfo.k());
        emojiuploadinforeq.c(emojiinfo.o());
        emojiuploadinforeq.c(emojiinfo.j());
        if(s1.endsWith("@chatroom"))
            flag = 2;
        if(emojiinfo.i() != EmojiInfo.e) goto _L2; else goto _L1
_L1:
        emojiuploadinforeq.d((new StringBuilder()).append("56,2,").append(flag).toString());
_L4:
        req.a.a(emojiuploadinforeq);
        req.a.a(req.a.c().size());
        return;
_L2:
        if(emojiinfo.i() == EmojiInfo.d)
            emojiuploadinforeq.d((new StringBuilder()).append("56,1,").append(flag).toString());
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int i = 8192;
        c = ionsceneend;
        EmojiUploadInfoReq emojiuploadinforeq = (EmojiUploadInfoReq)((com.tencent.mm.protocal.MMUploadEmoji.Req)a.f()).a.c().get(0);
        int k;
        if(e)
        {
            Log.d("MicroMsg.NetSceneUploadEmoji", (new StringBuilder()).append("dispatcher, firstSend. md5=").append(emojiuploadinforeq.c()).toString());
            emojiuploadinforeq.a(new SKBuiltinBuffer_t()).a(0);
            k = a(idispatcher, a, ((IOnGYNetEnd) (this)));
        } else
        {
            int j = d.k() - d.l();
            byte abyte0[];
            if(j <= i)
                i = j;
            abyte0 = d.a(d.l(), i);
            if(abyte0 == null || abyte0.length <= 0)
            {
                Log.a("MicroMsg.NetSceneUploadEmoji", "readFromFile is null.");
                k = -1;
            } else
            {
                int l = abyte0.length;
                emojiuploadinforeq.a(d.l());
                emojiuploadinforeq.a((new SKBuiltinBuffer_t()).a(ByteString.a(abyte0)).a(abyte0.length));
                Log.d("MicroMsg.NetSceneUploadEmoji", (new StringBuilder()).append("dispatcher, start:").append(d.l()).append(", total:").append(d.k()).append(", len:").append(l).toString());
                k = a(idispatcher, a, ((IOnGYNetEnd) (this)));
            }
        }
        return k;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneUploadEmoji", (new StringBuilder()).append("onGYNetEnd failed errtype:").append(j).append(" errcode:").append(k).toString());
        MMCore.f().W().a("uploademoji", (new StringBuilder()).append("").append(j).append("-").append(k).toString());
        c.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMUploadEmoji.Req req = (com.tencent.mm.protocal.MMUploadEmoji.Req)ireqresp.f();
        com.tencent.mm.protocal.MMUploadEmoji.Resp resp = (com.tencent.mm.protocal.MMUploadEmoji.Resp)ireqresp.b();
        if(req.a.c().size() != resp.a.d().size())
        {
            Log.a("MicroMsg.NetSceneUploadEmoji", (new StringBuilder()).append("onGYNetEnd failed. RequestSize not equal RespSize. req size:").append(resp.a.d().size()).append(", resp size:").append(req.a.c().size()).toString());
            MMCore.f().W().a("uploademoji", "RequestSize not equal RespSize");
            c.a(j, k, s, this);
        } else
        {
            EmojiUploadInfoResp emojiuploadinforesp = (EmojiUploadInfoResp)resp.a.d().get(0);
            if(!emojiuploadinforesp.f() || !emojiuploadinforesp.e().equals(d.f()) || emojiuploadinforesp.c() < d.l())
            {
                Log.a("MicroMsg.NetSceneUploadEmoji", (new StringBuilder()).append("invalid server return value; start=").append(emojiuploadinforesp.c()).append(", size=").append(d.k()).toString());
                MMCore.f().W().a("uploadimg", "invalid server return value");
                c.a(4, -2, "", this);
            } else
            {
                if(e)
                    e = false;
                if(emojiuploadinforesp.c() >= emojiuploadinforesp.d())
                {
                    d.f(0);
                    d.g(EmojiInfo.l);
                    MMCore.f().l().a(d);
                    c.a(j, k, "", this);
                } else
                {
                    d.f(emojiuploadinforesp.c());
                    MMCore.f().l().a(d);
                    if(a(m(), c) < 0)
                        c.a(3, -1, "", this);
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 62;
    }

    protected final int c()
    {
        return 100;
    }

    private final IReqResp a;
    private IOnSceneEnd c;
    private EmojiInfo d;
    private boolean e;

    private class MMReqRespUploadEmoji extends MMReqRespBase
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
            return 62;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/sendemoji";
        }

        private final com.tencent.mm.protocal.MMUploadEmoji.Req a = new com.tencent.mm.protocal.MMUploadEmoji.Req();
        private final com.tencent.mm.protocal.MMUploadEmoji.Resp b = new com.tencent.mm.protocal.MMUploadEmoji.Resp();

        public MMReqRespUploadEmoji()
        {
        }
    }

}

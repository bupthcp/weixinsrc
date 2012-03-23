// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelshake;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import com.tencent.mm.storage.ContactStorage;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelshake:
//            ShakeItemStorage, ShakeItem

public class NetSceneShakeGet extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneShakeGet(byte abyte0[])
    {
        c = new MMReqRespShakeGet();
        com.tencent.mm.protocal.MMShakeGet.Req req = (com.tencent.mm.protocal.MMShakeGet.Req)c.f();
        req.a.a((new SKBuiltinBuffer_t()).a(ByteString.a(abyte0)).a(abyte0.length));
        req.a.c();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        Log.d("MicroMsg.NetSceneShakeGet", "doScene");
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int k, int l, int i1, String s, IReqResp ireqresp)
    {
        Log.d("MicroMsg.NetSceneShakeGet", (new StringBuilder()).append("onGYNetEnd errType:").append(l).append(" errCode:").append(i1).toString());
        b(k);
        com.tencent.mm.protocal.MMShakeGet.Resp resp = (com.tencent.mm.protocal.MMShakeGet.Resp)ireqresp.b();
        d = new LinkedList();
        e = resp.a.g();
        f = resp.a.h();
        g = resp.a.f();
        int j1 = resp.a.d();
        Log.d("MicroMsg.NetSceneShakeGet", (new StringBuilder()).append("size:").append(j1).toString());
        ContactStorage contactstorage = MMCore.f().h();
        if(j1 > 0)
        {
            ShakeItemStorage shakeitemstorage = MMCore.f().I();
            shakeitemstorage.e();
            shakeitemstorage.a(j1);
            AvatarStorage avatarstorage = MMCore.f().y();
            int k1 = j1 + -1;
            while(k1 >= 0) 
            {
                ShakeItem shakeitem = new ShakeItem((ShakeGetItem)resp.a.e().get(k1));
                String s1 = shakeitem.c();
                boolean flag;
                int l1;
                if(shakeitem.k() > 0)
                    flag = true;
                else
                    flag = false;
                AvatarLogic.a(s1, flag);
                AvatarLogic.a(shakeitem.c(), shakeitem.j());
                if(shakeitem.j() != 4)
                    try
                    {
                        avatarstorage.a(shakeitem.c(), shakeitem.l().d().b());
                    }
                    catch(Exception exception)
                    {
                        Log.a("MicroMsg.NetSceneShakeGet", "user not set imgbuf");
                    }
                if(contactstorage.a(shakeitem.c()))
                    l1 = 1;
                else
                    l1 = 0;
                shakeitem.h(l1);
                shakeitemstorage.a(shakeitem);
                d.add(shakeitem);
                Log.e("MicroMsg.NetSceneShakeGet", (new StringBuilder()).append("item info: ").append(shakeitem.c()).append(" ").append(shakeitem.d()).toString());
                k1--;
            }
        }
        a.a(l, i1, s, this);
    }

    public final int b()
    {
        return 52;
    }

    public final List g()
    {
        return d;
    }

    public final int h()
    {
        return e;
    }

    public final int i()
    {
        return f;
    }

    public final String j()
    {
        return g;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private List d;
    private int e;
    private int f;
    private String g;

    private class MMReqRespShakeGet extends MMReqRespBase
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
            return 52;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/shakeget";
        }

        private com.tencent.mm.protocal.MMShakeGet.Req a;
        private com.tencent.mm.protocal.MMShakeGet.Resp b;

        public MMReqRespShakeGet()
        {
            a = new com.tencent.mm.protocal.MMShakeGet.Req();
            b = new com.tencent.mm.protocal.MMShakeGet.Resp();
        }
    }

}

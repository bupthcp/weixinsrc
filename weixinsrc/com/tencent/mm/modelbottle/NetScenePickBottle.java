// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbottle;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import java.util.Map;

// Referenced classes of package com.tencent.mm.modelbottle:
//            BottleLogic

public class NetScenePickBottle extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetScenePickBottle()
    {
        d = false;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMPickBottle.Resp resp;
        b(i);
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("onGYNetEnd type:").append(j).append(" code:").append(k).toString());
        if(j == 4 && (k == -2002 || k == -56))
        {
            BottleLogic.a(0);
            BottleLogic.b(0);
        }
        resp = (com.tencent.mm.protocal.MMPickBottle.Resp)ireqresp.b();
        if(j == 4)
            switch(k)
            {
            default:
                BottleLogic.b(resp.h());
                BottleLogic.a(resp.g());
                break;

            case -56: 
                break;
            }
        if(j != 0 || k != 0) goto _L2; else goto _L1
_L1:
        d = true;
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("bottle pack:pack:").append(resp.h()).append(" throw:").append(resp.g()).toString());
        String as[] = resp.c().split(":");
        if(as != null && as.length >= 2)
        {
            String s1 = as[0];
            Contact contact = MMCore.f().h().c(s1);
            if(contact == null || !contact.s().equals(s1))
            {
                contact.a(s1);
                contact.b(resp.e());
                contact.i(3);
                AvatarLogic.a(s1, 3);
                try
                {
                    Map map = Util.b(resp.d(), "userinfo");
                    if(map != null)
                    {
                        contact.c(Integer.parseInt((String)map.get(".userinfo.$sex")));
                        contact.h((String)map.get(".userinfo.$signature"));
                        contact.j((String)map.get(".userinfo.$city"));
                        contact.i((String)map.get(".userinfo.$province"));
                        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("user:").append(s1).append(" sig:").append(contact.K()).append(" sex").append(contact.p()).append(" city:").append(contact.M()).append(" prov:").append(contact.L()).toString());
                    }
                }
                catch(Exception exception)
                {
                    Log.a("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("Set Contact failed ").append(exception.getMessage()).append(" user:").append(s1).toString());
                }
                MMCore.f().h().a(contact);
                AvatarLogic.a(s1, true);
            }
        }
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getBottleType ").append(resp.a()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getMsgType ").append(resp.b()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getBottleInfo ").append(resp.c()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getUserInfo ").append(resp.d()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getNickName ").append(resp.e()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getUserStatus ").append(resp.f()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getThrowCount ").append(resp.g()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getPickCount ").append(resp.h()).toString());
        Log.d("MicroMsg.NetScenePickBottle", (new StringBuilder()).append("getDistance ").append(resp.i()).toString());
_L4:
        a.a(j, k, s, this);
        return;
_L2:
        if(k == -56)
        {
            BottleLogic.b(resp.h());
            BottleLogic.b(resp.g());
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 49;
    }

    public final boolean f()
    {
        return d;
    }

    final com.tencent.mm.protocal.MMPickBottle.Resp g()
    {
        return (com.tencent.mm.protocal.MMPickBottle.Resp)c.b();
    }

    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespPickBottle();
    private boolean d;

    private class MMReqRespPickBottle extends MMReqRespBase
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
            return 49;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/pickbottle";
        }

        private com.tencent.mm.protocal.MMPickBottle.Req a;
        private com.tencent.mm.protocal.MMPickBottle.Resp b;

        public MMReqRespPickBottle()
        {
            a = new com.tencent.mm.protocal.MMPickBottle.Req();
            b = new com.tencent.mm.protocal.MMPickBottle.Resp();
        }
    }

}

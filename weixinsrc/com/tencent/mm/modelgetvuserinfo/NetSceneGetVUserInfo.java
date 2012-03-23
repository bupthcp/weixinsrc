// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetvuserinfo;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.io.FileOutputStream;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelgetvuserinfo:
//            VUserInfoStorage, VUserInfo

public class NetSceneGetVUserInfo extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetVUserInfo()
    {
        this((byte)0);
    }

    private NetSceneGetVUserInfo(byte byte0)
    {
        c = new MMReqRespGetVUserInfo();
        ((com.tencent.mm.protocal.MMGetVUserInfo.Req)c.f()).a(0);
        Log.d("MicroMsg.NetSceneGetVUserInfo", (new StringBuilder()).append(" init version").append(0).toString());
    }

    private static boolean a(int i, boolean flag, byte abyte0[])
    {
        FileOutputStream fileoutputstream = new FileOutputStream(MMCore.f().R().a(i, flag));
        fileoutputstream.write(abyte0);
        fileoutputstream.close();
        boolean flag1 = true;
_L2:
        return flag1;
        Exception exception;
        exception;
        flag1 = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetVUserInfo", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        MMCore.f().R().a();
        com.tencent.mm.protocal.MMGetVUserInfo.Resp resp = (com.tencent.mm.protocal.MMGetVUserInfo.Resp)ireqresp.b();
        for(int l = 0; l < resp.d().size(); l++)
        {
            com.tencent.mm.protocal.MMGetVUserInfo.VUserInfo vuserinfo = (com.tencent.mm.protocal.MMGetVUserInfo.VUserInfo)resp.d().get(l);
            VUserInfo vuserinfo1 = new VUserInfo();
            vuserinfo1.a(vuserinfo.a());
            vuserinfo1.a(vuserinfo.b());
            MMCore.f().R().a(vuserinfo1);
            a(vuserinfo.a(), true, vuserinfo.d());
            a(vuserinfo.a(), false, vuserinfo.c());
        }

        a.a(j, k, s, this);
    }

    public final int b()
    {
        return 57;
    }

    private IOnSceneEnd a;
    private final IReqResp c;

    private class MMReqRespGetVUserInfo extends MMReqRespBase
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
            return 57;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getvuserinfo";
        }

        private final com.tencent.mm.protocal.MMGetVUserInfo.Req a = new com.tencent.mm.protocal.MMGetVUserInfo.Req();
        private final com.tencent.mm.protocal.MMGetVUserInfo.Resp b = new com.tencent.mm.protocal.MMGetVUserInfo.Resp();

        public MMReqRespGetVUserInfo()
        {
        }
    }

}

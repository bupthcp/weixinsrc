// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modeltheme;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.MTimerHandler;

// Referenced classes of package com.tencent.mm.modeltheme:
//            ThemeInfo, ThemeInfoStorage, ThemeLogic

public class NetSceneDownloadTheme extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDownloadTheme(int i)
    {
        e = new MTimerHandler(new _cls1(), false);
        d = i;
        ThemeInfo themeinfo = new ThemeInfo();
        themeinfo.f(1004);
        themeinfo.b(i);
        themeinfo.a(16);
        MMCore.f().Q().b(themeinfo);
    }

    static int a(NetSceneDownloadTheme netscenedownloadtheme)
    {
        return netscenedownloadtheme.d;
    }

    static IOnSceneEnd b(NetSceneDownloadTheme netscenedownloadtheme)
    {
        return netscenedownloadtheme.a;
    }

    static IReqResp c(NetSceneDownloadTheme netscenedownloadtheme)
    {
        return netscenedownloadtheme.c;
    }

    static IDispatcher d(NetSceneDownloadTheme netscenedownloadtheme)
    {
        return netscenedownloadtheme.m();
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int i = -1;
        a = ionsceneend;
        ThemeInfo themeinfo = ThemeLogic.a(d);
        if(themeinfo == null)
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("doScene get Theme failed id:").append(d).toString());
        else
        if(themeinfo.g() != 1004)
        {
            ThemeInfo themeinfo1 = ThemeLogic.a(d);
            if(themeinfo1 != null && themeinfo1.g() == 1005)
            {
                themeinfo1.f(1006);
                themeinfo1.a(16);
                MMCore.f().Q().b(themeinfo1);
            }
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("doScene get Theme stat failed id:").append(d).append(" stat:").append(themeinfo.g()).toString());
        } else
        if(themeinfo.e() <= 0)
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("doScene Theme size err id:").append(d).append(" size:").append(themeinfo.e()).toString());
        else
        if(themeinfo.f() >= themeinfo.e())
        {
            ThemeInfoStorage.f(d);
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("doScene Theme off err id:").append(d).append(" size:").append(themeinfo.e()).append(" off:").append(themeinfo.f()).toString());
        } else
        {
            c = new MMReqRespDownloadTheme();
            com.tencent.mm.protocal.MMDownLoadTheme.Req req = (com.tencent.mm.protocal.MMDownLoadTheme.Req)c.f();
            req.d(themeinfo.f());
            req.e(64000);
            req.a(themeinfo.c());
            req.b(0);
            i = a(idispatcher, c, ((IOnGYNetEnd) (this)));
        }
        return i;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMDownLoadTheme.Req req = (com.tencent.mm.protocal.MMDownLoadTheme.Req)ireqresp.f();
        ThemeInfo themeinfo = ThemeLogic.a(d);
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(themeinfo == null)
        {
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("securityVerificationChecked get Theme failed id:").append(d).toString());
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        if(req.c() != d || req.h() != themeinfo.f() || req.h() >= themeinfo.e() || req.i() != 64000 || themeinfo.e() <= 0 || themeinfo.g() != 1004)
        {
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("securityVerificationChecked Theme failed id:").append(d).toString());
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        {
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        }
        return securitycheckstatus;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("onGYNetEnd id:").append(d).append(" + id:").append(i).append(" errtype:").append(j).append(" errCode:").append(k).toString());
        if(j != 0 && k != 0)
        {
            a.a(j, k, s, this);
        } else
        {
            com.tencent.mm.protocal.MMDownLoadTheme.Resp resp = (com.tencent.mm.protocal.MMDownLoadTheme.Resp)ireqresp.b();
            if(resp.b() == null || resp.b().length <= 0)
            {
                Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("onGYNetEnd get Theme failed id:").append(d).toString());
                a.a(3, -1, s, this);
            } else
            {
                e.a(10L);
            }
        }
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        ThemeInfoStorage.f(d);
    }

    public final int b()
    {
        return 54;
    }

    protected final int c()
    {
        return 80;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private int d;
    private MTimerHandler e;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            ThemeInfo themeinfo = ThemeLogic.a(NetSceneDownloadTheme.a(a));
            if(themeinfo != null) goto _L2; else goto _L1
_L1:
            Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("onTimerExpired get Theme failed id:").append(NetSceneDownloadTheme.a(a)).toString());
            NetSceneDownloadTheme.b(a).a(3, -1, "", a);
_L4:
            return false;
_L2:
            com.tencent.mm.protocal.MMDownLoadTheme.Resp resp = (com.tencent.mm.protocal.MMDownLoadTheme.Resp)NetSceneDownloadTheme.c(a).b();
            String s = MMCore.f().Q().a(NetSceneDownloadTheme.a(a));
            int i = ThemeInfoStorage.a(themeinfo.f(), s, resp.b());
            if(i != 0)
            {
                ThemeInfoStorage.f(NetSceneDownloadTheme.a(a));
                Log.a("MicroMsg.NetSceneDownloadTheme", (new StringBuilder()).append("onTimerExpired write file ret:").append(i).append(" id:").append(themeinfo.c()).toString());
            } else
            {
                themeinfo.e(themeinfo.f() + resp.b().length);
                themeinfo.a(8);
                boolean flag;
                if(themeinfo.f() >= themeinfo.e())
                {
                    themeinfo.f(1003);
                    themeinfo.a(0x10 | themeinfo.b());
                    flag = true;
                } else
                {
                    flag = false;
                }
                MMCore.f().Q().b(themeinfo);
                if(flag)
                    NetSceneDownloadTheme.b(a).a(0, 0, "", a);
                else
                if(a.a(NetSceneDownloadTheme.d(a), NetSceneDownloadTheme.b(a)) == -1)
                    NetSceneDownloadTheme.b(a).a(3, -1, "doScene failed", a);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private NetSceneDownloadTheme a;

        _cls1()
        {
            a = NetSceneDownloadTheme.this;
            super();
        }
    }


    private class MMReqRespDownloadTheme extends MMReqRespBase
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
            return 54;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/downloadtheme";
        }

        private com.tencent.mm.protocal.MMDownLoadTheme.Req a;
        private com.tencent.mm.protocal.MMDownLoadTheme.Resp b;

        public MMReqRespDownloadTheme()
        {
            a = new com.tencent.mm.protocal.MMDownLoadTheme.Req();
            b = new com.tencent.mm.protocal.MMDownLoadTheme.Resp();
        }
    }

}

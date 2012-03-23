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
import java.util.List;

// Referenced classes of package com.tencent.mm.modeltheme:
//            ThemeInfoStorage, ThemeInfo, ThemeLogic

public class NetSceneGetThemeList extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetThemeList()
    {
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        c = new MMReqRespGetThemeList();
        com.tencent.mm.protocal.MMGetThemeList.Req req = (com.tencent.mm.protocal.MMGetThemeList.Req)c.f();
        List list = MMCore.f().Q().b();
        if(list != null)
        {
            for(int i = 0; i < list.size(); i++)
            {
                com.tencent.mm.protocal.MMDownLoadTheme.MMTheme mmtheme = new com.tencent.mm.protocal.MMDownLoadTheme.MMTheme();
                mmtheme.a(((ThemeInfo)list.get(i)).c());
                mmtheme.b(((ThemeInfo)list.get(i)).d());
                req.b().add(mmtheme);
            }

        }
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetThemeList", (new StringBuilder()).append("onGYNetEnd id:").append(i).append(" errtype:").append(j).append(" errCode:").append(k).toString());
        if(j == 0 || k == 0) goto _L2; else goto _L1
_L1:
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMGetThemeList.Resp resp = (com.tencent.mm.protocal.MMGetThemeList.Resp)ireqresp.b();
        int l = 0;
        while(l < resp.b().size()) 
        {
            com.tencent.mm.protocal.MMDownLoadTheme.MMTheme mmtheme = (com.tencent.mm.protocal.MMDownLoadTheme.MMTheme)resp.b().get(l);
            ThemeInfo themeinfo = ThemeLogic.a(mmtheme.a());
            if(themeinfo == null || mmtheme.c() != themeinfo.d())
            {
                ThemeInfoStorage.a(MMCore.f().Q().a(mmtheme.a()));
                ThemeInfo themeinfo1 = new ThemeInfo();
                themeinfo1.e(0);
                themeinfo1.b(mmtheme.b());
                themeinfo1.f(1006);
                themeinfo1.b(mmtheme.a());
                themeinfo1.a(mmtheme.d());
                themeinfo1.d(mmtheme.e());
                themeinfo1.c(mmtheme.c());
                themeinfo1.a(-1);
                String s1;
                if(themeinfo != null)
                    MMCore.f().Q().b(themeinfo1);
                else
                    MMCore.f().Q().a(themeinfo1);
            }
            if(mmtheme.f() != null && mmtheme.f().length > 0)
            {
                s1 = MMCore.f().Q().b(mmtheme.a());
                ThemeInfoStorage.a(s1);
                ThemeInfoStorage.a(0, s1, mmtheme.f());
            }
            l++;
        }
        if(resp.d() > 0)
        {
            if(a(m(), a) == -1)
                a.a(3, -1, "doScene failed", this);
        } else
        {
            a.a(j, k, s, this);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
    }

    public final int b()
    {
        return 55;
    }

    protected final int c()
    {
        return 20;
    }

    private IOnSceneEnd a;
    private IReqResp c;

    private class MMReqRespGetThemeList extends MMReqRespBase
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
            return 55;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getthemelist";
        }

        private com.tencent.mm.protocal.MMGetThemeList.Req a;
        private com.tencent.mm.protocal.MMGetThemeList.Resp b;

        public MMReqRespGetThemeList()
        {
            a = new com.tencent.mm.protocal.MMGetThemeList.Req();
            b = new com.tencent.mm.protocal.MMGetThemeList.Resp();
        }
    }

}

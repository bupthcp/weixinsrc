// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpackage;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelpackage:
//            PackageInfo, PackageInfoStorage

public class NetSceneGetPackageList extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetPackageList(int i)
    {
        d = i;
        e = new ArrayList();
    }

    private PackageInfo a(com.tencent.mm.protocal.MMDownloadPackage.MMPackage mmpackage)
    {
        PackageInfo packageinfo = new PackageInfo();
        packageinfo.b(mmpackage.a());
        packageinfo.c(mmpackage.b());
        packageinfo.a(mmpackage.c());
        packageinfo.d(mmpackage.d());
        packageinfo.b(mmpackage.f());
        packageinfo.f(5);
        packageinfo.e(d);
        return packageinfo;
    }

    private void a(com.tencent.mm.protocal.MMGetPackageList.Resp resp)
    {
        String s = MMCore.f().T().a();
        int i = 0;
        while(i < resp.d().size()) 
        {
            com.tencent.mm.protocal.MMDownloadPackage.MMPackage mmpackage = (com.tencent.mm.protocal.MMDownloadPackage.MMPackage)resp.d().get(i);
            PackageInfo packageinfo = MMCore.f().T().a(mmpackage.a(), d);
            if(packageinfo == null || packageinfo.c() != mmpackage.b())
            {
                StringBuilder stringbuilder = (new StringBuilder()).append(s);
                MMCore.f().T();
                FileOperation.d(stringbuilder.append(PackageInfoStorage.c(mmpackage.a(), d)).toString());
                PackageInfo packageinfo1 = a(mmpackage);
                packageinfo1.a(-1);
                String s1;
                if(packageinfo == null)
                    MMCore.f().T().a(packageinfo1);
                else
                    MMCore.f().T().b(packageinfo1);
            }
            if(mmpackage.e() != null && mmpackage.e().length > 0)
            {
                MMCore.f().T();
                s1 = PackageInfoStorage.b(mmpackage.a(), d);
                FileOperation.d((new StringBuilder()).append(s).append(s1).toString());
                FileOperation.a(s, s1, mmpackage.e());
            }
            i++;
        }
    }

    private void a(List list)
    {
        int i = 0;
        while(i < list.size()) 
        {
            com.tencent.mm.protocal.MMDownloadPackage.MMPackage mmpackage = (com.tencent.mm.protocal.MMDownloadPackage.MMPackage)list.get(i);
            PackageInfo packageinfo = MMCore.f().T().a(mmpackage.a(), d);
            PackageInfo packageinfo1 = a(mmpackage);
            packageinfo1.a(-1);
            if(packageinfo == null)
                MMCore.f().T().a(packageinfo1);
            else
                MMCore.f().T().b(packageinfo1);
            if(mmpackage.e() != null && mmpackage.e().length > 0)
                e.add(new String(mmpackage.e()));
            i++;
        }
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        c = new MMReqRespGetPackageList();
        com.tencent.mm.protocal.MMGetPackageList.Req req = (com.tencent.mm.protocal.MMGetPackageList.Req)c.f();
        PackageInfo apackageinfo[] = MMCore.f().T().d(d);
        if(apackageinfo != null && apackageinfo.length > 0)
        {
            for(int i = 0; i < apackageinfo.length; i++)
            {
                com.tencent.mm.protocal.MMDownloadPackage.MMPackage mmpackage = new com.tencent.mm.protocal.MMDownloadPackage.MMPackage();
                mmpackage.a(apackageinfo[i].b());
                mmpackage.b(apackageinfo[i].c());
                req.c().add(mmpackage);
            }

        }
        req.a(req.c().size());
        req.b(d);
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        Log.d("MicroMsg.NetSceneGetPackageList", (new StringBuilder()).append("onGYNetEnd id:").append(i).append(" errtype:").append(j).append(" errCode:").append(k).toString());
        if(j == 0 || k == 0) goto _L2; else goto _L1
_L1:
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMGetPackageList.Resp resp = (com.tencent.mm.protocal.MMGetPackageList.Resp)ireqresp.b();
        if(resp.g() != d)
        {
            Log.a("MicroMsg.NetSceneGetPackageList", "packageType is not consistent");
            a.a(3, -1, "", this);
        } else
        {
            Log.e("MicroMsg.NetSceneGetPackageList", (new StringBuilder()).append("list size:").append(resp.d().size()).toString());
            if(d == 2)
                a(resp.d());
            if(d == 1)
                a(resp);
            int l = MMCore.f().T().c(d);
            if(resp.e() > 0 && l + resp.d().size() < resp.f())
            {
                if(a(m(), a) == -1)
                    a.a(3, -1, "doScene failed", this);
            } else
            {
                if(d == 2 && e != null && e.size() > 0)
                    MMCore.f().l().a(e);
                a.a(j, k, s, this);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
    }

    public final int b()
    {
        return 64;
    }

    protected final int c()
    {
        return 20;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private int d;
    private List e;

    private class MMReqRespGetPackageList extends MMReqRespBase
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
            return 64;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getpackagelist";
        }

        private com.tencent.mm.protocal.MMGetPackageList.Req a;
        private com.tencent.mm.protocal.MMGetPackageList.Resp b;

        public MMReqRespGetPackageList()
        {
            a = new com.tencent.mm.protocal.MMGetPackageList.Req();
            b = new com.tencent.mm.protocal.MMGetPackageList.Resp();
        }
    }

}

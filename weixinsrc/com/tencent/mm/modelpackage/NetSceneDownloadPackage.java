// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpackage;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelpackage:
//            PackageInfoStorage, PackageInfo, NetSceneGetPackageList

public class NetSceneDownloadPackage extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneDownloadPackage(int i)
    {
        d = i;
        e = 1;
        f = 0;
        PackageInfo packageinfo = MMCore.f().T().a(i, 1);
        if(packageinfo == null)
        {
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("doScene get info null, id:").append(i).toString());
        } else
        {
            packageinfo.f(3);
            packageinfo.a(64);
            MMCore.f().T().b(packageinfo);
            PackageInfoStorage packageinfostorage = MMCore.f().T();
            FileOperation.d((new StringBuilder()).append(packageinfostorage.a()).append(PackageInfoStorage.c(i, 1)).toString());
        }
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        int i = -1;
        a = ionsceneend;
        PackageInfo packageinfo = MMCore.f().T().a(d, e);
        if(packageinfo == null)
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("doScene get Theme failed id:").append(d).append(" type:").append(e).toString());
        else
        if(packageinfo.f() != 3)
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("doScene get Theme stat failed id:").append(d).append(" stat:").append(packageinfo.f()).toString());
        else
        if(packageinfo.d() <= 0)
        {
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("doScene Theme size err id:").append(d).append(" size:").append(packageinfo.d()).toString());
        } else
        {
            c = new MMReqRespDownloadPackage();
            com.tencent.mm.protocal.MMDownloadPackage.Req req = (com.tencent.mm.protocal.MMDownloadPackage.Req)c.f();
            com.tencent.mm.protocal.MMDownloadPackage.MMPackage mmpackage = new com.tencent.mm.protocal.MMDownloadPackage.MMPackage();
            mmpackage.a(packageinfo.b());
            mmpackage.b(packageinfo.c());
            ArrayList arraylist = new ArrayList();
            arraylist.add(mmpackage);
            req.a(arraylist);
            req.a(f);
            req.b(0x10000);
            req.c(e);
            i = a(idispatcher, c, ((IOnGYNetEnd) (this)));
        }
        return i;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMDownloadPackage.Req req = (com.tencent.mm.protocal.MMDownloadPackage.Req)ireqresp.f();
        PackageInfo packageinfo = MMCore.f().T().a(d, e);
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(packageinfo == null)
        {
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("securityVerificationChecked get Theme failed id:").append(d).toString());
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        if(((com.tencent.mm.protocal.MMDownloadPackage.MMPackage)req.b().get(0)).a() != d || req.c() != f || req.c() >= packageinfo.d() || req.d() != 0x10000 || packageinfo.d() <= 0 || packageinfo.f() != 3)
        {
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("securityVerificationChecked Theme failed id:").append(d).toString());
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
        Log.d("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("onGYNetEnd id:").append(d).append(" + id:").append(i).append(" errtype:").append(j).append(" errCode:").append(k).toString());
        if(j == 0 || k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("onGYNetEnd, errType = ").append(j).append(", errCode = ").append(k).toString());
        MMCore.f().T().f(d, e);
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMDownloadPackage.Resp resp = (com.tencent.mm.protocal.MMDownloadPackage.Resp)ireqresp.b();
        if(resp.d() != e)
        {
            Log.a("MicroMsg.NetSceneDownloadPackage", "packageType is not consistent");
            MMCore.f().T().f(d, e);
            a.a(3, -1, "", this);
        } else
        if(resp.b() == null || resp.b().length == 0)
        {
            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("onGYNetEnd get pkgBuf failed id:").append(d).toString());
            MMCore.f().T().f(d, e);
            a.a(3, -1, s, this);
        } else
        {
            PackageInfo packageinfo = MMCore.f().T().a(d, e);
            if(packageinfo == null)
            {
                Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("onGYNetEnd info is null, pkgId = ").append(d).toString());
                MMCore.f().T().f(d, e);
                a.a(3, -1, s, this);
            } else
            if(packageinfo.d() != resp.e())
            {
                Log.a("MicroMsg.NetSceneDownloadPackage", "onGYNetEnd totalSize is incorrect");
                MMCore.f().T().f(d, e);
                NetSceneGetPackageList netscenegetpackagelist = new NetSceneGetPackageList(e);
                MMCore.g().b(netscenegetpackagelist);
                a.a(3, -1, s, this);
            } else
            {
                String s1 = MMCore.f().T().a();
                MMCore.f().T();
                String s2 = PackageInfoStorage.c(d, e);
                int l = FileOperation.a(s1, s2, resp.b());
                if(l != 0)
                {
                    MMCore.f().T().f(d, e);
                    Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("onGYNetEnd write file fail, ret = ").append(l).toString());
                    a.a(3, -1, s, this);
                } else
                {
                    f = f + resp.b().length;
                    if(f >= packageinfo.d())
                    {
                        String s3 = MMCore.f().T().d(d, e);
                        int i1 = Util.c((new StringBuilder()).append(s1).append(s2).toString(), s3);
                        if(i1 < 0)
                        {
                            Log.a("MicroMsg.NetSceneDownloadPackage", (new StringBuilder()).append("unzip fail, ret = ").append(i1).append(", zipFilePath = ").append(s1).append(s2).append(", unzipPath = ").append(s3).toString());
                            MMCore.f().T().f(d, e);
                            a.a(3, 0, "unzip fail", this);
                        } else
                        {
                            packageinfo.f(2);
                            packageinfo.a(64);
                            MMCore.f().T().b(packageinfo);
                            a.a(0, 0, "", this);
                        }
                    } else
                    if(a(m(), a) < 0)
                    {
                        MMCore.f().T().f(d, e);
                        a.a(3, -1, s, this);
                    }
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(com.tencent.mm.modelbase.NetSceneBase.SecurityCheckError securitycheckerror)
    {
        MMCore.f().T().f(d, e);
    }

    public final int b()
    {
        return 65;
    }

    protected final int c()
    {
        return 80;
    }

    public final int f()
    {
        return d;
    }

    private IOnSceneEnd a;
    private IReqResp c;
    private int d;
    private int e;
    private int f;

    private class MMReqRespDownloadPackage extends MMReqRespBase
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
            return 65;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/downloadpackage";
        }

        private com.tencent.mm.protocal.MMDownloadPackage.Req a;
        private com.tencent.mm.protocal.MMDownloadPackage.Resp b;

        public MMReqRespDownloadPackage()
        {
            a = new com.tencent.mm.protocal.MMDownloadPackage.Req();
            b = new com.tencent.mm.protocal.MMDownloadPackage.Resp();
        }
    }

}

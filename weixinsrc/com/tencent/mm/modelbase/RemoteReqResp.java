// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import android.os.Handler;
import com.tencent.mm.network.*;
import com.tencent.mm.protocal.IMMBaseReq_AIDL;
import com.tencent.mm.protocal.IMMBaseResp_AIDL;

// Referenced classes of package com.tencent.mm.modelbase:
//            RemoteReq, RemoteResp, RAccInfo

public class RemoteReqResp extends com.tencent.mm.network.IReqResp_AIDL.Stub
{

    public RemoteReqResp(IReqResp ireqresp)
    {
        b = ireqresp;
        c = new RemoteReq(ireqresp.f(), ireqresp.c());
        d = new RemoteResp(ireqresp.b(), ireqresp.c());
        a = new Handler();
    }

    public RemoteReqResp(IReqResp ireqresp, Handler handler)
    {
        b = ireqresp;
        c = new RemoteReq(ireqresp.f(), ireqresp.c());
        d = new RemoteResp(ireqresp.b(), ireqresp.c());
        a = handler;
    }

    static IReqResp a(RemoteReqResp remotereqresp)
    {
        return remotereqresp.b;
    }

    public final int a()
    {
        return b.c();
    }

    public final IReqResp_AIDL a(IAccInfo_AIDL iaccinfo_aidl)
    {
        return new RemoteReqResp(b.a(new RAccInfo(iaccinfo_aidl)), a);
    }

    public final void a(IAccInfo_AIDL iaccinfo_aidl, IOnAutoAuth_AIDL ionautoauth_aidl, int i, int j)
    {
        a.post(new _cls2(iaccinfo_aidl, ionautoauth_aidl, i, j));
    }

    public final void a(String s)
    {
        b.a(s);
    }

    public final String b()
    {
        return b.d();
    }

    public final void b(IAccInfo_AIDL iaccinfo_aidl)
    {
        a.post(new _cls1());
    }

    public final IMMBaseResp_AIDL c()
    {
        return d;
    }

    public final IMMBaseReq_AIDL d()
    {
        return c;
    }

    public final int e()
    {
        return b.e();
    }

    Handler a;
    private IReqResp b;
    private IMMBaseReq_AIDL c;
    private IMMBaseResp_AIDL d;

    private class _cls2
        implements Runnable
    {

        public void run()
        {
            RemoteReqResp remotereqresp = new RemoteReqResp(RemoteReqResp.a(e).a(new RAccInfo(a)), e.a);
            b.a(remotereqresp, c, d);
_L2:
            return;
            RemoteException remoteexception;
            remoteexception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private IAccInfo_AIDL a;
        private IOnAutoAuth_AIDL b;
        private int c;
        private int d;
        private RemoteReqResp e;

        _cls2(IAccInfo_AIDL iaccinfo_aidl, IOnAutoAuth_AIDL ionautoauth_aidl, int i, int j)
        {
            e = RemoteReqResp.this;
            a = iaccinfo_aidl;
            b = ionautoauth_aidl;
            c = i;
            d = j;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        public void run()
        {
            boolean flag = true;
            com.tencent.mm.protocal.MMAuth.Resp resp = (com.tencent.mm.protocal.MMAuth.Resp)RemoteReqResp.a(a).b();
            Assert.assertNotNull(resp);
            MMCore.f().a(resp.e());
            MMCore.f().a(resp);
            if(resp.j() != 0)
                MMCore.f().m().a((new StringBuilder()).append("").append(new UIN(resp.j())).append("@qqim").toString(), 3);
            RoleStorage rolestorage = MMCore.f().m();
            String s = resp.r();
            if(resp.s() != flag)
                flag = false;
            rolestorage.a(s, flag, 2);
            MMCore.a(resp);
            MMCore.f().f().a(0xa4775e22, resp.G());
        }

        private RemoteReqResp a;

        _cls1()
        {
            a = RemoteReqResp.this;
            super();
        }
    }

}

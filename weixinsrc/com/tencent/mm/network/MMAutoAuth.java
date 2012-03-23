// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.Handler;
import android.text.format.Time;
import com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.protocal.*;
import com.tencent.mm.test.Test;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network:
//            IOnGYNetEndNetwork, IOnGYNetNotify, GYNet, AccInfo, 
//            SceneInfoQueue, MMPushCore, NetService, IOnGYNetEnd_AIDL, 
//            IReqResp_AIDL, IAccInfo, INetContext, IAccInfo_AIDL, 
//            INetworkEvent_AIDL

public class MMAutoAuth extends IDispatcher_AIDL.Stub
    implements IOnGYNetEndNetwork, IOnGYNetNotify
{

    public MMAutoAuth(Handler handler)
    {
        if(handler == null)
            handler = new Handler();
        f = handler;
        b = new GYNet(this, f.getLooper());
        a = new AccInfo();
        e = new IOnAutoAuth();
    }

    static int a(MMAutoAuth mmautoauth, IReqResp_AIDL ireqresp_aidl, IOnGYNetEnd_AIDL iongynetend_aidl)
    {
        int i;
        boolean flag;
        boolean flag1;
        i = -1;
        flag = false;
        flag1 = true;
        Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("sending remote request, network.active=").append(mmautoauth.b.a).toString());
        if(MMPushCore.b().a || !mmautoauth.b.a) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.AutoAuth", "network not available");
        iongynetend_aidl.a(i, 2, i, "send failed, network not available", ireqresp_aidl, null);
_L4:
        return i;
_L2:
        switch(ireqresp_aidl.a())
        {
        default:
            boolean flag2;
            boolean flag3;
            if(ireqresp_aidl.a() != 2)
                flag2 = flag1;
            else
                flag2 = flag;
            Assert.assertTrue(flag2);
            if(ireqresp_aidl.a() != flag1)
                flag3 = flag1;
            else
                flag3 = flag;
            Assert.assertTrue(flag3);
            if(ireqresp_aidl.a() != 10)
                flag = flag1;
            Assert.assertTrue(flag);
            ireqresp_aidl.d().a(mmautoauth.a.g());
            ireqresp_aidl.d().a(mmautoauth.a.e());
            if(mmautoauth.a.h() || (1 & ireqresp_aidl.e()) != 0)
            {
                i = mmautoauth.c.a(mmautoauth.b.a(mmautoauth.b.a(ireqresp_aidl, mmautoauth, mmautoauth.a)), iongynetend_aidl);
                IMMBaseReq_AIDL immbasereq_aidl;
                AccInfo accinfo;
                AccInfo accinfo1;
                IMMBaseReq_AIDL immbasereq_aidl1;
                if(i < 0)
                    Log.a("MicroMsg.AutoAuth", "nonauth: net.send err");
                else
                    Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("nonauth: netid=").append(i).append(", type=").append(ireqresp_aidl.a()).toString());
            } else
            {
                int j = mmautoauth.c.a(mmautoauth.b.a(ireqresp_aidl, mmautoauth, mmautoauth.a), iongynetend_aidl);
                if(j < 0)
                {
                    Log.a("MicroMsg.AutoAuth", "nonauth: in queue err");
                } else
                {
                    if(mmautoauth.c.a(flag1))
                        ireqresp_aidl.a(mmautoauth.a, mmautoauth.e, 3, 3);
                    i = j;
                }
            }
            break;

        case 2: // '\002'
        case 23: // '\027'
            if(ireqresp_aidl.a() == 2 || ireqresp_aidl.a() == 23)
                flag = flag1;
            Assert.assertTrue(flag);
            accinfo1 = new AccInfo();
            immbasereq_aidl1 = ireqresp_aidl.d();
            accinfo1.a(immbasereq_aidl1.i(), immbasereq_aidl1.j(), immbasereq_aidl1.k());
            i = mmautoauth.c.a(mmautoauth.b.a(mmautoauth.b.a(ireqresp_aidl, mmautoauth, accinfo1)), iongynetend_aidl);
            if(i < 0)
                Log.a("MicroMsg.AutoAuth", "register: net.send err");
            else
                Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("register: netid=").append(i).toString());
            break;

        case 1: // '\001'
            immbasereq_aidl = ireqresp_aidl.d();
            accinfo = new AccInfo();
            accinfo.a(immbasereq_aidl.i(), immbasereq_aidl.j(), immbasereq_aidl.k());
            i = mmautoauth.c.a(mmautoauth.b.a(mmautoauth.b.a(ireqresp_aidl, mmautoauth, accinfo)), iongynetend_aidl);
            if(i < 0)
                Log.a("MicroMsg.AutoAuth", "auth: net.send err");
            else
                Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("auth: netid=").append(i).toString());
            break;

        case 10: // '\n'
            if(ireqresp_aidl.a() != 10)
                flag1 = flag;
            Assert.assertTrue(flag1);
            i = mmautoauth.c.a(mmautoauth.b.a(mmautoauth.b.a(ireqresp_aidl, mmautoauth, mmautoauth.a)), iongynetend_aidl);
            if(i < 0)
                Log.a("MicroMsg.AutoAuth", "direct: net.send err");
            else
                Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("direct: netid=").append(i).toString());
            break;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    static Handler a(MMAutoAuth mmautoauth)
    {
        return mmautoauth.f;
    }

    private void a(int i, int j, String s)
    {
        Log.c("MicroMsg.AutoAuth", "clear block queue err");
        int k = 0;
        while(k < 100) 
        {
            SceneInfoQueue.SceneInfo sceneinfo = c.c(k);
            if(sceneinfo != null)
                if(sceneinfo.b())
                {
                    Log.d("MicroMsg.AutoAuth", "clear blocked err: auto auth");
                    c.b(k);
                } else
                if(sceneinfo.a())
                {
                    IReqResp_AIDL ireqresp_aidl = sceneinfo.a.c();
                    Log.d("MicroMsg.AutoAuth", (new StringBuilder()).append("clear blocked err: retry netid=").append(k).append(", type=").append(ireqresp_aidl.a()).toString());
                    c.b(k);
                    f.post(new _cls5(sceneinfo, k, i, j, s));
                }
            k++;
        }
    }

    static void a(MMAutoAuth mmautoauth, int i)
    {
        boolean flag;
        if(i >= 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("cancel: netid=").append(i).toString());
        if(mmautoauth.c.c(i) != null)
        {
            mmautoauth.b.b(mmautoauth.c.c(i).a);
            mmautoauth.c.b(i);
        }
    }

    static void a(MMAutoAuth mmautoauth, IReqResp_AIDL ireqresp_aidl, int i, int j)
    {
        if(mmautoauth.c.a(1))
        {
            Log.d("MicroMsg.AutoAuth", (new StringBuilder()).append("account info updated:").append(mmautoauth.a).toString());
            INetContext inetcontext = mmautoauth.b.a(ireqresp_aidl, mmautoauth, mmautoauth.a);
            inetcontext.a(i, j);
            if(mmautoauth.c.a(mmautoauth.b.a(inetcontext), null) < 0)
            {
                Log.a("MicroMsg.AutoAuth", "autoauth: net.send err");
                mmautoauth.a(3, -1, "");
            }
        }
    }

    static void b(MMAutoAuth mmautoauth)
    {
        if(mmautoauth.b != null)
            mmautoauth.b.a();
        if(mmautoauth.c != null)
            mmautoauth.c.a();
    }

    private void h()
    {
        Log.c("MicroMsg.AutoAuth", "clear block queue ok");
        Assert.assertTrue(a.h());
        int i = 0;
        while(i < 100) 
        {
            SceneInfoQueue.SceneInfo sceneinfo = c.c(i);
            if(sceneinfo != null)
                if(sceneinfo.b())
                {
                    Log.d("MicroMsg.AutoAuth", (new StringBuilder()).append("clear blocked ok: auto auth, netid=").append(i).toString());
                    c.b(i);
                } else
                if(sceneinfo.a())
                {
                    IReqResp_AIDL ireqresp_aidl = sceneinfo.a.c();
                    if(ireqresp_aidl.d().c() != a.g() && ireqresp_aidl.d().c() != 0)
                    {
                        Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("skip different uin, acc.uin=").append(a.g()).append(", netid=").append(i).append(", rr.uin=").append(ireqresp_aidl.d().c()).append(", rr.type=").append(ireqresp_aidl.a()).toString());
                        c.b(i);
                        if(sceneinfo.b != null)
                            f.post(new _cls4(sceneinfo, i, ireqresp_aidl));
                    } else
                    {
                        Log.d("MicroMsg.AutoAuth", (new StringBuilder()).append("clear blocked ok: retry netid=").append(i).append(", type=").append(ireqresp_aidl.a()).toString());
                        ireqresp_aidl.d().a(a.g());
                        ireqresp_aidl.d().a(a.e());
                        b.a(sceneinfo.a);
                        if(sceneinfo.a.a() < 0)
                        {
                            Log.a("MicroMsg.AutoAuth", "post-auth net.send err");
                            c.b(i);
                        }
                    }
                }
            i++;
        }
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final int a(IReqResp_AIDL ireqresp_aidl, IOnGYNetEnd_AIDL iongynetend_aidl)
    {
        this;
        JVM INSTR monitorenter ;
        int i = ((Integer)(new _cls3(Integer.valueOf(-1), ireqresp_aidl, iongynetend_aidl)).a(f)).intValue();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public final volatile IAccInfo_AIDL a()
    {
        return a;
    }

    public final void a(int i)
    {
        (new _cls1(i)).a(f);
    }

    public final void a(int i, int j, int k, String s, IReqResp_AIDL ireqresp_aidl, byte abyte0[])
    {
        if(i >= 0) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.AutoAuth", "send failed locally");
_L4:
        return;
_L2:
        IMMBaseResp_AIDL immbaseresp_aidl;
        int i1;
        immbaseresp_aidl = ireqresp_aidl.c();
        int l = ireqresp_aidl.a();
        switch(l)
        {
        default:
            if(k == 0 && j == 0)
                if(abyte0 != null)
                    a.a(abyte0);
                else
                    Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("invalid cookie, type=").append(l).toString());
            break;

        case 1: // '\001'
            if(j == 4)
                switch(k)
                {
                case -17: 
                case -16: 
                    if(abyte0 != null)
                        a.a(abyte0);
                    else
                        Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("invalid cookie, type=").append(l).toString());
                    break;
                }
            else
            if(k == 0 && j == 0)
                if(abyte0 != null)
                    a.a(abyte0);
                else
                    Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("invalid cookie, type=").append(l).toString());
            break;

        case 10: // '\n'
        case 39: // '\''
            break;
        }
          goto _L3
_L11:
label0:
        {
            i1 = c.a(ireqresp_aidl);
            if(i1 >= 0)
                break label0;
            Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("context has been dropped, threadId=").append(i).append(", type=").append(ireqresp_aidl.a()).toString());
            c.b();
            Assert.assertTrue(false);
        }
          goto _L4
        IOnGYNetEnd_AIDL iongynetend_aidl;
        INetContext inetcontext;
        iongynetend_aidl = c.c(i1).b;
        inetcontext = c.c(i1).a;
        if(inetcontext.a() != i)
            Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("incorrect rr and threadId: ctx.getThreadId()=").append(inetcontext.a()).append(", ret threadId=").append(i).append(", CHECK NOW").toString());
        ireqresp_aidl.a();
        JVM INSTR lookupswitch 4: default 456
    //                   1: 755
    //                   2: 1134
    //                   10: 1351
    //                   23: 1134;
           goto _L5 _L6 _L7 _L8 _L7
_L5:
        int j1;
        int k1;
        if(ireqresp_aidl.a() != 1 && Test.b())
        {
            j = 4;
            k = -13;
        }
        boolean flag;
        if(j == 4 && k == -13)
        {
            Log.b("MicroMsg.AutoAuth", (new StringBuilder()).append("net.session timeout, netid=").append(i1).append(", type=").append(ireqresp_aidl.a()).toString());
            a.a("", a.g());
            IMMBaseReq_AIDL immbasereq_aidl;
            IMMBaseReq_AIDL immbasereq_aidl1;
            IMMBaseReq_AIDL immbasereq_aidl2;
            if(!c.a(1))
            {
                c.d(i1);
                Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("autoauth: already authing, blocked netid=").append(i1).append(", type=").append(ireqresp_aidl.a()).toString());
            } else
            {
                c.d(i1);
                Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("autoauth: now authing, blocked netid=").append(i1).append(", type=").append(ireqresp_aidl.a()).toString());
                ireqresp_aidl.a(a, e, inetcontext.f(), inetcontext.e());
            }
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L9
_L3:
        if(true) goto _L11; else goto _L10
_L10:
_L9:
        if(flag) goto _L4; else goto _L12
_L12:
        if(j == 0) goto _L14; else goto _L13
_L13:
        Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("net.end: notauth::err: type=").append(ireqresp_aidl.a()).append(" retCode=").append(immbaseresp_aidl.b()).append(" NetId=").append(i1).append(" ErrType=").append(j).append(" ErrCode=").append(k).append(" ErrMsg=").append(s).toString());
        j1 = k;
        k1 = j;
_L24:
        Assert.assertNotNull(iongynetend_aidl);
        c.b(i1);
        iongynetend_aidl.a(i1, k1, j1, s, inetcontext.c(), abyte0);
          goto _L4
_L6:
        Log.c("MicroMsg.AutoAuth", "net.end: auth done");
        if(immbaseresp_aidl.b() == 0 && j == 0 && k == 0) goto _L16; else goto _L15
_L15:
        Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("net.end: auth err: type=").append(ireqresp_aidl.a()).append(" netid=").append(i1).append(" err=").append(j).append(",").append(k).append(" errmsg=").append(s).toString());
        k;
        JVM INSTR lookupswitch 3: default 888
    //                   -100: 974
    //                   -17: 913
    //                   -16: 913;
           goto _L17 _L18 _L19 _L19
_L17:
        if(iongynetend_aidl != null) goto _L21; else goto _L20
_L20:
        c.b(i1);
        a(j, k, s);
          goto _L4
_L19:
        immbasereq_aidl1 = ireqresp_aidl.d();
        a.a(immbasereq_aidl1.i(), immbasereq_aidl1.j(), immbasereq_aidl1.k());
        a.a(immbaseresp_aidl.d(), immbaseresp_aidl.e());
          goto _L17
_L18:
        b.a();
          goto _L17
_L16:
        Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("net.end: auth ok: type=").append(ireqresp_aidl.a()).append(" NetId=").append(i1).toString());
        immbasereq_aidl2 = ireqresp_aidl.d();
        a.a(immbasereq_aidl2.i(), immbasereq_aidl2.j(), immbasereq_aidl2.k());
        a.a(immbaseresp_aidl.d(), immbaseresp_aidl.e());
        if(iongynetend_aidl != null) goto _L23; else goto _L22
_L22:
        ireqresp_aidl.b(a);
        a.a(abyte0);
        c.b(i1);
        h();
          goto _L4
_L23:
        j1 = k;
        k1 = j;
          goto _L24
_L7:
        Log.c("MicroMsg.AutoAuth", "net.end: register done");
        if(immbaseresp_aidl.b() != 0 || j != 0 || k != 0)
        {
            Log.a("MicroMsg.AutoAuth", (new StringBuilder()).append("net.end: reg err: type=").append(ireqresp_aidl.a()).append(" NetId=").append(i1).append(" err=").append(j).append(",").append(k).append(" errmsg=").append(s).toString());
            j1 = k;
            k1 = j;
        } else
        {
            Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("net.end: reg ok: type=").append(ireqresp_aidl.a()).append(" netid=").append(i1).toString());
            immbasereq_aidl = ireqresp_aidl.d();
            a.a(immbasereq_aidl.i(), immbasereq_aidl.j(), immbasereq_aidl.k());
            a.a(immbaseresp_aidl.d(), immbaseresp_aidl.e());
            j1 = k;
            k1 = j;
        }
          goto _L24
_L8:
        j1 = k;
        k1 = j;
          goto _L24
_L14:
        Log.c("MicroMsg.AutoAuth", (new StringBuilder()).append("net.end: notauth::ok: type=").append(ireqresp_aidl.a()).append(" netid=").append(i1).toString());
_L21:
        j1 = k;
        k1 = j;
          goto _L24
    }

    public final void a(IOnGYNetNotify iongynetnotify)
    {
        d = iongynetnotify;
    }

    public final void a(IConnPoolMoniter_AIDL iconnpoolmoniter_aidl)
    {
        MMPushCore.b().a(iconnpoolmoniter_aidl);
    }

    public final void a(String s, String s1, String s2, String s3)
    {
        if(b != null && !Util.i(s) && !Util.i(s2))
        {
            b.b(s2);
            b.a(s);
        }
    }

    public final void a(String s, String s1, int ai[], int ai1[], int i, int j)
    {
        java.util.List list;
        java.util.List list1;
        if(s == null || s.length() <= 0)
            s = "0,112.64.200.240,80|0,180.153.82.27,80|0,117.135.130.177,80";
        list = MMBuiltInIP.c(s);
        if(s1 == null || s1.length() <= 0)
            s1 = "0,112.64.200.218,80|0,180.153.82.30,80|0,117.135.130.187,80";
        list1 = MMBuiltInIP.c(s1);
        if(b != null)
            b.a(list, list1, ai, ai1, i, j);
    }

    public final void a(boolean flag)
    {
        if(b != null)
            b.a(flag);
    }

    public final boolean a(int i, int j, String s, int k, byte abyte0[])
    {
        boolean flag = true;
        Time time = new Time();
        time.setToNow();
        if(!b.a && !NetService.a(time.hour, time.minute, MMPushCore.d()))
            Log.b("MicroMsg.AutoAuth", (new StringBuilder()).append("ignore notify during deactive time").append(k).toString());
        else
        if(d != null)
            flag = d.a(i, j, s, k, abyte0);
        else
            Log.b("MicroMsg.AutoAuth", (new StringBuilder()).append("ignore notify type=").append(k).toString());
        return flag;
    }

    public final void b()
    {
        (new _cls2()).a(f);
    }

    public final String c()
    {
        return Util.h(b.c());
    }

    public final void d()
    {
        b.c(true);
    }

    public final boolean e()
    {
        boolean flag;
        if(b.b() < 5)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final INetworkEvent_AIDL f()
    {
        return MMPushCore.c();
    }

    protected void finalize()
    {
        b();
        super.finalize();
    }

    public final AccInfo g()
    {
        return a;
    }

    private AccInfo a;
    private final GYNet b;
    private final SceneInfoQueue c = new SceneInfoQueue();
    private IOnGYNetNotify d;
    private IOnAutoAuth e;
    private Handler f;

    private class IOnAutoAuth extends IOnAutoAuth_AIDL.Stub
    {

        static MMAutoAuth a(IOnAutoAuth ionautoauth)
        {
            return ionautoauth.a;
        }

        public final void a(IReqResp_AIDL ireqresp_aidl, int i, int j)
        {
            class _cls1 extends SyncTask
            {

                protected final Object a()
                {
                    try
                    {
                        MMAutoAuth.a(IOnAutoAuth.a(d), a, b, c);
                    }
                    catch(RemoteException remoteexception) { }
                    return null;
                }

                private IReqResp_AIDL a;
                private int b;
                private int c;
                private IOnAutoAuth d;

                _cls1(IReqResp_AIDL ireqresp_aidl, int i, int j)
                {
                    d = IOnAutoAuth.this;
                    a = ireqresp_aidl;
                    b = i;
                    c = j;
                    super(1000L, null);
                }
            }

            (new _cls1(ireqresp_aidl, i, j)).a(MMAutoAuth.a(a));
        }

        private MMAutoAuth a;

        public IOnAutoAuth()
        {
            a = MMAutoAuth.this;
        }
    }


    private class _cls5
        implements Runnable
    {

        public void run()
        {
            a.b.a(b, c, d, e, a.a.c(), new byte[0]);
_L2:
            return;
            RemoteException remoteexception;
            remoteexception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private SceneInfoQueue.SceneInfo a;
        private int b;
        private int c;
        private int d;
        private String e;
        private MMAutoAuth f;

        _cls5(SceneInfoQueue.SceneInfo sceneinfo, int i, int j, int k, String s)
        {
            f = MMAutoAuth.this;
            a = sceneinfo;
            b = i;
            c = j;
            d = k;
            e = s;
            super();
        }
    }


    private class _cls4
        implements Runnable
    {

        public void run()
        {
            a.b.a(b, 3, -1, "", c, new byte[0]);
_L2:
            return;
            RemoteException remoteexception;
            remoteexception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private SceneInfoQueue.SceneInfo a;
        private int b;
        private IReqResp_AIDL c;
        private MMAutoAuth d;

        _cls4(SceneInfoQueue.SceneInfo sceneinfo, int i, IReqResp_AIDL ireqresp_aidl)
        {
            d = MMAutoAuth.this;
            a = sceneinfo;
            b = i;
            c = ireqresp_aidl;
            super();
        }
    }


    private class _cls3 extends SyncTask
    {

        private Integer b()
        {
            Integer integer1 = Integer.valueOf(MMAutoAuth.a(c, a, b));
            Integer integer = integer1;
_L2:
            return integer;
            RemoteException remoteexception;
            remoteexception;
            MMAutoAuth.b(c);
            integer = Integer.valueOf(-1);
            if(true) goto _L2; else goto _L1
_L1:
        }

        public final volatile Object a()
        {
            return b();
        }

        private IReqResp_AIDL a;
        private IOnGYNetEnd_AIDL b;
        private MMAutoAuth c;

        _cls3(Integer integer, IReqResp_AIDL ireqresp_aidl, IOnGYNetEnd_AIDL iongynetend_aidl)
        {
            c = MMAutoAuth.this;
            a = ireqresp_aidl;
            b = iongynetend_aidl;
            super(1000L, integer);
        }
    }


    private class _cls1 extends SyncTask
    {

        protected final Object a()
        {
            try
            {
                MMAutoAuth.a(b, a);
            }
            catch(RemoteException remoteexception) { }
            return null;
        }

        private int a;
        private MMAutoAuth b;

        _cls1(int i)
        {
            b = MMAutoAuth.this;
            a = i;
            super(1000L, null);
        }
    }


    private class _cls2 extends SyncTask
    {

        protected final Object a()
        {
            MMAutoAuth.b(a);
            return null;
        }

        private MMAutoAuth a;

        _cls2()
        {
            a = MMAutoAuth.this;
            super(1000L, null);
        }
    }

}

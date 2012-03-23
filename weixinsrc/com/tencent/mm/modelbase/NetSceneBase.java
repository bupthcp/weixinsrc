// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelbase:
//            MMReqRespBase, RemoteReqResp, RemoteOnGYNetEnd, IOnSceneEnd

public abstract class NetSceneBase
{

    public NetSceneBase()
    {
        a = 0;
        b = 0L;
        d = -1;
        e = -99;
    }

    public abstract int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend);

    protected final int a(IDispatcher idispatcher, IReqResp ireqresp, IOnGYNetEnd iongynetend)
    {
        b = Util.e();
        c = idispatcher;
        if(e == -99)
        {
            e = c();
            Log.c("MicroMsg.NetSceneBase", (new StringBuilder()).append("initilized security limit count to ").append(e).toString());
        }
        if(c() <= 1) goto _L2; else goto _L1
_L1:
        _cls1.a[a(ireqresp).ordinal()];
        JVM INSTR tableswitch 1 3: default 104
    //                   1 166
    //                   2 216
    //                   3 110;
           goto _L3 _L4 _L5 _L6
_L5:
        break MISSING_BLOCK_LABEL_216;
_L6:
        break; /* Loop/switch isn't completed */
_L3:
        Assert.assertTrue("invalid security verification status", false);
_L2:
        int i;
        if(h_())
        {
            Log.a("MicroMsg.NetSceneBase", (new StringBuilder()).append("dispatch failed, scene limited for security, current limit=").append(c()).toString());
            a(SecurityCheckError.b);
            d = -1;
            i = d;
        } else
        {
            e = -1 + e;
            if(ireqresp instanceof MMReqRespBase)
                ((MMReqRespBase)ireqresp).a(this);
            RemoteReqResp remotereqresp = new RemoteReqResp(ireqresp);
            if(f != null)
                f.a();
            f = new RemoteOnGYNetEnd(ireqresp, iongynetend);
            d = idispatcher.a(remotereqresp, f);
            i = d;
        }
_L7:
        return i;
_L4:
        Assert.assertTrue((new StringBuilder()).append("scene security verification not passed, type=").append(ireqresp.c()).append(", uri=").append(ireqresp.d()).append(", CHECK NOW").toString(), false);
          goto _L2
        Log.a("MicroMsg.NetSceneBase", (new StringBuilder()).append("scene security verification not passed, type=").append(ireqresp.c()).append(", uri=").append(ireqresp.d()).toString());
        e = -1 + e;
        a(SecurityCheckError.a);
        d = -1;
        i = d;
          goto _L7
    }

    protected SecurityCheckStatus a(IReqResp ireqresp)
    {
        return SecurityCheckStatus.a;
    }

    protected void a()
    {
        if(f != null)
            f.a();
        if(d != -1 && c != null)
            c.a(d);
    }

    protected void a(SecurityCheckError securitycheckerror)
    {
    }

    protected boolean a(NetSceneBase netscenebase)
    {
        return false;
    }

    public abstract int b();

    protected final void b(int i)
    {
        d = i;
    }

    protected int c()
    {
        return 1;
    }

    protected long g_()
    {
        return 0x927c0L;
    }

    protected boolean h_()
    {
        boolean flag;
        if(e <= 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public List k_()
    {
        if(g == null)
            g = new LinkedList();
        return g;
    }

    public final int l()
    {
        return a;
    }

    protected final IDispatcher m()
    {
        return c;
    }

    private int a;
    protected long b;
    private IDispatcher c;
    private int d;
    private int e;
    private RemoteOnGYNetEnd f;
    private List g;

    private class _cls1
    {

        static final int a[];

        static 
        {
            a = new int[SecurityCheckStatus.values().length];
            NoSuchFieldError nosuchfielderror2;
            try
            {
                a[SecurityCheckStatus.a.ordinal()] = 1;
            }
            catch(NoSuchFieldError nosuchfielderror) { }
            try
            {
                a[SecurityCheckStatus.c.ordinal()] = 2;
            }
            catch(NoSuchFieldError nosuchfielderror1) { }
            a[SecurityCheckStatus.b.ordinal()] = 3;
_L2:
            return;
            nosuchfielderror2;
            if(true) goto _L2; else goto _L1
_L1:
        }
    }


    private class SecurityCheckStatus extends Enum
    {

        public static SecurityCheckStatus valueOf(String s)
        {
            return (SecurityCheckStatus)Enum.valueOf(com/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus, s);
        }

        public static SecurityCheckStatus[] values()
        {
            return (SecurityCheckStatus[])d.clone();
        }

        public static final SecurityCheckStatus a;
        public static final SecurityCheckStatus b;
        public static final SecurityCheckStatus c;
        private static final SecurityCheckStatus d[];

        static 
        {
            a = new SecurityCheckStatus("EUnchecked", 0);
            b = new SecurityCheckStatus("EOk", 1);
            c = new SecurityCheckStatus("EFailed", 2);
            SecurityCheckStatus asecuritycheckstatus[] = new SecurityCheckStatus[3];
            asecuritycheckstatus[0] = a;
            asecuritycheckstatus[1] = b;
            asecuritycheckstatus[2] = c;
            d = asecuritycheckstatus;
        }

        private SecurityCheckStatus(String s, int i)
        {
            super(s, i);
        }
    }


    private class SecurityCheckError extends Enum
    {

        public static SecurityCheckError valueOf(String s)
        {
            return (SecurityCheckError)Enum.valueOf(com/tencent/mm/modelbase/NetSceneBase$SecurityCheckError, s);
        }

        public static SecurityCheckError[] values()
        {
            return (SecurityCheckError[])c.clone();
        }

        public static final SecurityCheckError a;
        public static final SecurityCheckError b;
        private static final SecurityCheckError c[];

        static 
        {
            a = new SecurityCheckError("EStatusCheckFailed", 0);
            b = new SecurityCheckError("EReachMaxLimit", 1);
            SecurityCheckError asecuritycheckerror[] = new SecurityCheckError[2];
            asecuritycheckerror[0] = a;
            asecuritycheckerror[1] = b;
            c = asecuritycheckerror;
        }

        private SecurityCheckError(String s, int i)
        {
            super(s, i);
        }
    }

}

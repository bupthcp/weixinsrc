// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.platformtools.*;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.tencent.mm.modelmulti:
//            NetSceneSync

class InitRespHandler
{

    public InitRespHandler(NetSceneSync netscenesync)
    {
        e = false;
        b();
        b = netscenesync;
    }

    static boolean a(InitRespHandler initresphandler)
    {
        return initresphandler.e;
    }

    static NetSceneSync b(InitRespHandler initresphandler)
    {
        return initresphandler.b;
    }

    private void b()
    {
        d = 0;
        a = null;
    }

    static int c(InitRespHandler initresphandler)
    {
        return initresphandler.d;
    }

    static NetSceneSync.SyncDoCmd d(InitRespHandler initresphandler)
    {
        return initresphandler.f;
    }

    static Queue e(InitRespHandler initresphandler)
    {
        return initresphandler.c;
    }

    static void f(InitRespHandler initresphandler)
    {
        initresphandler.b();
    }

    static int g(InitRespHandler initresphandler)
    {
        int i = initresphandler.d;
        initresphandler.d = i + 1;
        return i;
    }

    public final void a()
    {
        e = true;
        c.clear();
    }

    public final boolean a(com.tencent.mm.protocal.MMInit.Resp resp)
    {
        boolean flag;
        if((resp.b() & NetSceneSync.a) != 0 && !b.h_())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean b(com.tencent.mm.protocal.MMInit.Resp resp)
    {
        boolean flag = a(resp);
        if(a != null)
        {
            Log.d("MicroMsg.InitRespHandler", (new StringBuilder()).append("busy, processing resp, continue=").append(a.b()).append(", initKey=").append(Util.a(a.g())).toString());
            c.add(resp);
        } else
        {
            Log.c("MicroMsg.InitRespHandler", (new StringBuilder()).append("idle process next resp, continue=").append(resp.b()).append(", initKey=").append(Util.a(resp.g())).toString());
            a = resp;
            b.h();
            g.a(0L);
        }
        return flag;
    }

    protected com.tencent.mm.protocal.MMInit.Resp a;
    private final NetSceneSync b;
    private final Queue c = new LinkedList();
    private int d;
    private boolean e;
    private final NetSceneSync.SyncDoCmd f = new NetSceneSync.SyncDoCmd();
    private final MTimerHandler g = new MTimerHandler(new _cls1(), true);

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag;
            if(InitRespHandler.a(a))
            {
                InitRespHandler.b(a).i();
                flag = false;
            } else
            if(InitRespHandler.c(a) >= a.a.e().size() || !InitRespHandler.d(a).a((com.tencent.mm.protocal.MMSync.CmdItem)a.a.e().get(InitRespHandler.c(a))))
            {
                InitRespHandler.b(a).a(a.a);
                InitRespHandler.d(a).a();
                InitRespHandler.e(a).remove(a.a);
                InitRespHandler.f(a);
                if(!InitRespHandler.e(a).isEmpty())
                    a.b((com.tencent.mm.protocal.MMInit.Resp)InitRespHandler.e(a).poll());
                else
                    Log.c("MicroMsg.InitRespHandler", "init resp list process done");
                flag = false;
            } else
            {
                InitRespHandler.g(a);
                flag = true;
            }
            return flag;
        }

        private InitRespHandler a;

        _cls1()
        {
            a = InitRespHandler.this;
            super();
        }
    }

}

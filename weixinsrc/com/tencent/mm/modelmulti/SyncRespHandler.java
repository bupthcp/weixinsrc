// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.MTimerHandler;
import com.tencent.mm.storage.OpLogStorage;

// Referenced classes of package com.tencent.mm.modelmulti:
//            NetSceneSync

class SyncRespHandler
{

    public SyncRespHandler(NetSceneSync netscenesync)
    {
        f = false;
        b();
        c = netscenesync;
    }

    static boolean a(SyncRespHandler syncresphandler)
    {
        return syncresphandler.f;
    }

    static NetSceneSync b(SyncRespHandler syncresphandler)
    {
        return syncresphandler.c;
    }

    private void b()
    {
        e = true;
        d = 0;
        a = null;
        f = false;
    }

    static boolean c(SyncRespHandler syncresphandler)
    {
        return syncresphandler.e;
    }

    static int d(SyncRespHandler syncresphandler)
    {
        return syncresphandler.d;
    }

    static NetSceneSync.SyncDoCmd e(SyncRespHandler syncresphandler)
    {
        return syncresphandler.g;
    }

    static boolean f(SyncRespHandler syncresphandler)
    {
        syncresphandler.e = false;
        return false;
    }

    static int g(SyncRespHandler syncresphandler)
    {
        syncresphandler.d = 0;
        return 0;
    }

    static int h(SyncRespHandler syncresphandler)
    {
        int j = syncresphandler.d;
        syncresphandler.d = j + 1;
        return j;
    }

    static void i(SyncRespHandler syncresphandler)
    {
        syncresphandler.b();
    }

    public final void a()
    {
        f = true;
    }

    public final boolean a(com.tencent.mm.protocal.MMSync.Resp resp)
    {
        int j = MMCore.f().g().a();
        boolean flag;
        if(((resp.d() & (long)NetSceneSync.a) != 0L || j > 0) && !c.h_())
            flag = true;
        else
            flag = false;
        Log.d("MicroMsg.SyncRespHandler", (new StringBuilder()).append("continue flag=").append(resp.d()).append(", selector=").append(NetSceneSync.a).append(", opsize=").append(j).append(", limit reach=").append(c.h_()).toString());
        return flag;
    }

    public final void b(com.tencent.mm.protocal.MMSync.Resp resp)
    {
        a = resp;
        c.j_();
        b.a(0L);
    }

    protected com.tencent.mm.protocal.MMSync.Resp a;
    private final MTimerHandler b = new MTimerHandler(new _cls1(), true);
    private final NetSceneSync c;
    private int d;
    private boolean e;
    private boolean f;
    private final NetSceneSync.SyncDoCmd g = new NetSceneSync.SyncDoCmd();

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag = false;
            if(SyncRespHandler.a(a))
                SyncRespHandler.b(a).g();
            else
            if(SyncRespHandler.c(a))
            {
                if(SyncRespHandler.d(a) >= a.a.b().size() || !SyncRespHandler.e(a).a((com.tencent.mm.protocal.MMSync.CmdItem)a.a.b().get(SyncRespHandler.d(a))))
                {
                    SyncRespHandler.f(a);
                    SyncRespHandler.g(a);
                } else
                {
                    SyncRespHandler.h(a);
                }
                flag = true;
            } else
            {
                SyncRespHandler.b(a).a(a.a);
                SyncRespHandler.e(a).a();
                SyncRespHandler.i(a);
                Log.c("MicroMsg.SyncRespHandler", "sync resp list process done");
            }
            return flag;
        }

        private SyncRespHandler a;

        _cls1()
        {
            a = SyncRespHandler.this;
            super();
        }
    }

}

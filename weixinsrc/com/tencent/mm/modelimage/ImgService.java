// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelimage;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelimage:
//            ImgInfoStorage, ImgInfo, NetSceneUploadMsgImg

public class ImgService
    implements IOnSceneEnd
{

    public ImgService()
    {
        b = new LinkedList();
        c = false;
        d = 0;
        e = 0L;
        f = false;
        g = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        h = new MTimerHandler(new _cls1(), false);
        MMCore.g().a(9, this);
    }

    static void a(ImgService imgservice)
    {
        imgservice.c();
    }

    public static boolean a(int i)
    {
        return a.add(Integer.valueOf(i));
    }

    public static boolean b(int i)
    {
        return a.remove(Integer.valueOf(i));
    }

    private void c()
    {
        e = System.currentTimeMillis();
        if(f || b.size() != 0) goto _L2; else goto _L1
_L1:
        List list = MMCore.f().k().b();
        if(list != null && list.size() != 0) goto _L3; else goto _L2
_L2:
        if(f || b.size() > 0) goto _L5; else goto _L4
_L4:
        d();
        Log.d("MicroMsg.ImgService", "No Data Any More , Stop Service");
_L6:
        return;
_L3:
        Iterator iterator = list.iterator();
        do
        {
            if(!iterator.hasNext())
                continue; /* Loop/switch isn't completed */
            ImgInfo imginfo1 = (ImgInfo)iterator.next();
            if(a.contains(Integer.valueOf((int)imginfo1.f())))
                Log.d("MicroMsg.ImgService", (new StringBuilder()).append("File is Already running:").append(imginfo1.f()).toString());
            else
            if(imginfo1.e() > 0 && imginfo1.g() <= 0 && imginfo1.h() <= imginfo1.i() && imginfo1.a() != -1)
                if((long)(600 + imginfo1.d()) < Util.c())
                    c((int)imginfo1.f());
                else
                    b.add(imginfo1);
        } while(true);
        b.size();
          goto _L2
_L5:
        if(!f && b.size() > 0)
        {
            ImgInfo imginfo = null;
            do
            {
                if(b.size() <= 0)
                    break;
                imginfo = (ImgInfo)b.poll();
                if(a.contains(Integer.valueOf((int)imginfo.f())))
                    imginfo = null;
            } while(true);
            f = true;
            if(imginfo != null && imginfo.f() > 0L)
            {
                a.add(Integer.valueOf((int)imginfo.f()));
                NetSceneUploadMsgImg netsceneuploadmsgimg = new NetSceneUploadMsgImg((int)imginfo.f());
                MMCore.g().b(netsceneuploadmsgimg);
            }
        }
          goto _L6
    }

    public static void c(int i)
    {
        ImgInfo imginfo = MMCore.f().k().a(i);
        if(imginfo != null && imginfo.f() > 0L) goto _L2; else goto _L1
_L1:
        return;
_L2:
        imginfo.b();
        imginfo.h(0);
        imginfo.a(264);
        MMCore.f().k().a(i, imginfo);
        MsgInfo msginfo = MMCore.f().i().a(imginfo.e());
        if(msginfo != null && msginfo.b() == (long)imginfo.e())
        {
            msginfo.d(5);
            msginfo.a(8);
            MMCore.f().i().a((int)msginfo.b(), msginfo);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void d()
    {
        b.clear();
        c = false;
        Log.d("MicroMsg.ImgService", (new StringBuilder()).append("Finish service use time(ms):").append(g.b()).toString());
    }

    public final void a()
    {
        long l = System.currentTimeMillis() - e;
        if(!c) goto _L2; else goto _L1
_L1:
        if(l >= 60000L) goto _L4; else goto _L3
_L3:
        return;
_L4:
        Log.a("MicroMsg.ImgService", (new StringBuilder()).append("ERR: Try Run service runningFlag:").append(c).append(" timeWait:").append(l).append(">=MAX_TIME_WAIT sending:").append(c).toString());
_L2:
        c = true;
        d = 3;
        g.a();
        h.a(10L);
        if(true) goto _L3; else goto _L5
_L5:
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 9 && (netscenebase instanceof NetSceneUploadMsgImg))
        {
            f = false;
            int k = ((NetSceneUploadMsgImg)netscenebase).g();
            a.remove(Integer.valueOf(k));
            if(d > 0)
                c();
            else
                d();
        }
    }

    public final void b()
    {
        d = 0;
    }

    protected void finalize()
    {
        MMCore.g().b(9, this);
        super.finalize();
    }

    private static Set a = new HashSet();
    private Queue b;
    private boolean c;
    private int d;
    private long e;
    private boolean f;
    private com.tencent.mm.algorithm.CodeInfo.TestTime g;
    private MTimerHandler h;


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            ImgService.a(a);
            return false;
        }

        private ImgService a;

        _cls1()
        {
            a = ImgService.this;
            super();
        }
    }

}

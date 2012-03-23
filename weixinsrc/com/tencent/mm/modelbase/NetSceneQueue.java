// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import android.os.Handler;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.platformtools.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelbase:
//            IOnSceneEnd, NetSceneBase, SceneInfo

public final class NetSceneQueue
    implements IOnSceneEnd
{

    private NetSceneQueue()
    {
        boolean flag = false;
        super();
        h = flag;
        i = new MTimerHandler(new _cls1(), true);
        for(; flag < 90; flag++)
            e[flag] = new ArrayList();

    }

    public static NetSceneQueue a()
    {
        if(a == null)
            a = new NetSceneQueue();
        return a;
    }

    static List a(NetSceneQueue netscenequeue)
    {
        return netscenequeue.c;
    }

    static List b(NetSceneQueue netscenequeue)
    {
        return netscenequeue.d;
    }

    private void c()
    {
        if(d.size() > 0)
        {
            NetSceneBase netscenebase = (NetSceneBase)d.get(0);
            int k = netscenebase.l();
            int l = 1;
            NetSceneBase netscenebase1 = netscenebase;
            for(; l < d.size(); l++)
            {
                if(((NetSceneBase)d.get(l)).l() <= k)
                    continue;
                d.get(l);
                if(d())
                {
                    NetSceneBase netscenebase2 = (NetSceneBase)d.get(l);
                    k = netscenebase2.l();
                    netscenebase1 = netscenebase2;
                }
            }

            d.remove(netscenebase1);
            Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("waitingQueue_size = ").append(d.size()).toString());
            c(netscenebase1);
        }
    }

    private void c(NetSceneBase netscenebase)
    {
        if(!d()) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("run: type=").append(netscenebase.b()).append(" id=").append(netscenebase.hashCode()).append(" cur_running_cnt=").append(c.size()).toString());
        c.add(netscenebase);
        Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("runningQueue_size=").append(c.size()).toString());
        if(b != null) goto _L4; else goto _L3
_L3:
        return;
_L4:
        if(netscenebase.a(b, this) < 0)
        {
            c.remove(netscenebase);
            d(netscenebase);
            netscenebase.b(-1);
            Log.a("MicroMsg.NetSceneQueue", (new StringBuilder()).append("doScene failed, type=").append(netscenebase.b()).append(" runningQueue_size=").append(c.size()).toString());
            (new Handler()).post(new _cls4(netscenebase));
        } else
        {
            List list = netscenebase.k_();
            switch(netscenebase.b())
            {
            default:
                if(list != null)
                {
                    if(list.size() <= 0)
                        list.add(new SceneInfo(netscenebase.b()));
                    SceneInfo sceneinfo = (SceneInfo)list.get(-1 + list.size());
                    if(sceneinfo != null)
                        sceneinfo.a(Util.d());
                }
                break;

            case 10: // '\n'
            case 21: // '\025'
            case 22: // '\026'
                break;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("waited: type=").append(netscenebase.b()).append(" id=").append(netscenebase.hashCode()).append(" cur_waiting_cnt=").append(d.size()).toString());
        d.add(netscenebase);
        Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("waitingQueue_size = ").append(d.size()).toString());
        if(true) goto _L3; else goto _L5
_L5:
    }

    static boolean c(NetSceneQueue netscenequeue)
    {
        return netscenequeue.h;
    }

    static void d(NetSceneQueue netscenequeue)
    {
        AvatarLogic.a(netscenequeue. new _cls2());
    }

    private boolean d()
    {
        boolean flag;
        if(c.size() >= 5)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private boolean d(NetSceneBase netscenebase)
    {
        MTimerHandler mtimerhandler = (MTimerHandler)g.get(netscenebase);
        boolean flag;
        if(mtimerhandler != null)
        {
            mtimerhandler.a();
            g.remove(netscenebase);
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    private String e()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("r:");
        for(Iterator iterator = c.iterator(); iterator.hasNext(); stringbuilder.append("|"))
        {
            NetSceneBase netscenebase1 = (NetSceneBase)iterator.next();
            stringbuilder.append("t=");
            stringbuilder.append(netscenebase1.b());
            stringbuilder.append(", d=");
            stringbuilder.append(Util.f(netscenebase1.b));
        }

        stringbuilder.append("w:");
        for(Iterator iterator1 = d.iterator(); iterator1.hasNext(); stringbuilder.append("|"))
        {
            NetSceneBase netscenebase = (NetSceneBase)iterator1.next();
            stringbuilder.append("t=");
            stringbuilder.append(netscenebase.b());
            stringbuilder.append(", d=");
            stringbuilder.append(Util.f(netscenebase.b));
        }

        return stringbuilder.toString();
    }

    static List[] e(NetSceneQueue netscenequeue)
    {
        return netscenequeue.e;
    }

    public final List a(long l)
    {
        LinkedList linkedlist = new LinkedList();
        Set set = j.keySet();
        if(set != null)
        {
            Iterator iterator = set.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                Integer integer = (Integer)iterator.next();
                List list = (List)j.get(integer);
                if(list != null)
                {
                    Iterator iterator1 = list.iterator();
                    do
                    {
                        if(!iterator1.hasNext())
                            break;
                        SceneInfo sceneinfo = (SceneInfo)iterator1.next();
                        if(sceneinfo != null)
                        {
                            sceneinfo.c(l);
                            if(sceneinfo.b())
                            {
                                Log.a("MicroMsg.NetSceneQueue", (new StringBuilder()).append("invalid scene info:").append(sceneinfo.a()).toString());
                            } else
                            {
                                Log.e("MicroMsg.NetSceneQueue", (new StringBuilder()).append("add sceneInfo to KvStat:").append(sceneinfo.a()).toString());
                                linkedlist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(7, sceneinfo.a()));
                            }
                        }
                    } while(true);
                    list.clear();
                }
            } while(true);
        }
        j.clear();
        return linkedlist;
    }

    public final void a(int k, int l, String s, NetSceneBase netscenebase)
    {
        int i1 = netscenebase.b();
        Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("end: type=").append(i1).append(" id=").append(netscenebase.hashCode()).append(" cur_running_cnt=").append(c.size()).append(" cur_waiting_cnt=").append(d.size()).toString());
        c.remove(netscenebase);
        d(netscenebase);
        List list = netscenebase.k_();
        switch(netscenebase.b())
        {
        default:
            if(list != null && list.size() > 0)
            {
                SceneInfo sceneinfo = (SceneInfo)list.get(-1 + list.size());
                if(sceneinfo != null)
                {
                    sceneinfo.b(Util.d());
                    sceneinfo.a(k, l);
                }
            }
            break;

        case 10: // '\n'
        case 21: // '\025'
        case 22: // '\026'
            break;
        }
        if(list != null)
            j.put(Integer.valueOf(netscenebase.b()), list);
        netscenebase.b(-1);
        Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("runningQueue_size = ").append(c.size()).toString());
        c();
        if(k == 1 && l == 6 && MMCore.f().b() && b != null)
            MMCore.f().W().a((new StringBuilder()).append("scene").append(netscenebase.b()).toString(), (new StringBuilder()).append("").append(k).append("-").append(l).append("-").append(b.a()).append("-").append(System.currentTimeMillis()).toString());
        f.post(new _cls5(i1, k, l, s, netscenebase));
        if(h && c.isEmpty() && d.isEmpty())
            i.a(60000L);
    }

    public final void a(int k, IOnSceneEnd ionsceneend)
    {
        if(!e[k].contains(ionsceneend))
            e[k].add(ionsceneend);
    }

    public final void a(NetSceneBase netscenebase)
    {
        netscenebase.a();
        netscenebase.b(-1);
        d.remove(netscenebase);
        c.remove(netscenebase);
        d(netscenebase);
    }

    public final void a(IDispatcher idispatcher)
    {
        b = idispatcher;
    }

    public final void a(boolean flag)
    {
        h = flag;
        if(!h)
        {
            i.a();
        } else
        {
            Log.a("MicroMsg.NetSceneQueue", "the working process is ready to be killed");
            i.a(60000L);
        }
    }

    public final void b()
    {
        NetSceneBase netscenebase1;
        for(Iterator iterator = d.iterator(); iterator.hasNext(); d(netscenebase1))
        {
            netscenebase1 = (NetSceneBase)iterator.next();
            Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("reset::cancel scene ").append(netscenebase1.b()).toString());
            netscenebase1.b(-1);
            netscenebase1.a();
        }

        d.clear();
        NetSceneBase netscenebase;
        for(Iterator iterator1 = c.iterator(); iterator1.hasNext(); d(netscenebase))
        {
            netscenebase = (NetSceneBase)iterator1.next();
            Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("reset::cancel scene ").append(netscenebase.b()).toString());
            netscenebase.b(-1);
            netscenebase.a();
        }

        c.clear();
    }

    public final void b(int k, IOnSceneEnd ionsceneend)
    {
        e[k].remove(ionsceneend);
    }

    public final boolean b(NetSceneBase netscenebase)
    {
        Assert.assertTrue(true);
        if(b != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L5:
        return flag1;
_L2:
        int k = netscenebase.b();
        k;
        JVM INSTR lookupswitch 8: default 96
    //                   4: 110
    //                   10: 110
    //                   24: 110
    //                   29: 110
    //                   37: 110
    //                   38: 110
    //                   39: 110
    //                   64: 110;
           goto _L3 _L4 _L4 _L4 _L4 _L4 _L4 _L4 _L4
_L3:
        boolean flag = true;
_L12:
        Iterator iterator;
        Iterator iterator1;
        NetSceneBase netscenebase1;
        NetSceneBase netscenebase2;
        if(!flag)
        {
            flag1 = false;
        } else
        {
            d(netscenebase);
            MTimerHandler mtimerhandler = new MTimerHandler(new ReturnTimeoutCallBack(netscenebase), false);
            g.put(netscenebase, mtimerhandler);
            mtimerhandler.a(netscenebase.g_());
            c(netscenebase);
            flag1 = true;
        }
          goto _L5
_L4:
        iterator = c.iterator();
_L9:
        if(!iterator.hasNext()) goto _L7; else goto _L6
_L6:
        netscenebase2 = (NetSceneBase)iterator.next();
        if(netscenebase2.b() != k) goto _L9; else goto _L8
_L8:
        Log.a("MicroMsg.NetSceneQueue", (new StringBuilder()).append("forbid in running: type=").append(netscenebase.b()).append(" id=").append(netscenebase.hashCode()).append(" cur_running_cnt=").append(c.size()).toString());
        if(!netscenebase.a(netscenebase2)) goto _L11; else goto _L10
_L10:
        if(!MMCore.d())
            Assert.assertTrue((new StringBuilder()).append("forbid in running diagnostic: ").append(e()).toString(), false);
        a(netscenebase2);
          goto _L3
_L11:
        flag = false;
          goto _L12
_L7:
        iterator1 = d.iterator();
_L15:
        if(!iterator1.hasNext()) goto _L3; else goto _L13
_L13:
        netscenebase1 = (NetSceneBase)iterator1.next();
        if(netscenebase1.b() != k) goto _L15; else goto _L14
_L14:
        Log.a("MicroMsg.NetSceneQueue", (new StringBuilder()).append("forbid in waiting: type=").append(netscenebase.b()).append(" id=").append(netscenebase.hashCode()).append(" cur_waiting_cnt=").append(d.size()).toString());
        if(!netscenebase.a(netscenebase1)) goto _L17; else goto _L16
_L16:
        if(!MMCore.d())
            Assert.assertTrue((new StringBuilder()).append("forbid in waiting diagnostic: ").append(e()).toString(), false);
        a(netscenebase1);
          goto _L3
_L17:
        flag = false;
          goto _L12
    }

    protected final void finalize()
    {
        b();
    }

    private static NetSceneQueue a = null;
    private IDispatcher b;
    private final List c = new LinkedList();
    private final List d = new LinkedList();
    private final List e[] = new ArrayList[90];
    private final Handler f = new _cls3();
    private final Map g = new HashMap();
    private boolean h;
    private MTimerHandler i;
    private final Map j = new HashMap();


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            Log.c("MicroMsg.NetSceneQueue", (new StringBuilder()).append("runningQueue.size:").append(NetSceneQueue.a(a).size()).append(" waitingQueue.size:").append(NetSceneQueue.b(a).size()).append(" foreground:").append(MMCore.d()).toString());
            if(NetSceneQueue.c(a) && NetSceneQueue.a(a).isEmpty() && NetSceneQueue.b(a).isEmpty() && !MMCore.d())
            {
                Log.a("MicroMsg.NetSceneQueue", "now killing the working process....");
                Context context = MMCore.c();
                context.stopService(new Intent(context, com/tencent/mm/booter/NotifyReceiver$NotifyService));
                NetSceneQueue.d(a);
            }
            return true;
        }

        private NetSceneQueue a;

        _cls1()
        {
            a = NetSceneQueue.this;
            super();
        }
    }


    private class _cls3 extends Handler
    {

        public void handleMessage(Message message)
        {
            a.b((NetSceneBase)message.obj);
        }

        private NetSceneQueue a;

        _cls3()
        {
            a = NetSceneQueue.this;
            super();
        }
    }


    private class _cls4
        implements Runnable
    {

        public void run()
        {
            b.a(3, -1, "doScene failed", a);
        }

        private NetSceneBase a;
        private NetSceneQueue b;

        _cls4(NetSceneBase netscenebase)
        {
            b = NetSceneQueue.this;
            a = netscenebase;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            Process.killProcess(Process.myPid());
        }

        private NetSceneQueue a;

        _cls2()
        {
            a = NetSceneQueue.this;
            super();
        }
    }


    private class _cls5
        implements Runnable
    {

        public void run()
        {
            List list = NetSceneQueue.e(f)[a];
            for(int k = 0; k < list.size(); k++)
            {
                IOnSceneEnd ionsceneend = (IOnSceneEnd)list.get(k);
                if(ionsceneend != null)
                    ionsceneend.a(b, c, d, e);
            }

        }

        private int a;
        private int b;
        private int c;
        private String d;
        private NetSceneBase e;
        private NetSceneQueue f;

        _cls5(int k, int l, int i1, String s, NetSceneBase netscenebase)
        {
            f = NetSceneQueue.this;
            a = k;
            b = l;
            c = i1;
            d = s;
            e = netscenebase;
            super();
        }
    }


    private class ReturnTimeoutCallBack
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            Log.a("MicroMsg.NetSceneQueue", (new StringBuilder()).append("scene not return, type = ").append(a.b()).append(", canceled").toString());
            b.a(a);
            b.a(3, -1, "doScene failed", a);
            return false;
        }

        private final NetSceneBase a;
        private NetSceneQueue b;

        public ReturnTimeoutCallBack(NetSceneBase netscenebase)
        {
            b = NetSceneQueue.this;
            super();
            a = netscenebase;
        }
    }

}

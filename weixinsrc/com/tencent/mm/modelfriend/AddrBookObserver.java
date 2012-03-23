// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.TimeLogger;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelfriend:
//            AddrBookReadThread, FriendLogic

public class AddrBookObserver extends ContentObserver
    implements AddrBookReadThread.CallBack
{

    public AddrBookObserver(Context context, Handler handler)
    {
        super(handler);
        i = new _cls1();
        a = context;
    }

    static List a(AddrBookObserver addrbookobserver)
    {
        return addrbookobserver.c;
    }

    public static void a()
    {
        h = true;
    }

    static List b(AddrBookObserver addrbookobserver)
    {
        return addrbookobserver.d;
    }

    static boolean b()
    {
        return h;
    }

    static OnSyncAddrBookOkListener c(AddrBookObserver addrbookobserver)
    {
        return addrbookobserver.e;
    }

    static boolean c()
    {
        g = false;
        return false;
    }

    static TimeLogger d(AddrBookObserver addrbookobserver)
    {
        return addrbookobserver.f;
    }

    static Context e(AddrBookObserver addrbookobserver)
    {
        return addrbookobserver.a;
    }

    public final void a(List list, List list1)
    {
        c = list;
        d = list1;
        i.sendEmptyMessage(0);
        b = null;
    }

    public final boolean a(OnSyncAddrBookOkListener onsyncaddrbookoklistener)
    {
        boolean flag = false;
        if(g)
        {
            Log.a("MicroMsg.AddrBookObserver", "already syncing, skip");
        } else
        {
            g = true;
            h = flag;
            e = onsyncaddrbookoklistener;
            b = new AddrBookReadThread(a, this);
            f = new TimeLogger("MicroMsg.AddrBookObserver", "sync addrBook");
            f.a("sync begin");
            b.start();
            flag = true;
        }
        return flag;
    }

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        Log.e("MicroMsg.AddrBookObserver", "address book changed");
        if(MMCore.f().b() && FriendLogic.a(System.currentTimeMillis()) && FriendLogic.b() == FriendLogic.BindOpMobileState.c)
            a(((OnSyncAddrBookOkListener) (null)));
    }

    private static AddrBookReadThread b;
    private static boolean g = false;
    private static boolean h = false;
    private final Context a;
    private List c;
    private List d;
    private OnSyncAddrBookOkListener e;
    private TimeLogger f;
    private Handler i;


    private class _cls1 extends Handler
    {

        private static List a(List list, int j, int k)
        {
            LinkedList linkedlist = new LinkedList();
            for(; j < k; j++)
                linkedlist.add(list.get(j));

            return linkedlist;
        }

        private void a()
        {
            TimeLogger timelogger = new TimeLogger("MicroMsg.AddrBookObserver", "delete");
            ArrayList arraylist = new ArrayList();
            List list = o.b(AddrBookObserver.e(c));
            Iterator iterator = MMCore.f().t().e().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                String as[] = (String[])iterator.next();
                String s = Util.h(as[0]);
                String s1 = Util.h(as[1]);
                Log.e("MicroMsg.AddrBookObserver", (new StringBuilder()).append(s).append("  ").append(s1).toString());
                if(!s.equals("") && !list.contains(s))
                    arraylist.add(s1);
            } while(true);
            if(arraylist.size() > 0)
                MMCore.f().t().a(arraylist);
            timelogger.a("end");
            timelogger.a();
        }

        public void handleMessage(Message message)
        {
            if(!AddrBookObserver.b()) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if(message.what == 0)
                if(AddrBookObserver.a(c) == null || AddrBookObserver.a(c).size() == 0)
                {
                    sendEmptyMessage(1);
                } else
                {
                    Log.e("MicroMsg.AddrBookObserver", (new StringBuilder()).append("sync email index: ").append(a).toString());
                    if(a < AddrBookObserver.a(c).size())
                    {
                        if(100 + a < AddrBookObserver.a(c).size())
                            b = a(AddrBookObserver.a(c), a, 100 + a);
                        else
                            b = a(AddrBookObserver.a(c), a, AddrBookObserver.a(c).size());
                        Log.e("MicroMsg.AddrBookObserver", (new StringBuilder()).append("sync email listToSync size: ").append(b.size()).toString());
                        FriendLogic.a(b);
                        a = 100 + a;
                        sendEmptyMessageDelayed(0, 250L);
                    } else
                    {
                        sendEmptyMessage(1);
                        a = 0;
                    }
                }
            if(message.what == 1)
                if(AddrBookObserver.b(c) == null || AddrBookObserver.b(c).size() == 0)
                {
                    AddrBookObserver.c();
                    if(AddrBookObserver.c(c) != null)
                        AddrBookObserver.c(c).a();
                } else
                {
                    Log.e("MicroMsg.AddrBookObserver", (new StringBuilder()).append("sync mobile index: ").append(a).toString());
                    if(a < AddrBookObserver.b(c).size())
                    {
                        if(100 + a < AddrBookObserver.b(c).size())
                            b = a(AddrBookObserver.b(c), a, 100 + a);
                        else
                            b = a(AddrBookObserver.b(c), a, AddrBookObserver.b(c).size());
                        Log.e("MicroMsg.AddrBookObserver", (new StringBuilder()).append("sync mobile listToSync size: ").append(b.size()).toString());
                        FriendLogic.a(b);
                        a = 100 + a;
                        sendEmptyMessageDelayed(1, 250L);
                    } else
                    {
                        AddrBookObserver.c();
                        if(AddrBookObserver.c(c) != null)
                        {
                            a();
                            AddrBookObserver.d(c).a("sync ok");
                            AddrBookObserver.d(c).a();
                            AddrBookObserver.c(c).a();
                        } else
                        {
                            AddrBookObserver.d(c).a("sync ok");
                            AddrBookObserver.d(c).a();
                            a = 0;
                        }
                    }
                }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private int a;
        private List b;
        private AddrBookObserver c;

        _cls1()
        {
            c = AddrBookObserver.this;
            super();
            a = 0;
        }

        private class OnSyncAddrBookOkListener
        {

            public abstract void a();
        }

    }

}

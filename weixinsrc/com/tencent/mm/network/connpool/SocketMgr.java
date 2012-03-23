// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import android.os.Looper;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.test.Test;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network.connpool:
//            ConnEvent, SocketEngine, IConnPoolMoniter, InAddrHost, 
//            InAddress, IOnSocketRecv, IRecord

public class SocketMgr extends ConnEvent
{

    public SocketMgr(InAddrHost inaddrhost, IOnSocketRecv ionsocketrecv, Looper looper)
    {
        super(looper);
        b = null;
        i = -1L;
        j = false;
        c = ionsocketrecv;
        h = 11;
        g = inaddrhost;
        b();
    }

    static SocketEngine a(SocketMgr socketmgr)
    {
        return socketmgr.b;
    }

    static IOnSocketRecv b(SocketMgr socketmgr)
    {
        return socketmgr.c;
    }

    static void c(SocketMgr socketmgr)
    {
        socketmgr.d();
    }

    static Map d(SocketMgr socketmgr)
    {
        return socketmgr.d;
    }

    private void d()
    {
        Log.e("MicroMsg.SocketMgr", "cancel all pending");
        Iterator iterator = f.values().iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            MTimerHandler mtimerhandler = (MTimerHandler)iterator.next();
            if(mtimerhandler != null)
                mtimerhandler.a();
        } while(true);
        f.clear();
    }

    static Queue e(SocketMgr socketmgr)
    {
        return socketmgr.e;
    }

    private void e()
    {
        Log.e("MicroMsg.SocketMgr", "cancel nooping");
        k.b();
    }

    static SocketEngine f(SocketMgr socketmgr)
    {
        socketmgr.b = null;
        return null;
    }

    public final int a(int l, byte abyte0[], IRecord irecord, int i1, boolean flag)
    {
        Log.c("MicroMsg.SocketMgr", (new StringBuilder()).append("request cmd: ").append(l).toString());
        SocketEngine.Request request;
        if(i1 == -1)
        {
            i1 = h;
            h = i1 + 1;
        }
        Log.d("MicroMsg.SocketMgr", (new StringBuilder()).append("--> build send message: seqId=").append(i1).toString());
        request = new SocketEngine.Request(i1, l, abyte0, flag);
        if(irecord == null)
        {
            if(b != null && b.c())
                b.a(request);
            else
                Log.a("MicroMsg.SocketMgr", "nooping failed, socket engine not connected");
        } else
        {
            d.put(Integer.valueOf(i1), irecord);
            if(b == null || !b.b())
            {
                if(b != null)
                    b.d();
                Log.b("MicroMsg.SocketMgr", "create new socket engine");
                b = new SocketEngine(g, this);
                b.start();
            }
            if(!b.c())
            {
                Log.d("MicroMsg.SocketMgr", "engine not connected, added to working queue");
                e.add(request);
            } else
            {
                b.a(request);
            }
        }
        Log.d("MicroMsg.SocketMgr", "<-- build send message");
        return i1;
    }

    public final void a(int l)
    {
        Log.d("MicroMsg.SocketMgr", (new StringBuilder()).append("cancel message seq=").append(l).toString());
        d.put(Integer.valueOf(l), new CanceledRecords());
    }

    protected final void a(int l, Object obj, Object obj1)
    {
        if(obj instanceof String)
            Log.d("MicroMsg.SocketMgr", (new StringBuilder()).append("onStatusCallback=").append(l).append(", m.").append((String)obj).toString());
        else
            Log.d("MicroMsg.SocketMgr", (new StringBuilder()).append("onStatusCallback=").append(l).toString());
        if(b != null) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.SocketMgr", "socket manager has been reset");
_L8:
        return;
_L2:
        l;
        JVM INSTR tableswitch 2 5: default 116
    //                   2 140
    //                   3 140
    //                   4 432
    //                   5 293;
           goto _L3 _L4 _L4 _L5 _L6
_L3:
        if(a != null)
            a.a(l, 0, "long", obj);
        continue; /* Loop/switch isn't completed */
_L4:
        if(l == 3)
        {
            InAddress inaddress = g.b();
            if(a != null && inaddress != null && !inaddress.c())
                a.a(8, 0, "long", inaddress.toString());
        }
        Assert.assertNotNull(b);
        SocketEngine.Request request = (SocketEngine.Request)e.poll();
        while(request != null) 
        {
            Log.d("MicroMsg.SocketMgr", (new StringBuilder()).append("sending pending queue, req.cmd=").append(request.b().e).append(", req.len=").append(request.b().b).toString());
            b.a(request);
            request = (SocketEngine.Request)e.poll();
        }
          goto _L3
_L6:
        SocketEngine.Header header1 = (SocketEngine.Header)obj1;
        if(!header1.a)
        {
            int j1 = header1.f;
            Log.e("MicroMsg.SocketMgr", (new StringBuilder()).append("start pending seq:").append(j1).toString());
            MTimerHandler mtimerhandler1 = new MTimerHandler(new PenderCallBack(), false);
            mtimerhandler1.a(30000L);
            f.put(Integer.valueOf(j1), mtimerhandler1);
        }
        Log.e("MicroMsg.SocketMgr", "start nooping");
        k.a(0x3a980L);
        if(a != null)
            a.a(l, 0x80000000 | header1.e, "long", obj);
        continue; /* Loop/switch isn't completed */
_L5:
        SocketEngine.Header header = (SocketEngine.Header)obj1;
        int i1 = header.f;
        Log.e("MicroMsg.SocketMgr", (new StringBuilder()).append("cancel pending seq:").append(i1).toString());
        MTimerHandler mtimerhandler = (MTimerHandler)f.get(Integer.valueOf(i1));
        if(mtimerhandler != null)
        {
            mtimerhandler.a();
            f.remove(Integer.valueOf(i1));
        }
        if(a != null)
            a.a(l, 0x80000000 | header.e, "long", obj);
        if(true) goto _L8; else goto _L7
_L7:
    }

    protected final void a(String s, Integer integer, Object obj)
    {
        Log.b("MicroMsg.SocketMgr", (new StringBuilder()).append("onStatusFailCallback err=").append(integer).append(", msg=").append(s).toString());
        e();
        d();
        if(b == null)
        {
            Log.b("MicroMsg.SocketMgr", "socket manager has been reset");
        } else
        {
            SocketEngine.Header header = (SocketEngine.Header)obj;
            if(header == null || header.e == 6)
            {
                c.a(d, e);
                c.b(true);
            } else
            {
                int l = header.f;
                Object obj1 = d.get(Integer.valueOf(l));
                d.remove(Integer.valueOf(l));
                c.a(l, integer.intValue(), s, null, obj1);
            }
        }
    }

    public final void a(boolean flag)
    {
        Log.c("MicroMsg.SocketMgr", "reset start time");
        j = flag;
        i = System.currentTimeMillis();
    }

    protected final void a(byte abyte0[], Object obj)
    {
        boolean flag;
        SocketEngine.Header header;
        int l;
        IRecord irecord;
        flag = false;
        header = (SocketEngine.Header)obj;
        Log.c("MicroMsg.SocketMgr", (new StringBuilder()).append("onStatusOkCallback cmdid=").append(header.e).append(", totalLen=").append(header.b).append(", bodyLen=").append(abyte0.length).append(", seq=").append(header.f).toString());
        c.b(flag);
        l = header.f;
        irecord = (IRecord)d.get(Integer.valueOf(l));
        d.remove(Integer.valueOf(l));
        if(irecord != null) goto _L2; else goto _L1
_L1:
        if(header.e != 0x3b9aca06) goto _L4; else goto _L3
_L3:
        return;
_L4:
        c.a(l, header.e, abyte0);
_L6:
        if(b != null)
            break; /* Loop/switch isn't completed */
        Log.b("MicroMsg.SocketMgr", "socket manager has been reset");
        continue; /* Loop/switch isn't completed */
_L2:
        if(irecord instanceof CanceledRecords)
        {
            Log.c("MicroMsg.SocketMgr", (new StringBuilder()).append("record has been canceled, seq=").append(l).toString());
        } else
        {
            if(b != null)
                irecord.a(b.a());
            c.a(l, flag, "", abyte0, irecord);
        }
        if(true) goto _L6; else goto _L5
_L5:
        if(d.size() > 0)
            continue; /* Loop/switch isn't completed */
        if(Test.d && !j)
        {
            if(i > 0L)
                break; /* Loop/switch isn't completed */
            flag = true;
        }
_L9:
        if(flag)
        {
            Log.b("MicroMsg.SocketMgr", "no request left in touch mode, reset socket, stop nooping, start looping");
            e();
            c.b(true);
            Assert.assertNotNull(b);
            b.d();
        }
        if(true) goto _L3; else goto _L7
_L7:
        if(0x124f80L + i >= System.currentTimeMillis()) goto _L9; else goto _L8
_L8:
        flag = true;
          goto _L9
    }

    public final void b()
    {
        c();
        b = null;
        d = new HashMap();
        e = new LinkedList();
        f = new HashMap();
        c.b(true);
        d();
        e();
    }

    public final void c()
    {
        if(b != null)
            b.d();
    }

    private SocketEngine b;
    private final IOnSocketRecv c;
    private Map d;
    private Queue e;
    private Map f;
    private final InAddrHost g;
    private int h;
    private long i;
    private boolean j;
    private final MAlarmHandler k = new MAlarmHandler(new _cls1(), true);

    private class _cls1
        implements com.tencent.mm.platformtools.MAlarmHandler.CallBack
    {

        public final boolean a()
        {
            Log.c("MicroMsg.SocketMgr", "nooping");
            if(SocketMgr.a(a) == null || !SocketMgr.a(a).c())
                Log.d("MicroMsg.SocketMgr", "nooping failed, socket engine not connected");
            else
                a.a(6, new byte[0], null, -1, false);
            return true;
        }

        private SocketMgr a;

        _cls1()
        {
            a = SocketMgr.this;
            super();
        }
    }


    private class CanceledRecords
        implements IRecord
    {

        public final void a(String s)
        {
        }

        CanceledRecords()
        {
            this((byte)0);
        }

        private CanceledRecords(byte byte0)
        {
        }
    }


    private class PenderCallBack
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            SocketMgr.b(a).b(true);
            SocketMgr.c(a);
            Iterator iterator = SocketMgr.d(a).entrySet().iterator();
            int l = 0;
            do
            {
                if(!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if(entry.getValue() != null && !(entry.getValue() instanceof CanceledRecords))
                    l++;
            } while(true);
            Log.a("MicroMsg.SocketMgr", (new StringBuilder()).append("network not responsed, disconnect, left=").append(l).toString());
            SocketMgr.b(a).a(SocketMgr.d(a), SocketMgr.e(a));
            if(SocketMgr.a(a) != null)
            {
                SocketMgr.a(a).d();
                SocketMgr.f(a);
            }
            return true;
        }

        private SocketMgr a;

        PenderCallBack()
        {
            this((byte)0);
        }

        private PenderCallBack(byte byte0)
        {
            a = SocketMgr.this;
            super();
        }
    }

}

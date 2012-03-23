// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.Looper;
import android.os.RemoteException;
import com.tencent.mm.network.connpool.HttpMgr;
import com.tencent.mm.network.connpool.IConnPoolMoniter;
import com.tencent.mm.network.connpool.IConnPoolMoniter_AIDL;
import com.tencent.mm.network.connpool.IOnHttpRecv;
import com.tencent.mm.network.connpool.IOnSocketRecv;
import com.tencent.mm.network.connpool.IRecord;
import com.tencent.mm.network.connpool.InAddrHost;
import com.tencent.mm.network.connpool.InAddress;
import com.tencent.mm.network.connpool.SocketMgr;
import com.tencent.mm.network.connpool.SpeedTest;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.*;
import com.tencent.mm.test.Test;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network:
//            RecordMgr, MMPushCore, NetService, GYNetContext, 
//            IReqResp_AIDL, IAccInfo, IOnGYNetEndNetwork, PktCmdKV, 
//            INetContext, NetworkEvent, IOnGYNetNotify

public class GYNet
    implements IConnPoolMoniter, IOnHttpRecv, IOnSocketRecv
{

    public GYNet(IOnGYNetNotify iongynetnotify, Looper looper)
    {
        c = 0;
        j = new InAddress[0];
        k = new InAddress[0];
        a = false;
        l = false;
        m = 3;
        p = 60000;
        int ai[] = new int[1];
        ai[0] = 80;
        e = new InAddrHost("short.weixin.qq.com", ai, new _cls2());
        f = new HttpMgr(this, d, looper);
        int ai1[] = new int[2];
        ai1[0] = 443;
        ai1[1] = 80;
        g = new InAddrHost("long.weixin.qq.com", ai1, new _cls3());
        h = new SocketMgr(g, this, looper);
        i = iongynetnotify;
        n = new SpeedTest(looper, (byte)0);
        f.a(this);
        h.a(this);
        n.a(this);
    }

    private void a(int i1, boolean flag)
    {
        if(!a || NetService.a(MMPushCore.d())) goto _L2; else goto _L1
_L1:
        p = 60000;
        q.a(p);
_L4:
        return;
_L2:
        int j1;
        if(a && !flag)
        {
            p = 60000;
            q.a(p);
            continue; /* Loop/switch isn't completed */
        }
        switch(i1)
        {
        default:
            continue; /* Loop/switch isn't completed */

        case 1: // '\001'
        case 38: // '&'
        case 39: // '\''
            j1 = p;
            break;
        }
        if(!flag)
            break; /* Loop/switch isn't completed */
        p = 60000;
_L5:
        Log.d("MicroMsg.GYNet", (new StringBuilder()).append("modify loop interval from ").append(j1).append("ms to ").append(p).append("ms, type=").append(i1).append(", succ=").append(flag).toString());
        if(!q.c())
        {
            q.a(p);
            Log.d("MicroMsg.GYNet", (new StringBuilder()).append("restart looper at ").append(p).toString());
        }
        if(true) goto _L4; else goto _L3
_L3:
        p = 2 * p;
        if(p > 0x927c0)
            p = 0x927c0;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    static void a(GYNet gynet)
    {
        gynet.d();
    }

    private void a(GYNetContext gynetcontext)
    {
        PByteArray pbytearray;
        boolean flag;
        pbytearray = new PByteArray();
        long l1 = Util.e();
        flag = gynetcontext.c.d().a(gynetcontext.c.a(), gynetcontext.a.e(), gynetcontext.a.f(), 0);
        Log.d("MicroMsg.GYNet", (new StringBuilder()).append("encoding, type=").append(gynetcontext.c.a()).append(", key=").append(gynetcontext.a.e()).append(", time=").append(Util.f(l1)).toString());
        if(flag) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.GYNet", "request to buffer using jni failed");
        gynetcontext.b.a(gynetcontext.h, 6, -1, "", gynetcontext.c, null);
_L4:
        return;
_L2:
        pbytearray.value = gynetcontext.c.d().a();
        if(pbytearray.value != null && !NetService.b(MMPushCore.d()))
            switch(gynetcontext.c.a())
            {
            default:
                int k2 = o.a(pbytearray.value.length);
                if(k2 < 100 && (new Random()).nextInt(100) >= k2)
                {
                    Log.a("MicroMsg.GYNet", (new StringBuilder()).append("flow control limited, fake send failed, rate=").append(k2).append("%").toString());
                    gynetcontext.b.a(gynetcontext.h, 1, -1, "", gynetcontext.c, null);
                    continue; /* Loop/switch isn't completed */
                }
                break;

            case 41: // ')'
            case 85: // 'U'
                break;
            }
        boolean flag1;
        PktCmdKV pktcmdkv;
        boolean flag2;
        if(!l && NetService.a(MMPushCore.d()))
            flag1 = true;
        else
            flag1 = false;
        pktcmdkv = PktCmdKV.a(gynetcontext.c.a(), flag1, gynetcontext.c.d());
        if(pktcmdkv.a != 0)
            flag2 = true;
        else
            flag2 = false;
        if(flag2 && pktcmdkv.c && gynetcontext.f > 0)
        {
            gynetcontext.f = -1 + gynetcontext.f;
            SocketMgr socketmgr = h;
            int k1 = pktcmdkv.a;
            byte abyte1[] = pbytearray.value;
            int i2 = gynetcontext.h;
            boolean flag4;
            int j2;
            if(pktcmdkv.a == 8)
                flag4 = true;
            else
                flag4 = false;
            j2 = socketmgr.a(k1, abyte1, gynetcontext, i2, flag4);
            if(j2 >= 0)
            {
                gynetcontext.h = j2;
                continue; /* Loop/switch isn't completed */
            }
        } else
        {
            if(pktcmdkv.b)
            {
                Log.a("MicroMsg.GYNet", (new StringBuilder()).append("network not support, cmd id=").append(pktcmdkv.a).append(", socketRetry=").append(gynetcontext.f).toString());
                gynetcontext.f = 0;
                gynetcontext.g = 0;
                a(gynetcontext.c.a(), false);
                gynetcontext.b.a(gynetcontext.h, 1, -1, "", gynetcontext.c, null);
                gynetcontext.h = -1;
                continue; /* Loop/switch isn't completed */
            }
            if(gynetcontext.g > 0)
            {
                if(gynetcontext.f > 0)
                    gynetcontext.f = 0;
                gynetcontext.g = -1 + gynetcontext.g;
                HttpMgr httpmgr = f;
                InAddrHost inaddrhost = e;
                String s1 = gynetcontext.c.b();
                byte abyte0[] = pbytearray.value;
                int i1;
                boolean flag3;
                int j1;
                if(gynetcontext.f < 0)
                    i1 = -1;
                else
                    i1 = gynetcontext.h;
                if(!pktcmdkv.c)
                    flag3 = true;
                else
                    flag3 = false;
                j1 = httpmgr.a(inaddrhost, s1, abyte0, gynetcontext, i1, flag3);
                if(j1 >= 0)
                {
                    gynetcontext.h = j1;
                    continue; /* Loop/switch isn't completed */
                }
            }
        }
        gynetcontext.b.a(gynetcontext.h, 1, -1, "", gynetcontext.c, null);
        if(true) goto _L4; else goto _L3
_L3:
    }

    static IOnGYNetNotify b(GYNet gynet)
    {
        return gynet.i;
    }

    static InAddress[] c(GYNet gynet)
    {
        return gynet.j;
    }

    private void d()
    {
        Log.d("MicroMsg.GYNet", "cancelPoller");
        if(r != null)
        {
            r.c();
            r = null;
        }
    }

    static InAddress[] d(GYNet gynet)
    {
        return gynet.k;
    }

    public final INetContext a(INetContext inetcontext)
    {
        ((GYNetContext)inetcontext).e = 0;
        a((GYNetContext)inetcontext);
        Log.c("MicroMsg.GYNet", (new StringBuilder()).append("send id=").append(inetcontext.a()).append(" dt=").append(inetcontext.b()).append(" t=").append(inetcontext.c().a()).toString());
        return inetcontext;
    }

    public final INetContext a(IReqResp_AIDL ireqresp_aidl, IOnGYNetEndNetwork iongynetendnetwork, IAccInfo iaccinfo)
    {
        GYNetContext gynetcontext = new GYNetContext(m, m);
        gynetcontext.b = iongynetendnetwork;
        gynetcontext.c = ireqresp_aidl;
        gynetcontext.a = iaccinfo;
        gynetcontext.e = 1;
        return gynetcontext;
    }

    public final void a()
    {
        Log.b("MicroMsg.GYNet", "reset");
        f.b();
        h.b();
        d.a();
    }

    public final void a(int i1, int j1, String s1, Object obj)
    {
        int k1;
        boolean flag;
        boolean flag1;
        String s2;
        k1 = 4;
        flag = true;
        flag1 = NetService.b(MMPushCore.d());
        s2 = (new StringBuilder()).append("").append(obj).toString();
        i1;
        JVM INSTR tableswitch 0 9: default 92
    //                   0 761
    //                   1 92
    //                   2 92
    //                   3 92
    //                   4 123
    //                   5 123
    //                   6 109
    //                   7 92
    //                   8 92
    //                   9 767;
           goto _L1 _L2 _L1 _L1 _L1 _L3 _L3 _L4 _L1 _L1 _L5
_L1:
        boolean flag2 = false;
_L8:
        IConnPoolMoniter_AIDL iconnpoolmoniter_aidl = MMPushCore.b().a();
        if(iconnpoolmoniter_aidl != null) goto _L7; else goto _L6
_L6:
        return;
_L4:
        MMPushCore.c().a(k1);
        flag2 = false;
          goto _L8
_L3:
        if((0x40000000 & j1) == 0) goto _L10; else goto _L9
_L9:
        k1 = d.b(j1 & 0x3fffffff);
_L18:
        j1 = k1;
_L15:
        i1;
        JVM INSTR tableswitch 4 5: default 172
    //                   4 720
    //                   5 679;
           goto _L11 _L12 _L13
_L11:
        flag = false;
_L16:
        flag2 = flag;
          goto _L8
_L10:
        if((0x80000000 & j1) == 0) goto _L15; else goto _L14
_L14:
        switch(j1 & 0x3fffffff)
        {
        default:
            k1 = -1;
            break;

        case 1: // '\001'
        case 1000000001: 
            k1 = ((flag) ? 1 : 0);
            break;

        case 26: // '\032'
        case 1000000026: 
            k1 = 38;
            break;

        case 8: // '\b'
            k1 = 10;
            break;

        case 9: // '\t'
        case 1000000009: 
            k1 = 9;
            break;

        case 10: // '\n'
        case 1000000010: 
            k1 = 8;
            break;

        case 25: // '\031'
        case 1000000025: 
            k1 = 39;
            break;

        case 27: // '\033'
        case 1000000027: 
            k1 = 37;
            break;

        case 16: // '\020'
        case 1000000016: 
            k1 = 12;
            break;

        case 23: // '\027'
        case 1000000023: 
            k1 = 13;
            break;

        case 19: // '\023'
        case 1000000019: 
            k1 = 21;
            break;

        case 20: // '\024'
        case 1000000020: 
            k1 = 22;
            break;

        case 39: // '\''
        case 1000000039: 
            k1 = 41;
            break;

        case 40: // '('
        case 1000000040: 
            k1 = 40;
            break;

        case 62: // '>'
        case 1000000062: 
            k1 = 74;
            break;

        case 63: // '?'
        case 1000000063: 
            k1 = 70;
            break;

        case 64: // '@'
        case 1000000064: 
            k1 = 71;
            break;

        case 65: // 'A'
        case 1000000065: 
            k1 = 72;
            break;

        case 66: // 'B'
        case 1000000066: 
            k1 = 73;
            break;

        case 81: // 'Q'
        case 1000000081: 
            k1 = 75;
            break;

        case 84: // 'T'
        case 1000000084: 
            k1 = 85;
            break;

        case 2: // '\002'
        case 1000000002: 
            break;
        }
        continue; /* Loop/switch isn't completed */
_L13:
        if(flag1)
            s += ((Integer)obj).intValue();
        else
            t += ((Integer)obj).intValue();
          goto _L16
_L12:
        if(flag1)
            u += ((Integer)obj).intValue();
        else
            v += ((Integer)obj).intValue();
          goto _L16
        if(true) goto _L18; else goto _L17
_L17:
_L2:
        flag2 = false;
          goto _L8
_L5:
        MMPushCore.c().a(obj.toString());
          goto _L6
_L7:
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        try
        {
            IConnPoolMoniter_AIDL iconnpoolmoniter_aidl1 = MMPushCore.a();
            if(iconnpoolmoniter_aidl1 != null)
                iconnpoolmoniter_aidl1.a(i1, 0, s1, 0, s2, flag1);
        }
        catch(Exception exception) { }
        if(flag2)
            break MISSING_BLOCK_LABEL_833;
        l2 = j1;
        iconnpoolmoniter_aidl.a(i1, l2, s1, 0, s2, flag1);
          goto _L6
        if(s > 0)
        {
            k2 = s;
            iconnpoolmoniter_aidl.a(5, j1, s1, k2, s2, true);
            s = 0;
        }
        if(t > 0)
        {
            j2 = t;
            iconnpoolmoniter_aidl.a(5, j1, s1, j2, s2, false);
            t = 0;
        }
        if(u > 0)
        {
            i2 = u;
            iconnpoolmoniter_aidl.a(4, j1, s1, i2, s2, true);
            u = 0;
        }
        if(v > 0)
        {
            l1 = v;
            iconnpoolmoniter_aidl.a(4, j1, s1, l1, s2, false);
            v = 0;
        }
          goto _L6
        Exception exception1;
        exception1;
          goto _L6
    }

    public final void a(int i1, int j1, String s1, byte abyte0[], Object obj)
    {
        GYNetContext gynetcontext;
        if(!(obj instanceof GYNetContext))
        {
            Log.a("MicroMsg.GYNet", (new StringBuilder()).append("onRecv failed, threadId=").append(i1).append(", err=").append(s1).toString());
            break MISSING_BLOCK_LABEL_993;
        }
        gynetcontext = (GYNetContext)obj;
        if(i1 != gynetcontext.h)
        {
            Log.a("MicroMsg.GYNet", (new StringBuilder()).append("caught different threadId: ").append(i1).append("/").append(gynetcontext.h).toString());
            Assert.assertTrue(false);
            break MISSING_BLOCK_LABEL_993;
        }
        if(gynetcontext.d)
        {
            Log.b("MicroMsg.GYNet", (new StringBuilder()).append("context has been set to invalid, threadId=").append(i1).toString());
            break MISSING_BLOCK_LABEL_993;
        }
        if(j1 != 0)
        {
            c = 1 + c;
            if(gynetcontext.f > 0)
                b = (new StringBuilder()).append("").append(g.b()).toString();
            else
                b = (new StringBuilder()).append("").append(e.b()).toString();
            if(gynetcontext.f > 0 || gynetcontext.g > 0)
            {
                Log.a("MicroMsg.GYNet", (new StringBuilder()).append("network failed, remain retry: socket=").append(gynetcontext.f).append("/http=").append(gynetcontext.g).toString());
                a(gynetcontext);
            } else
            {
                a(gynetcontext.c.a(), false);
                MMPushCore.c().a(3);
                gynetcontext.b.a(i1, 1, j1, s1, gynetcontext.c, null);
            }
            break MISSING_BLOCK_LABEL_993;
        }
        if(gynetcontext.c.a() != 10)
            c = 0;
        if(abyte0 == null || abyte0.length == 0)
        {
            if(gynetcontext.c.a() == 10)
                gynetcontext.b.a(i1, 0, j1, s1, gynetcontext.c, null);
            else
            if(gynetcontext.f > 0 || gynetcontext.g > 0)
            {
                Log.a("MicroMsg.GYNet", (new StringBuilder()).append("codec failed, remain retry: socket=").append(gynetcontext.f).append("/http=").append(gynetcontext.g).toString());
                a(gynetcontext);
            } else
            {
                a(gynetcontext.c.a(), false);
                gynetcontext.b.a(i1, 5, -1, s1, gynetcontext.c, null);
            }
            break MISSING_BLOCK_LABEL_993;
        }
        gynetcontext.c.a();
        JVM INSTR lookupswitch 7: default 596
    //                   1: 789
    //                   2: 789
    //                   6: 804
    //                   23: 789
    //                   25: 804
    //                   34: 804
    //                   36: 804;
           goto _L1 _L2 _L2 _L3 _L2 _L3 _L3 _L3
_L1:
        String s2 = gynetcontext.a.e();
_L5:
        PByteArray pbytearray = new PByteArray();
        IMMBaseResp_AIDL immbaseresp_aidl = gynetcontext.c.c();
        long l1 = Util.e();
        boolean flag = immbaseresp_aidl.a(gynetcontext.c.a(), abyte0, s2);
        Log.d("MicroMsg.GYNet", (new StringBuilder()).append("decoding, type=").append(gynetcontext.c.a()).append(", key=").append(s2).append(", time=").append(Util.f(l1)).toString());
        if(!flag)
            break; /* Loop/switch isn't completed */
        pbytearray.value = immbaseresp_aidl.a();
        if(Test.a())
            immbaseresp_aidl.a(-1);
        if(immbaseresp_aidl.b() != 0)
        {
            gynetcontext.b.a(i1, 4, immbaseresp_aidl.b(), s1, gynetcontext.c, pbytearray.value);
        } else
        {
            MMPushCore.c().a(5);
            a(gynetcontext.c.a(), true);
            gynetcontext.b.a(i1, 0, 0, s1, gynetcontext.c, pbytearray.value);
        }
        break MISSING_BLOCK_LABEL_993;
_L2:
        s2 = gynetcontext.a.c();
        continue; /* Loop/switch isn't completed */
_L3:
        s2 = gynetcontext.c.d().h();
        if(true) goto _L5; else goto _L4
_L4:
        Log.a("MicroMsg.GYNet", "buf to resp failed, change server and try again");
        h.c();
        if(gynetcontext.f > 0 || gynetcontext.g > 0)
        {
            Log.a("MicroMsg.GYNet", (new StringBuilder()).append("network failed, remain retry: socket=").append(gynetcontext.f).append("/http=").append(gynetcontext.g).toString());
            a(gynetcontext);
        } else
        {
            a(gynetcontext.c.a(), false);
            gynetcontext.b.a(i1, 5, abyte0.length, s1, gynetcontext.c, null);
        }
_L7:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final void a(int i1, int j1, byte abyte0[])
    {
        int k1;
        k1 = 0;
        Assert.assertNotNull(abyte0);
        Log.c("MicroMsg.GYNet", (new StringBuilder()).append("onNotify, seq(threadId)=").append(i1).append(", datalen=").append(abyte0.length).toString());
        j1;
        JVM INSTR lookupswitch 7: default 112
    //                   5: 113
    //                   8: 198
    //                   11: 112
    //                   12: 283
    //                   24: 144
    //                   61: 175
    //                   88: 226;
           goto _L1 _L2 _L3 _L1 _L4 _L5 _L6 _L7
_L1:
        return;
_L2:
        Log.c("MicroMsg.GYNet", "old notify");
        i.a(k1, k1, "", 38, null);
        continue; /* Loop/switch isn't completed */
_L5:
        Log.c("MicroMsg.GYNet", "new notify");
        i.a(k1, k1, "", 38, abyte0);
        continue; /* Loop/switch isn't completed */
_L6:
        i.a(k1, k1, "", 74, null);
        continue; /* Loop/switch isn't completed */
_L3:
        if(abyte0.length > 0)
            i.a(k1, k1, "", 10, abyte0);
        continue; /* Loop/switch isn't completed */
_L7:
        LinkedList linkedlist = new LinkedList();
        com.tencent.mm.network.connpool.SocketEngine.Helper.a(linkedlist, abyte0);
        if(linkedlist.size() <= 0)
            Log.a("MicroMsg.GYNet", "empty target iplist while speed test");
        else
            n.a((InAddress[])linkedlist.toArray(new InAddress[k1]));
        continue; /* Loop/switch isn't completed */
_L4:
        try
        {
            int ai[] = g.h();
            InAddress inaddress = new InAddress(InetAddress.getByAddress(abyte0), ai[0], true);
            Log.b("MicroMsg.GYNet", (new StringBuilder()).append("redirect addr:").append(inaddress.toString()).toString());
            InAddress ainaddress[] = g.e();
            InAddress ainaddress1[] = new InAddress[1 + ainaddress.length];
            for(; k1 < ainaddress.length; k1++)
                ainaddress1[k1] = ainaddress[k1];

            ainaddress1[k1] = inaddress;
            g.a(ainaddress1);
        }
        catch(Exception exception) { }
        if(true) goto _L1; else goto _L8
_L8:
    }

    public final void a(String s1)
    {
        InAddrHost inaddrhost = e;
        int ai[] = new int[1];
        ai[0] = 80;
        inaddrhost.a(s1, ai, null);
    }

    public final void a(List list, List list1, int ai[], int ai1[], int i1, int j1)
    {
        LinkedList linkedlist;
        Iterator iterator;
        e.a(ai);
        g.a(ai1);
        e.a(i1);
        g.a(j1);
        linkedlist = new LinkedList();
        iterator = list.iterator();
_L6:
        MMBuiltInIP mmbuiltinip1;
        if(!iterator.hasNext())
            break MISSING_BLOCK_LABEL_135;
        mmbuiltinip1 = (MMBuiltInIP)iterator.next();
        int ai3[];
        int j2;
        int k2;
        ai3 = e.h();
        j2 = ai3.length;
        k2 = 0;
_L1:
        if(k2 >= j2)
            continue; /* Loop/switch isn't completed */
        int l2 = ai3[k2];
        linkedlist.add(new InAddress(InetUtil.a(mmbuiltinip1.c()), l2, true));
        k2++;
          goto _L1
        LinkedList linkedlist1;
        Iterator iterator1;
        j = (InAddress[])linkedlist.toArray(new InAddress[0]);
        linkedlist1 = new LinkedList();
        iterator1 = list1.iterator();
_L4:
        MMBuiltInIP mmbuiltinip;
        if(!iterator1.hasNext())
            break MISSING_BLOCK_LABEL_251;
        mmbuiltinip = (MMBuiltInIP)iterator1.next();
        int ai2[];
        int k1;
        int l1;
        ai2 = g.h();
        k1 = ai2.length;
        l1 = 0;
_L2:
        if(l1 >= k1)
            continue; /* Loop/switch isn't completed */
        int i2 = ai2[l1];
        linkedlist1.add(new InAddress(InetUtil.a(mmbuiltinip.c()), i2, true));
        l1++;
          goto _L2
        k = (InAddress[])linkedlist1.toArray(new InAddress[0]);
        Log.d("MicroMsg.GYNet", "updated builtin short ips");
        MMBuiltInIP.a(list);
        Log.d("MicroMsg.GYNet", "updated builtin long ips");
        MMBuiltInIP.a(list1);
        return;
        UnknownHostException unknownhostexception;
        unknownhostexception;
        if(true) goto _L4; else goto _L3
_L3:
        UnknownHostException unknownhostexception1;
        unknownhostexception1;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final void a(Map map, Queue queue)
    {
        if(map != null && queue != null)
            break MISSING_BLOCK_LABEL_19;
        Log.a("MicroMsg.GYNet", "onDisconnect, empty records or queue");
        break MISSING_BLOCK_LABEL_490;
        Log.c("MicroMsg.GYNet", (new StringBuilder()).append("onDisconnect, remain request count:").append(queue.size()).append("/").append(map.size()).toString());
        LinkedList linkedlist = new LinkedList();
        do
        {
            if(queue.size() <= 0)
                break;
            int i1 = ((com.tencent.mm.network.connpool.SocketEngine.Request)queue.poll()).d();
            IRecord irecord = (IRecord)map.get(Integer.valueOf(i1));
            if(irecord instanceof GYNetContext)
            {
                GYNetContext gynetcontext1 = (GYNetContext)irecord;
                Log.c("MicroMsg.GYNet", (new StringBuilder()).append("onDisconnect pending context t=").append(gynetcontext1.c.a()).append(" threadid=").append(gynetcontext1.h).toString());
                if(gynetcontext1.d)
                {
                    Log.c("MicroMsg.GYNet", "onDisconnect context invalid");
                } else
                {
                    Assert.assertNotNull(gynetcontext1.c);
                    Log.c("MicroMsg.GYNet", (new StringBuilder()).append("onDisconnect context ok").append(gynetcontext1.c.a()).toString());
                    gynetcontext1.f = -1;
                    gynetcontext1.g = -1 + gynetcontext1.g;
                    linkedlist.addLast(gynetcontext1);
                }
                map.remove(Integer.valueOf(i1));
            }
        } while(true);
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(entry.getValue() instanceof GYNetContext)
            {
                GYNetContext gynetcontext = (GYNetContext)entry.getValue();
                if(gynetcontext != null)
                {
                    Log.c("MicroMsg.GYNet", (new StringBuilder()).append("onDisconnect running context t=").append(gynetcontext.c.a()).append(" threadid=").append(gynetcontext.h).toString());
                    if(gynetcontext.d)
                    {
                        Log.c("MicroMsg.GYNet", "onDisconnect context invalid");
                    } else
                    {
                        Log.c("MicroMsg.GYNet", "onDisconnect context ok");
                        gynetcontext.f = -1;
                        linkedlist.addFirst(gynetcontext);
                    }
                }
            }
        } while(true);
        map.clear();
        for(; linkedlist.size() > 0; a((GYNetContext)linkedlist.poll()));
        if(a)
        {
            p = 30000;
            q.a(p);
        }
_L2:
        return;
        RemoteException remoteexception;
        remoteexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void a(boolean flag)
    {
        String s1;
        if(flag)
            s1 = "network activated";
        else
            s1 = "network deactivated";
        Log.c("MicroMsg.GYNet", s1);
        a = flag;
        h.a(flag);
        if(!flag)
            c(false);
    }

    public final int b()
    {
        return c;
    }

    public final void b(INetContext inetcontext)
    {
        Log.c("MicroMsg.GYNet", (new StringBuilder()).append("cancel id=").append(inetcontext.a()).append(" dt=").append(inetcontext.b()).append(" t=").append(inetcontext.c().a()).toString());
        int i1 = inetcontext.a();
        if(i1 >= 0 && !f.a(i1))
            h.a(i1);
    }

    public final void b(String s1)
    {
        InAddrHost inaddrhost = g;
        int ai[] = new int[2];
        ai[0] = 443;
        ai[1] = 80;
        inaddrhost.a(s1, ai, null);
    }

    public final void b(boolean flag)
    {
        if(!flag) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.GYNet", (new StringBuilder()).append("start looping at ").append(p).append("ms").toString());
        q.a(p);
        d();
_L4:
        return;
_L2:
        Log.e("MicroMsg.GYNet", "cancel looping");
        q.b();
        StringBuilder stringbuilder = (new StringBuilder()).append("checkStartPoller poller is null:");
        boolean flag1;
        if(r == null)
            flag1 = true;
        else
            flag1 = false;
        Log.d("MicroMsg.GYNet", stringbuilder.append(flag1).toString());
        if(r == null)
        {
            r = new MAlarmHandler(new PollerCallBack(), false);
            r.a(0x493e0L);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final String c()
    {
        return b;
    }

    public final void c(boolean flag)
    {
        e.a(flag);
        g.a(flag);
    }

    private static int s = 0;
    private static int t = 0;
    private static int u = 0;
    private static int v = 0;
    public boolean a;
    private String b;
    private int c;
    private final RecordMgr d = new RecordMgr();
    private final InAddrHost e;
    private final HttpMgr f;
    private final InAddrHost g;
    private final SocketMgr h;
    private final IOnGYNetNotify i;
    private InAddress j[];
    private InAddress k[];
    private boolean l;
    private int m;
    private SpeedTest n;
    private final FlowLimiter o = new FlowLimiter(0x36ee80L, 0x800000);
    private int p;
    private final MAlarmHandler q = new MAlarmHandler(new _cls1(), true);
    private MAlarmHandler r;


    private class _cls1
        implements com.tencent.mm.platformtools.MAlarmHandler.CallBack
    {

        public final boolean a()
        {
            GYNet.a(a);
            boolean flag;
            if(!a.a && NetService.a(MMPushCore.d()))
            {
                Log.c("MicroMsg.GYNet", "looping syncheck");
                flag = GYNet.b(a).a(0, 0, "", 39, null);
            } else
            {
                Log.c("MicroMsg.GYNet", "looping sync");
                flag = GYNet.b(a).a(0, 0, "", 38, null);
            }
            return flag;
        }

        private GYNet a;

        _cls1()
        {
            a = GYNet.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.network.connpool.InAddrHost.IAddrPlus
    {

        public final InAddress[] a()
        {
            GYNet gynet = a;
            gynet;
            JVM INSTR monitorenter ;
            InAddress ainaddress[] = GYNet.c(a);
            return ainaddress;
        }

        private GYNet a;

        _cls2()
        {
            a = GYNet.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.network.connpool.InAddrHost.IAddrPlus
    {

        public final InAddress[] a()
        {
            GYNet gynet = a;
            gynet;
            JVM INSTR monitorenter ;
            InAddress ainaddress[] = GYNet.d(a);
            return ainaddress;
        }

        private GYNet a;

        _cls3()
        {
            a = GYNet.this;
            super();
        }
    }


    private class PollerCallBack
        implements com.tencent.mm.platformtools.MAlarmHandler.CallBack
    {

        public final boolean a()
        {
            Log.c("MicroMsg.GYNet", "poller sync");
            GYNet.b(a).a(0, 0, "", 38, null);
            return false;
        }

        private GYNet a;

        PollerCallBack()
        {
            a = GYNet.this;
            super();
        }
    }

}

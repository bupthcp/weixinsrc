// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import android.os.Looper;
import com.tencent.mm.platformtools.Log;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network.connpool:
//            ConnEvent, InAddrHost, IRecordMgr, HttpEngine, 
//            IConnPoolMoniter, IOnHttpRecv, IRecord

public class HttpMgr extends ConnEvent
{

    public HttpMgr(IOnHttpRecv ionhttprecv, IRecordMgr irecordmgr, Looper looper)
    {
        super(looper);
        c = ionhttprecv;
        d = irecordmgr;
        b();
    }

    public final int a(InAddrHost inaddrhost, String s, byte abyte0[], IRecord irecord, int i, boolean flag)
    {
        boolean flag1;
        Integer integer;
        if(s != null && abyte0 != null && irecord != null)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        Log.c("MicroMsg.HttpMgr", (new StringBuilder()).append("request: ").append(inaddrhost.a()).append(s).toString());
        integer = Integer.valueOf(d.a(irecord, i));
        Log.d("MicroMsg.HttpMgr", (new StringBuilder()).append("--> build send thread: threadId=").append(integer).toString());
        if(integer.intValue() != -1)
        {
            Log.d("MicroMsg.HttpMgr", "get available socket engine");
            HttpEngine httpengine = new HttpEngine(inaddrhost, flag, this);
            String s1 = inaddrhost.a();
            String s2 = (new StringBuilder()).append("POST ").append(s).toString();
            String s3 = (new StringBuilder()).append(s2).append(" HTTP/1.1").toString();
            String s4 = (new StringBuilder()).append(s3).append("\r\n").toString();
            String s5 = (new StringBuilder()).append(s4).append("Host").toString();
            String s6 = (new StringBuilder()).append(s5).append(": ").toString();
            String s7 = (new StringBuilder()).append(s6).append(s1).toString();
            String s8 = (new StringBuilder()).append(s7).append("\r\n").toString();
            String s9 = (new StringBuilder()).append(s8).append("User-Agent").toString();
            String s10 = (new StringBuilder()).append(s9).append(": ").toString();
            String s11 = (new StringBuilder()).append(s10).append("Android QQMail HTTP Client").toString();
            String s12 = (new StringBuilder()).append(s11).append("\r\n").toString();
            String s13 = (new StringBuilder()).append(s12).append("Cache-Control").toString();
            String s14 = (new StringBuilder()).append(s13).append(": ").toString();
            String s15 = (new StringBuilder()).append(s14).append("no-cache").toString();
            String s16 = (new StringBuilder()).append(s15).append("\r\n").toString();
            String s17 = (new StringBuilder()).append(s16).append("Connection").toString();
            String s18 = (new StringBuilder()).append(s17).append(": ").toString();
            String s19 = (new StringBuilder()).append(s18).append("Keep-Alive").toString();
            String s20 = (new StringBuilder()).append(s19).append("\r\n").toString();
            String s21 = (new StringBuilder()).append(s20).append("Content-Type").toString();
            String s22 = (new StringBuilder()).append(s21).append(": ").toString();
            String s23 = (new StringBuilder()).append(s22).append("application/octet-stream").toString();
            String s24 = (new StringBuilder()).append(s23).append("\r\n").toString();
            String s25 = (new StringBuilder()).append(s24).append("accept").toString();
            String s26 = (new StringBuilder()).append(s25).append(": ").toString();
            String s27 = (new StringBuilder()).append(s26).append("*/*").toString();
            String s28 = (new StringBuilder()).append(s27).append("\r\n").toString();
            String s29 = (new StringBuilder()).append(s28).append("Content-Length: ").toString();
            String s30 = (new StringBuilder()).append(s29).append(" ").toString();
            String s31 = (new StringBuilder()).append(s30).append(abyte0.length).toString();
            String s32 = (new StringBuilder()).append(s31).append("\r\n").toString();
            httpengine.a((new StringBuilder()).append(s32).append("\r\n").toString(), abyte0, integer);
            b[integer.intValue()] = httpengine;
            Log.d("MicroMsg.HttpMgr", "threadPool.execute");
            httpengine.start();
        }
        Log.d("MicroMsg.HttpMgr", "<-- build send thread");
        return integer.intValue();
    }

    protected final void a(int i, Object obj, Object obj1)
    {
        if(obj instanceof String)
            Log.d("MicroMsg.HttpMgr", (new StringBuilder()).append("onStatusCallback=").append(i).append(", m.").append((String)obj).toString());
        else
            Log.d("MicroMsg.HttpMgr", (new StringBuilder()).append("onStatusCallback=").append(i).toString());
        i;
        JVM INSTR tableswitch 1 5: default 80
    //                   1 80
    //                   2 80
    //                   3 80
    //                   4 169
    //                   5 129;
           goto _L1 _L1 _L1 _L1 _L2 _L3
_L1:
        if(a != null)
            a.a(i, 0, "short", obj);
_L5:
        return;
_L3:
        if(a != null && (obj1 instanceof Integer))
            a.a(i, 0x40000000 | ((Integer)obj1).intValue(), "short", obj);
        continue; /* Loop/switch isn't completed */
_L2:
        if(a != null && (obj1 instanceof Integer))
            a.a(i, 0x40000000 | ((Integer)obj1).intValue(), "short", obj);
        if(true) goto _L5; else goto _L4
_L4:
    }

    protected final void a(String s, Integer integer, Object obj)
    {
        Log.b("MicroMsg.HttpMgr", (new StringBuilder()).append("onStatusFailCallback err = ").append(s).toString());
        int i = ((Integer)obj).intValue();
        b[i] = null;
        c.a(i, integer.intValue(), s, null, d.a(i));
    }

    protected final void a(byte abyte0[], Object obj)
    {
        int i = ((Integer)obj).intValue();
        HttpEngine httpengine = b[i];
        b[i] = null;
        IRecord irecord = d.a(i);
        if(irecord != null)
            irecord.a(httpengine.b());
        c.a(i, 0, "", abyte0, irecord);
    }

    public final boolean a(int i)
    {
        boolean flag;
        if(i >= 0 && i < b.length && b[i] != null)
        {
            Log.d("MicroMsg.HttpMgr", (new StringBuilder()).append("cancel thread id=").append(i).toString());
            b[i].a();
            d.a(i);
            b[i] = null;
            flag = true;
        } else
        {
            flag = false;
        }
        return flag;
    }

    public final void b()
    {
        b = new HttpEngine[10];
    }

    private HttpEngine b[];
    private final IOnHttpRecv c;
    private final IRecordMgr d;
}

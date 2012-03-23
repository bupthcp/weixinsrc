// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.test.Test;
import java.io.*;
import java.net.*;
import junit.framework.Assert;
import org.apache.http.util.ByteArrayBuffer;

// Referenced classes of package com.tencent.mm.network.connpool:
//            InAddrHost, HttpResponse, ConnEvent, InAddress

public class HttpEngine extends Thread
{

    public HttpEngine(InAddrHost inaddrhost, boolean flag, ConnEvent connevent)
    {
        super((new StringBuilder()).append("HttpSocketEngine-").append(inaddrhost.a()).append("-").append(flag).toString());
        e = null;
        f = null;
        g = "";
        k = false;
        m = "";
        p = null;
        q = "unknown";
        n = inaddrhost;
        i = flag;
        h = false;
        k = true;
        e = connevent;
    }

    private int a(byte abyte0[], byte abyte1[])
    {
        byte byte0 = 5;
        if(k) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.HttpEngine", "write failed in cancelled engine");
        byte0 = 2;
_L4:
        return byte0;
_L2:
        try
        {
            if(Test.e())
                throw new IOException("write failed");
            break MISSING_BLOCK_LABEL_69;
        }
        catch(IOException ioexception)
        {
            Log.a("MicroMsg.HttpEngine", (new StringBuilder()).append("Write Error:").append(ioexception.getMessage()).toString());
            continue; /* Loop/switch isn't completed */
        }
        catch(NullPointerException nullpointerexception)
        {
            Log.a("MicroMsg.HttpEngine", (new StringBuilder()).append("Write Error:").append(nullpointerexception.getMessage()).toString());
        }
        continue; /* Loop/switch isn't completed */
        Assert.assertNotNull("head null", abyte0);
        d.write(abyte0);
        if(abyte1 != null && abyte1.length > 0)
            d.write(abyte1);
        d.flush();
        Assert.assertNotNull("status callback null", e);
        e.b(byte0, Integer.valueOf(Util.c(abyte0.length + abyte1.length)), f);
        byte0 = 1;
        continue; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L3
_L3:
    }

    private long a(InAddress inaddress, int i1)
    {
        long l1 = 2000L;
        e.b(7, (new StringBuilder()).append(inaddress.toString()).append(", timeout=").append(i1).toString(), f);
        b = new Socket();
        q = inaddress.toString();
        if(Test.c())
            throw new ConnectException("Socket connect timeout");
          goto _L1
        ConnectException connectexception;
        connectexception;
        g = (new StringBuilder()).append("s.").append(connectexception.getMessage()).toString();
        l1 = -1L;
_L2:
        return l1;
_L1:
        b.connect(new InetSocketAddress(inaddress.a(), inaddress.b()), i1);
        c = new BufferedInputStream(b.getInputStream());
        d = new BufferedOutputStream(b.getOutputStream());
        l1 = 0L;
          goto _L2
        SocketException socketexception;
        socketexception;
        try
        {
            g = (new StringBuilder()).append("s.").append(socketexception.getMessage()).toString();
        }
        catch(Exception exception)
        {
            g = exception.getMessage();
        }
          goto _L2
        IOException ioexception;
        ioexception;
        g = ioexception.getMessage();
          goto _L2
        Exception exception1;
        exception1;
        g = exception1.getMessage();
          goto _L2
    }

    private static boolean a(String s, String s1, StringBuffer stringbuffer)
    {
        String s2;
        int i1;
        s2 = s.toLowerCase();
        i1 = s2.indexOf(s1);
        if(i1 < 0) goto _L2; else goto _L1
_L1:
        int j1;
        int k1;
        j1 = i1 + s1.length();
        k1 = s2.indexOf("\r\n", j1);
        if(k1 < 0) goto _L2; else goto _L3
_L3:
        boolean flag;
        stringbuffer.append(s2.substring(j1, k1).trim());
        flag = true;
_L5:
        return flag;
_L2:
        flag = false;
        if(true) goto _L5; else goto _L4
_L4:
    }

    private void c()
    {
        if(b != null && !b.isClosed())
            try
            {
                b.close();
            }
            catch(IOException ioexception2)
            {
                Log.c("MicroMsg.HttpEngine", (new StringBuilder()).append("cancel() exception:").append(ioexception2.getMessage()).toString());
            }
        if(c != null)
            try
            {
                c.close();
            }
            catch(IOException ioexception1)
            {
                Log.c("MicroMsg.HttpEngine", (new StringBuilder()).append("cancel() exception:").append(ioexception1.getMessage()).toString());
            }
        if(d != null)
            try
            {
                d.close();
            }
            catch(IOException ioexception)
            {
                Log.a("MicroMsg.HttpEngine", (new StringBuilder()).append("Reset Close Writer:").append(ioexception.getMessage()).toString());
            }
        e = null;
        i = false;
        h = false;
        l.a();
        n = null;
        k = true;
        f = null;
        g = "";
    }

    private int d()
    {
        if(k) goto _L2; else goto _L1
_L1:
        byte byte0 = 2;
_L7:
        return byte0;
_L2:
        if(!i) goto _L4; else goto _L3
_L3:
        InAddress ainaddress[] = new InAddress[1];
        ainaddress[0] = new InAddress(InetAddress.getByAddress(a), 80, false);
_L8:
        if(k) goto _L6; else goto _L5
_L5:
        byte0 = 2;
          goto _L7
        UnknownHostException unknownhostexception;
        unknownhostexception;
        byte0 = 4;
          goto _L7
_L4:
        if(n.d())
            continue; /* Loop/switch isn't completed */
        InAddress ainaddress1[] = InAddress.a(n.a(), n.h());
        n.a(ainaddress1);
        if(n.d())
            continue; /* Loop/switch isn't completed */
        byte0 = 4;
          goto _L7
        ainaddress = n.e();
          goto _L8
_L6:
        long l1;
        int i1;
        int j1;
        long l2;
        int k1;
        l1 = Util.e();
        i1 = ainaddress.length;
        j1 = 0;
        l2 = -1L;
        k1 = 0;
_L9:
        InAddress inaddress;
label0:
        {
            if(k1 >= i1)
                break MISSING_BLOCK_LABEL_501;
            inaddress = ainaddress[k1];
            if(k)
                break label0;
            byte0 = 2;
        }
          goto _L7
        long l3;
        if(j1 < 3)
            j1++;
        l2 = a(inaddress, j1 * n.c());
        if(l2 == 0L)
        {
            if(i)
            {
                e.b(1, inaddress.toString(), f);
                l3 = l2;
            } else
            if(inaddress.c())
            {
                InAddress inaddress1;
                if(n == null)
                    inaddress1 = null;
                else
                    inaddress1 = n.b();
                if(inaddress1 != null && !inaddress1.c())
                    p = (new StringBuilder()).append("").append(inaddress1).toString();
                e.b(3, inaddress.toString(), f);
                l3 = l2;
            } else
            {
                e.b(2, inaddress.toString(), f);
                l3 = l2;
            }
        } else
        {
label1:
            {
                Log.a("MicroMsg.HttpEngine", (new StringBuilder()).append("connect failed, m.").append(g).toString());
                n.f();
                if(l2 > 0L)
                    try
                    {
                        Log.a("MicroMsg.HttpEngine", (new StringBuilder()).append("connection retry span=").append(l2).toString());
                        sleep(l2);
                    }
                    catch(InterruptedException interruptedexception) { }
                if(Util.f(l1) <= 60000L)
                    break label1;
                Log.a("MicroMsg.HttpEngine", "connecting too long, consider failed now");
                l3 = l2;
            }
        }
_L10:
        if(!k)
            byte0 = 2;
        else
        if(l3 != 0L)
            byte0 = 3;
        else
            byte0 = 1;
          goto _L7
        k1++;
          goto _L9
        l3 = l2;
          goto _L10
    }

    private int e()
    {
        byte byte0 = 2;
        if(k) goto _L2; else goto _L1
_L1:
        return byte0;
_L2:
        if(j)
            e.a(n.a());
        byte abyte0[];
        int i1;
        b.setSoTimeout(45000);
        abyte0 = new byte[1024];
        i1 = c.read(abyte0, 0, 1024);
        if(i1 != -1)
            e.b(4, Integer.valueOf(Util.d(i1)), f);
_L9:
        String s;
        if(i1 == -1)
            break MISSING_BLOCK_LABEL_713;
        if(!k)
            continue; /* Loop/switch isn't completed */
        s = new String(abyte0, 0, i1);
        if(l.a) goto _L4; else goto _L3
_L3:
        int j1 = s.indexOf("\r\n\r\n");
        if(j1 < 0) goto _L6; else goto _L5
_L5:
        l.d = (new StringBuilder()).append(l.d).append(s.substring(0, j1 + "\r\n\r\n".length())).toString();
        l.e.append(abyte0, l.d.length(), i1 - l.d.length());
        l.a = true;
        int k1 = "http/1.x ".length();
        String s1 = l.d.substring(k1, k1 + 3);
        l.b = Integer.parseInt(s1);
        StringBuffer stringbuffer = new StringBuffer();
        if(a(l.d, "content-length:", stringbuffer))
            l.c = Integer.parseInt(stringbuffer.toString());
        Exception exception;
        SocketTimeoutException sockettimeoutexception;
        try
        {
            StringBuffer stringbuffer1 = new StringBuffer();
            if(a(l.d, "wxbt:", stringbuffer1))
                e.b(9, stringbuffer1.toString(), null);
        }
        catch(Exception exception1) { }
        Log.e("MicroMsg.HttpEngine", (new StringBuilder()).append("HttpSocketEngine head:\n").append(l.d).toString());
        e.a(l.b, l.d);
        if(l.b != 200)
        {
            byte0 = 7;
            continue; /* Loop/switch isn't completed */
        }
          goto _L7
_L6:
        l.d = (new StringBuilder()).append(l.d).append(s).toString();
_L7:
        if(!l.a || l.c == -1)
            break MISSING_BLOCK_LABEL_653;
        if(l.e.length() == l.c)
        {
            e.a(l.e.toByteArray());
            if(k)
                byte0 = 1;
            continue; /* Loop/switch isn't completed */
        }
        break; /* Loop/switch isn't completed */
_L4:
        l.e.append(abyte0, 0, i1);
        if(true) goto _L7; else goto _L8
        sockettimeoutexception;
        g = sockettimeoutexception.getMessage();
        byte0 = 6;
        continue; /* Loop/switch isn't completed */
_L8:
        if(l.e.length() > l.c)
        {
            g = (new StringBuilder()).append("http data corrupted, content len=").append(l.c).append(", body len=").append(l.e.length()).toString();
            byte0 = 8;
            continue; /* Loop/switch isn't completed */
        }
        e.b(l.e.toByteArray());
        i1 = c.read(abyte0, 0, 1024);
        if(i1 != -1)
            e.b(4, Integer.valueOf(Util.e(i1)), f);
          goto _L9
        exception;
        g = exception.getMessage();
        byte0 = 6;
        continue; /* Loop/switch isn't completed */
        Log.c("MicroMsg.HttpEngine", (new StringBuilder()).append("Read Error, Read -1, Content-length:").append(l.c).append(" , Body:").append(l.e).toString());
        byte0 = 6;
        if(true) goto _L1; else goto _L10
_L10:
    }

    public final void a()
    {
        k = false;
    }

    public final void a(String s, byte abyte0[], Object obj)
    {
        m = s;
        o = abyte0;
        f = obj;
        Assert.assertNotNull("request header null", m);
        Assert.assertNotNull("request data null", o);
    }

    public final String b()
    {
        return q;
    }

    protected void finalize()
    {
        c();
        super.finalize();
    }

    public void run()
    {
        e.b(6, null, f);
        if(j) goto _L2; else goto _L1
_L1:
        int l1 = d();
        if(l1 == 1) goto _L2; else goto _L3
_L3:
        if(l1 != 2)
            e.b(g, Integer.valueOf(l1), f);
        c();
_L5:
        return;
_L2:
        l.a();
        Log.e("MicroMsg.HttpEngine", (new StringBuilder()).append("request header: ").append(m).toString());
        Log.d("MicroMsg.HttpEngine", (new StringBuilder()).append("request data len: ").append(o.length).toString());
        int i1 = a(m.getBytes(), o);
        if(i1 != 1)
        {
            if(i1 != 2)
                e.b(g, Integer.valueOf(i1), f);
            c();
        } else
        {
            Log.c("MicroMsg.HttpEngine", "reading http response");
            int j1 = e();
            if(j1 != 1)
            {
                if(j1 != 2)
                {
                    n.f();
                    ConnEvent connevent = e;
                    String s = g;
                    int k1;
                    if(j1 == 7)
                        k1 = 10000 + l.b;
                    else
                        k1 = j1;
                    connevent.b(s, Integer.valueOf(k1), f);
                    Log.d("MicroMsg.HttpEngine", (new StringBuilder()).append("FailStatus:").append(j1).append(", ErrStr:").append(g).toString());
                }
                c();
            } else
            {
                if(Util.h(p).length() > 0)
                    e.b(8, p, null);
                e.a(l.d, l.e.toByteArray(), f);
                if(i || !h)
                    c();
            }
        }
        if(true) goto _L5; else goto _L4
_L4:
    }

    private static final byte a[];
    private Socket b;
    private BufferedInputStream c;
    private BufferedOutputStream d;
    private ConnEvent e;
    private Object f;
    private String g;
    private boolean h;
    private boolean i;
    private final boolean j = false;
    private boolean k;
    private final HttpResponse l = new HttpResponse();
    private String m;
    private InAddrHost n;
    private byte o[];
    private String p;
    private String q;

    static 
    {
        byte abyte0[] = new byte[4];
        abyte0[0] = 10;
        abyte0[1] = 0;
        abyte0[2] = 0;
        abyte0[3] = -84;
        a = abyte0;
    }
}

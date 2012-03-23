// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.test.Test;
import java.io.*;
import java.net.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network.connpool:
//            NoopValidator, InAddrHost, ConnEvent, QueryDnsValidator, 
//            OutOfBandException, InAddress, ISocketValidator, DummyEvent

public class SocketEngine extends Thread
{

    public SocketEngine(InAddrHost inaddrhost, ConnEvent connevent)
    {
        super((new StringBuilder()).append("MicroMsg.SocketEngine-").append(inaddrhost.a()).toString());
        h = false;
        i = false;
        j = false;
        m = "unknown";
        b = true;
        d = null;
        f = "";
        a = inaddrhost;
        e = connevent;
        g = new _cls1(connevent.a());
    }

    static int a(SocketEngine socketengine, byte abyte0[], Header header)
    {
        return socketengine.a(abyte0, header);
    }

    private int a(byte abyte0[], Header header)
    {
        if(b) goto _L2; else goto _L1
_L1:
        byte byte0;
        Log.b("MicroMsg.SocketEngine", "write failed in cancelled engine");
        byte0 = 2;
_L4:
        return byte0;
_L2:
        ConnEvent connevent;
        try
        {
            if(Test.e())
                throw new IOException("write failed");
            break MISSING_BLOCK_LABEL_80;
        }
        catch(IOException ioexception)
        {
            f = ioexception.getMessage();
            Log.a("MicroMsg.SocketEngine", (new StringBuilder()).append("write error:").append(f).toString());
            byte0 = 5;
            continue; /* Loop/switch isn't completed */
        }
        catch(NullPointerException nullpointerexception)
        {
            f = nullpointerexception.getMessage();
            Log.a("MicroMsg.SocketEngine", (new StringBuilder()).append("write error:").append(f).toString());
            byte0 = 5;
        }
        continue; /* Loop/switch isn't completed */
        d.getOutputStream().write(abyte0);
        d.getOutputStream().flush();
        Assert.assertNotNull("status callback null", e);
        connevent = e;
        int i1;
        if(h)
        {
            i1 = 0;
        } else
        {
            h = true;
            i1 = 328;
        }
        connevent.b(5, Integer.valueOf(i1 + Util.f(abyte0.length)), header);
        byte0 = 1;
        continue; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L3
_L3:
    }

    private long a(InAddress inaddress, int i1, ISocketValidator isocketvalidator)
    {
        long l1;
        l1 = 0L;
        Assert.assertNotNull(e);
        e.b(7, (new StringBuilder()).append(inaddress.toString()).append(", timeout=").append(i1).toString(), null);
        ConnectException connectexception;
        d = new Socket();
        d.setKeepAlive(true);
        if(Test.c())
            throw new SocketException("Socket connect timeout");
          goto _L1
_L3:
        return l1;
_L1:
        d.connect(new InetSocketAddress(inaddress.a(), inaddress.b()), i1);
        SocketException socketexception;
        if(isocketvalidator == null)
        {
            Log.b("MicroMsg.SocketEngine", "no connection validator set");
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            d.setSoTimeout(30000);
            if(!isocketvalidator.a(d))
            {
                f = (new StringBuilder()).append("s.validate failed, timeout=").append(i1).toString();
                d.close();
                l1 = -1L;
            } else
            {
                d.setSoTimeout(0);
            }
        }
        // Misplaced declaration of an exception variable
        catch(ConnectException connectexception)
        {
            f = (new StringBuilder()).append("s.").append(connectexception.getMessage()).append(", timeout=").append(i1).toString();
            l1 = -1L;
        }
        // Misplaced declaration of an exception variable
        catch(SocketException socketexception)
        {
            f = (new StringBuilder()).append("s.").append(socketexception.getMessage()).append(", timeout=").append(i1).toString();
            l1 = 2000L;
        }
        catch(OutOfBandException outofbandexception)
        {
            f = (new StringBuilder()).append("s.").append(outofbandexception.getMessage()).append(", timeout=").append(i1).toString();
        }
        catch(IOException ioexception)
        {
            f = ioexception.getMessage();
            l1 = 2000L;
        }
        if(true) goto _L3; else goto _L2
_L2:
    }

    static String a(SocketEngine socketengine)
    {
        return socketengine.f;
    }

    static ConnEvent b(SocketEngine socketengine)
    {
        return socketengine.e;
    }

    static boolean c(SocketEngine socketengine)
    {
        socketengine.b = false;
        return false;
    }

    private int e()
    {
        boolean flag = false;
_L25:
        if(flag) goto _L2; else goto _L1
_L1:
        j = false;
        if(b) goto _L4; else goto _L3
_L3:
        byte byte0 = 2;
          goto _L5
_L4:
        if(a.d()) goto _L7; else goto _L6
_L6:
        InAddress ainaddress1[] = InAddress.a(a.a(), a.h());
        a.a(ainaddress1);
        if(a.d()) goto _L9; else goto _L8
_L8:
        byte0 = 4;
          goto _L5
_L9:
        j = true;
_L7:
        InAddress ainaddress[] = a.e();
        if(b) goto _L11; else goto _L10
_L10:
        byte0 = 2;
          goto _L5
_L11:
        long l1;
        int i1;
        int j1;
        long l2;
        int k1;
        l1 = Util.e();
        i1 = 0;
        j1 = ainaddress.length;
        l2 = -1L;
        k1 = 0;
_L26:
        if(k1 >= j1) goto _L13; else goto _L12
_L12:
        InAddress inaddress = ainaddress[k1];
        if(b) goto _L15; else goto _L14
_L14:
        byte0 = 2;
          goto _L5
_L29:
        byte byte1;
        m = inaddress.toString();
        c = false;
        int i2 = i1 * a.c();
        ISocketValidator isocketvalidator;
        ConnEvent connevent;
        if(j)
            isocketvalidator = l;
        else
            isocketvalidator = k;
        l2 = a(inaddress, i2, isocketvalidator);
        if(l2 != 0L) goto _L17; else goto _L16
_L16:
        j = false;
        c = true;
        connevent = e;
        if(!inaddress.c())
            break MISSING_BLOCK_LABEL_469;
        byte1 = 3;
_L30:
        connevent.b(byte1, inaddress.toString(), null);
_L13:
        if(b) goto _L19; else goto _L18
_L18:
        byte0 = 2;
          goto _L5
_L17:
        Log.a("MicroMsg.SocketEngine", (new StringBuilder()).append("connect failed, m.").append(f).toString());
        a.f();
        if(l2 <= 0L) goto _L21; else goto _L20
_L20:
        boolean flag1 = a.d();
        if(!flag1) goto _L21; else goto _L22
_L22:
        Exception exception;
        QueryDnsValidator.QueryDnsException querydnsexception;
        try
        {
            Log.a("MicroMsg.SocketEngine", (new StringBuilder()).append("connection retry span=").append(l2).toString());
            sleep(l2);
        }
        catch(InterruptedException interruptedexception) { }
_L21:
        if(Util.f(l1) <= 60000L) goto _L24; else goto _L23
_L23:
        Log.a("MicroMsg.SocketEngine", "connecting too long, consider failed now");
          goto _L13
        querydnsexception;
        Log.a("MicroMsg.SocketEngine", "reset dns ip list from query dns exception");
        a.g();
        a.a(querydnsexception.a());
          goto _L25
_L24:
        k1++;
          goto _L26
_L19:
        if(l2 == 0L) goto _L28; else goto _L27
_L27:
        byte0 = 3;
          goto _L5
        exception;
        byte0 = 3;
          goto _L5
_L28:
        flag = true;
          goto _L25
_L2:
        byte0 = 1;
_L5:
        return byte0;
_L15:
        if(i1 < 3)
            i1++;
          goto _L29
        byte1 = 2;
          goto _L30
    }

    private int f()
    {
        int i1 = 1;
        Response response = new Response();
        try
        {
            if(response.a(new DataInputStream(d.getInputStream())))
            {
                e.b(4, Integer.valueOf(Util.g(response.a())), Response.a(response));
                e.a("", response.b(), response.c());
            } else
            {
                i = true;
            }
        }
        catch(IOException ioexception)
        {
            if(b)
            {
                Log.a("MicroMsg.SocketEngine", (new StringBuilder()).append("connection lost, read failed: ").append(ioexception.getMessage()).toString());
                i1 = 6;
            } else
            {
                Log.c("MicroMsg.SocketEngine", (new StringBuilder()).append("stop reading: ").append(ioexception.getMessage()).toString());
            }
        }
        catch(OutOfBandException outofbandexception)
        {
            e.b(9, (new StringBuilder()).append(outofbandexception.a).append(",").append(outofbandexception.b).toString(), Response.a(response));
        }
        return i1;
    }

    public final String a()
    {
        return m;
    }

    public final boolean a(Request request)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag;
        if(g == null)
        {
            flag = false;
        } else
        {
            Message message = new Message();
            message.what = 1;
            message.obj = request;
            flag = g.sendMessage(message);
        }
        return flag;
    }

    public final boolean b()
    {
        return b;
    }

    public final boolean c()
    {
        boolean flag;
        if(isAlive() && d != null && d.isConnected() && c && b)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void d()
    {
        Log.b("MicroMsg.SocketEngine", (new StringBuilder()).append("engine has been disconnect, threadId=").append(Thread.currentThread().getId()).toString());
        b = false;
        Exception exception;
        try
        {
            if(d != null)
            {
                d.shutdownInput();
                d.shutdownOutput();
                d.close();
            }
        }
        catch(IOException ioexception) { }
        catch(NullPointerException nullpointerexception) { }
        e = new DummyEvent(e.a());
_L2:
        return;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    protected void finalize()
    {
        if(d != null && !d.isClosed())
            try
            {
                d.close();
            }
            catch(IOException ioexception)
            {
                Log.c("MicroMsg.SocketEngine", (new StringBuilder()).append("cancel() exception:").append(ioexception.getMessage()).toString());
            }
        super.finalize();
    }

    public void run()
    {
        Log.c("MicroMsg.SocketEngine", "begin loopWait");
        Assert.assertNotNull(e);
        e.b(6, null, null);
        int i1 = e();
        if(i1 != 1)
        {
            e.b(f, Integer.valueOf(i1), null);
        } else
        {
            do
            {
                if(!b)
                    break;
                if(Test.d() || f() == 1)
                    continue;
                if(i)
                {
                    Log.a("MicroMsg.SocketEngine", "may be dns currupted");
                    a.f();
                }
                e.b(f, Integer.valueOf(6), null);
                break;
            } while(true);
            e.b(0, null, null);
        }
        if(d != null && !d.isClosed())
            try
            {
                d.close();
            }
            catch(IOException ioexception)
            {
                Log.c("MicroMsg.SocketEngine", (new StringBuilder()).append("cancel() exception:").append(ioexception.getMessage()).toString());
            }
        b = false;
        f = "";
        d = null;
        Log.c("MicroMsg.SocketEngine", (new StringBuilder()).append(Thread.currentThread()).append(" run exit, thread id=").append(Thread.currentThread().getId()).toString());
    }

    private static final ISocketValidator k = new NoopValidator();
    protected final InAddrHost a;
    private boolean b;
    private boolean c;
    private Socket d;
    private ConnEvent e;
    private String f;
    private Handler g;
    private boolean h;
    private boolean i;
    private boolean j;
    private final ISocketValidator l = new QueryDnsValidator(this);
    private String m;


    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            if(message.what == 1)
            {
                Request request = (Request)message.obj;
                byte abyte0[] = request.c();
                if(abyte0 == null || 1 != SocketEngine.a(a, abyte0, Request.a(request)))
                {
                    Log.d("MicroMsg.SocketEngine", "request send failed");
                    SocketEngine.b(a).b(SocketEngine.a(a), Integer.valueOf(5), request.b());
                    SocketEngine.c(a);
                }
                Response response = request.a();
                if(response != null)
                {
                    SocketEngine.b(a).b(4, Integer.valueOf(response.a()), Response.a(response));
                    SocketEngine.b(a).a("", response.b(), response.c());
                }
            }
        }

        private SocketEngine a;

        _cls1(Looper looper)
        {
            a = SocketEngine.this;
            super(looper);
        }
    }


    private class Response
    {
        private class Header
        {

            protected boolean a;
            protected int b;
            protected short c;
            protected short d;
            protected int e;
            protected int f;

            public Header(int i1, int j1, int k1)
            {
                c = 16;
                d = 1;
                b = j1 + c;
                e = k1;
                f = i1;
            }
        }

        private class Request
        {

            static Header a(Request request)
            {
                return request.a;
            }

            public final Response a()
            {
                Response response;
                if(a.a)
                    response = new Response(this);
                else
                    response = null;
                return response;
            }

            public final Header b()
            {
                return a;
            }

            public final byte[] c()
            {
                byte abyte1[];
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
                dataoutputstream.writeInt(a.b);
                dataoutputstream.writeShort(a.c);
                dataoutputstream.writeShort(a.d);
                dataoutputstream.writeInt(a.e);
                dataoutputstream.writeInt(a.f);
                dataoutputstream.write(b);
                dataoutputstream.close();
                abyte1 = bytearrayoutputstream.toByteArray();
                byte abyte0[] = abyte1;
_L2:
                return abyte0;
                IOException ioexception;
                ioexception;
                Log.a("MicroMsg.SocketEngine", "Request.serialize() failed");
                abyte0 = null;
                if(true) goto _L2; else goto _L1
_L1:
            }

            public final int d()
            {
                return a.f;
            }

            private final Header a;
            private final byte b[];

            public Request(int i1, int j1, byte abyte0[], boolean flag)
            {
                a = new Header(i1, abyte0.length, j1);
                b = abyte0;
                a.a = flag;
            }
        }


        static Header a(Response response)
        {
            return response.a;
        }

        public final int a()
        {
            return a.b;
        }

        public final boolean a(DataInputStream datainputstream)
        {
            boolean flag = true;
            a.b = datainputstream.readInt();
            a.c = datainputstream.readShort();
            a.d = datainputstream.readShort();
            if(a.c != 16 || a.d != flag)
            {
                Log.a("MicroMsg.SocketEngine", (new StringBuilder()).append("Response.unserialize invalid header, length=").append(a.c).append(", version=").append(a.d).toString());
                flag = false;
            } else
            {
                a.e = datainputstream.readInt();
                a.f = datainputstream.readInt();
                int i1 = a.b - a.c;
                Log.e("MicroMsg.SocketEngine", (new StringBuilder()).append("Response.unserialize packet response: len=").append(i1).append(", op=").append(a.e).append(", seq=").append(a.f).toString());
                b = new byte[i1];
                if(i1 > 0)
                    datainputstream.readFully(b);
                if(a.e == 72)
                    throw new OutOfBandException(TypeTransform.a(b), TypeTransform.a(b, 4));
            }
            return flag;
        }

        public final byte[] b()
        {
            return b;
        }

        public final Header c()
        {
            return a;
        }

        private final Header a;
        private byte b[];

        public Response()
        {
            a = new Header(0, 0, 0);
            b = new byte[0];
        }

        public Response(Request request)
        {
            a = new Header(Request.a(request).f, 0, Request.a(request).e);
            b = new byte[0];
        }
    }

}

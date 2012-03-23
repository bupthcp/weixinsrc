// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import com.tencent.mm.algorithm.TypeTransform;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protocal.ConstantsProtocal;
import java.io.*;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.HashMap;

// Referenced classes of package com.tencent.mm.network.connpool:
//            InAddress, ConnEvent, InAddrHost

class SpeedTestEngine extends Thread
{

    public SpeedTestEngine(InAddrHost inaddrhost, ConnEvent connevent)
    {
        super("speed-test-engine");
        e = false;
        b = inaddrhost;
        d = connevent;
    }

    private long a(InAddress inaddress)
    {
        long l;
        Log.d("MicroMsg.SpeedTestEngine", (new StringBuilder()).append("do test:").append(inaddress).toString());
        l = -1L;
        long l1;
        int i;
        int j;
        DataInputStream datainputstream;
        SocketEngine.Response response;
        l1 = Util.e();
        c = new Socket();
        c.setKeepAlive(true);
        c.setSoTimeout(30000);
        i = 0;
        c.connect(new InetSocketAddress(inaddress.a(), inaddress.b()), 30000);
        c.getOutputStream().write(a);
        c.getOutputStream().flush();
        j = 0 + a.length;
        datainputstream = new DataInputStream(c.getInputStream());
        response = new SocketEngine.Response();
        if(!response.a(datainputstream) || response.c().e != 0x3b9aca59) goto _L2; else goto _L1
_L1:
        long l2 = Util.f(l1);
        int k;
        int j1;
        k = 0 + response.a();
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        DataOutputStream dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        dataoutputstream.writeInt(ConstantsProtocal.b);
        dataoutputstream.writeInt(a.length + response.a());
        dataoutputstream.writeInt((int)l2);
        byte abyte0[] = (new SocketEngine.Request(0x7fffffff, 90, bytearrayoutputstream.toByteArray(), false)).c();
        c.getOutputStream().write(abyte0);
        c.getOutputStream().flush();
        dataoutputstream.close();
        j += abyte0.length;
        if(!response.a(datainputstream) || response.c().e != 0x3b9aca5a)
            break MISSING_BLOCK_LABEL_337;
        Log.c("MicroMsg.SpeedTestEngine", "report succeeded");
        j1 = response.a();
        k += j1;
        int i1 = k;
        l = l2;
        i = i1;
_L4:
        if(i <= 0)
            break MISSING_BLOCK_LABEL_370;
        d.b(4, Integer.valueOf(Util.d(i)), null);
        if(j > 0)
            d.b(5, Integer.valueOf(Util.c(j)), null);
        c.getInputStream().close();
        c.getOutputStream().close();
        c.close();
        break; /* Loop/switch isn't completed */
_L2:
        Log.a("MicroMsg.SpeedTestEngine", "speed test failed: invalid resp");
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        break; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        break; /* Loop/switch isn't completed */
        if(true) goto _L4; else goto _L3
        Exception exception1;
        exception1;
        l = l2;
          goto _L3
        IOException ioexception1;
        ioexception1;
        l = l2;
_L3:
        return l;
    }

    public final void a()
    {
        this;
        JVM INSTR monitorenter ;
        e = true;
        return;
    }

    protected void finalize()
    {
        if(c != null && !c.isClosed())
            try
            {
                c.close();
            }
            catch(IOException ioexception)
            {
                Log.c("MicroMsg.SpeedTestEngine", (new StringBuilder()).append("cancel() exception:").append(ioexception.getMessage()).toString());
            }
        super.finalize();
    }

    public void run()
    {
        InAddress ainaddress[] = b.e();
        if(ainaddress != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap;
        int i;
        int j;
        hashmap = new HashMap();
        i = ainaddress.length;
        j = 0;
_L6:
        if(j >= i) goto _L4; else goto _L3
_L3:
        InAddress inaddress = ainaddress[j];
        this;
        JVM INSTR monitorenter ;
        if(!e)
            break MISSING_BLOCK_LABEL_70;
        Log.b("MicroMsg.SpeedTestEngine", "user canceled");
        this;
        JVM INSTR monitorexit ;
_L4:
        d.a(null, null, null);
        continue; /* Loop/switch isn't completed */
        this;
        JVM INSTR monitorexit ;
        long l = a(inaddress);
        if(l >= 0L)
        {
            hashmap.put(inaddress, Long.valueOf(l));
            Log.d("MicroMsg.SpeedTestEngine", (new StringBuilder()).append("save test result: addr=").append(inaddress).append(", cost=").append(l).toString());
            d.b(2, inaddress, Long.valueOf(l));
        }
        j++;
        if(true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if(true) goto _L1; else goto _L7
_L7:
    }

    private static final byte a[];
    private InAddrHost b;
    private Socket c;
    private ConnEvent d;
    private boolean e;

    static 
    {
        byte abyte0[] = new byte[2048];
        byte abyte1[] = "a quick brown fox jumps over the lazy dog".getBytes();
        byte abyte2[] = TypeTransform.a(Util.e());
        System.arraycopy(abyte1, 0, abyte0, 0, abyte1.length);
        System.arraycopy(abyte2, 0, abyte0, abyte0.length - abyte2.length, abyte2.length);
        a = (new SocketEngine.Request(0x7fffffff, 89, abyte0, false)).c();
    }
}

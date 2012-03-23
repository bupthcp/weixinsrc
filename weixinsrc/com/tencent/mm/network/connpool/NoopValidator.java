// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import com.tencent.mm.platformtools.Log;
import java.io.*;
import java.net.Socket;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network.connpool:
//            ISocketValidator

class NoopValidator
    implements ISocketValidator
{

    NoopValidator()
    {
    }

    public final boolean a(Socket socket)
    {
        boolean flag = true;
        boolean flag1;
        IOException ioexception;
        SocketEngine.Response response;
        if(socket != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("socket invalid while validating via noop", flag1);
        socket.getOutputStream().write(a);
        socket.getOutputStream().flush();
        response = new SocketEngine.Response();
        if(!response.a(new DataInputStream(socket.getInputStream())) || response.c().f != 0x7fffffff || response.c().e != 0x3b9aca06) goto _L2; else goto _L1
_L2:
        Log.a("MicroMsg.NoopValidator", "connection validation failed, maybe dns corruption");
_L3:
        flag = false;
        break; /* Loop/switch isn't completed */
        ioexception;
        Log.a("MicroMsg.NoopValidator", (new StringBuilder()).append("connection lost while validating, read failed: ").append(ioexception.getMessage()).toString());
        if(true) goto _L3; else goto _L1
_L1:
        return flag;
    }

    private final byte a[] = (new SocketEngine.Request(0x7fffffff, 6, new byte[0], false)).c();
}

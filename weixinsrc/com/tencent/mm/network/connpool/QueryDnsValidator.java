// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import com.tencent.mm.platformtools.Log;
import java.io.*;
import java.net.Socket;
import java.util.LinkedList;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.network.connpool:
//            ISocketValidator, SocketEngine, InAddrHost, InAddress

class QueryDnsValidator
    implements ISocketValidator
{

    public QueryDnsValidator(SocketEngine socketengine)
    {
        b = socketengine;
    }

    public final boolean a(Socket socket)
    {
        int l;
        boolean flag = true;
        boolean flag1;
        IOException ioexception;
        SocketEngine.Response response;
        LinkedList linkedlist;
        InAddress ainaddress[];
        InAddress ainaddress1[];
        LinkedList linkedlist1;
        int i;
        int j;
        int k;
        InAddress inaddress;
        if(socket != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("socket invalid while validating via querydns", flag1);
        socket.getOutputStream().write(a);
        socket.getOutputStream().flush();
        response = new SocketEngine.Response();
        if(!response.a(new DataInputStream(socket.getInputStream())) || response.c().e != 0x3b9aca5b) goto _L2; else goto _L1
_L1:
        linkedlist = new LinkedList();
        SocketEngine.Helper.a(linkedlist, response.b());
        if(linkedlist.size() <= 0) goto _L4; else goto _L3
_L3:
        ainaddress = b.a.e();
        ainaddress1 = (InAddress[])linkedlist.toArray(new InAddress[0]);
        linkedlist1 = new LinkedList();
        i = ainaddress1.length;
        for(j = 0; j < i; j++)
            linkedlist1.add(ainaddress1[j]);

        k = ainaddress.length;
        l = 0;
_L7:
        if(l < k)
        {
            inaddress = ainaddress[l];
            if(inaddress.c())
                linkedlist1.add(inaddress);
        } else
        {
            throw new QueryDnsException((InAddress[])linkedlist1.toArray(new InAddress[0]));
        }
          goto _L5
_L6:
        flag = false;
_L4:
        return flag;
_L2:
        try
        {
            Log.a("MicroMsg.QueryDnsValidator", "connection validation failed, maybe dns corruption");
        }
        // Misplaced declaration of an exception variable
        catch(IOException ioexception)
        {
            Log.a("MicroMsg.QueryDnsValidator", (new StringBuilder()).append("connection lost while validating, read failed: ").append(ioexception.getMessage()).toString());
        }
        if(true) goto _L6; else goto _L5
_L5:
        l++;
          goto _L7
    }

    private final byte a[] = (new SocketEngine.Request(0x7fffffff, 91, new byte[0], false)).c();
    private SocketEngine b;

    private class QueryDnsException extends DiagnosticException
    {

        public final InAddress[] a()
        {
            return a;
        }

        private InAddress a[];

        public QueryDnsException(InAddress ainaddress[])
        {
            a = ainaddress;
        }
    }

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import com.tencent.mm.platformtools.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.LinkedList;

public class InAddress
{

    public InAddress(InetAddress inetaddress, int i, boolean flag)
    {
        a = inetaddress;
        b = i;
        c = flag;
    }

    public static InAddress[] a(String s, int ai[])
    {
        if(s != null && ai != null) goto _L2; else goto _L1
_L1:
        InAddress ainaddress[];
        Log.a("MicroMsg.InAddress", "Parse Host failed: null host or ports");
        ainaddress = null;
_L4:
        return ainaddress;
_L2:
        LinkedList linkedlist;
        InetAddress ainetaddress[];
        int i;
        linkedlist = new LinkedList();
        ainetaddress = InetAddress.getAllByName(s);
        i = ainetaddress.length;
        UnknownHostException unknownhostexception;
        for(int j = 0; j < i; j++)
        {
            InetAddress inetaddress = ainetaddress[j];
            int k = ai.length;
            for(int l = 0; l < k; l++)
                linkedlist.add(new InAddress(inetaddress, ai[l], false));

            break MISSING_BLOCK_LABEL_144;
        }

        ainaddress = (InAddress[])linkedlist.toArray(new InAddress[0]);
        continue; /* Loop/switch isn't completed */
        unknownhostexception;
        Log.a("MicroMsg.InAddress", (new StringBuilder()).append("Parse Host, Unknown Host Exception:").append(unknownhostexception.getMessage()).toString());
        ainaddress = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    final InetAddress a()
    {
        return a;
    }

    final int b()
    {
        return b;
    }

    final boolean c()
    {
        return c;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(a.getHostAddress()).append(":").append(b);
        String s;
        if(c)
            s = "(hc)";
        else
            s = "(dns)";
        return stringbuilder.append(s).toString();
    }

    private InetAddress a;
    private int b;
    private boolean c;
}

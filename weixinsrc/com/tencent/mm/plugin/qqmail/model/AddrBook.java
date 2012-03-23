// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            MailAddr

public class AddrBook extends BaseProtoBuf
{

    public AddrBook()
    {
        d = new LinkedList();
    }

    public static AddrBook a(byte abyte0[])
    {
        a a1;
        int i;
        AddrBook addrbook;
        a1 = new a(abyte0, a);
        i = a(a1);
        addrbook = new AddrBook();
_L2:
        boolean flag;
        if(i <= 0)
            break MISSING_BLOCK_LABEL_186;
        switch(i)
        {
        default:
            flag = false;
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_87;
        }
_L3:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L2; else goto _L1
_L1:
        addrbook.a(a1.b());
        flag = true;
          goto _L3
        LinkedList linkedlist = a1.a(2);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            MailAddr mailaddr = new MailAddr();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.plugin.qqmail.model.MailAddr.a(a2, mailaddr, a(a2)));
            addrbook.a(mailaddr);
        }

        flag = true;
          goto _L3
        return addrbook.e();
    }

    private AddrBook e()
    {
        if(!c)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  syncInfo:").append(c).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(1, b) + (0 + c.a.a.a.a(2, 8, d));
    }

    public final AddrBook a(MailAddr mailaddr)
    {
        if(!e)
            e = true;
        d.add(mailaddr);
        return this;
    }

    public final AddrBook a(String s)
    {
        b = s;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, 8, d);
    }

    public final byte[] b()
    {
        e();
        return super.b();
    }

    public final String c()
    {
        return b;
    }

    public final LinkedList d()
    {
        return d;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("syncInfo = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("addrs = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private String b;
    private boolean c;
    private LinkedList d;
    private boolean e;
}

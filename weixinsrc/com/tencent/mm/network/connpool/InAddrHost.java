// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.ArrayList;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.network.connpool:
//            InAddress

public class InAddrHost
{

    public InAddrHost(String s, int ai[], IAddrPlus iaddrplus)
    {
        a = 5000;
        g = Util.e();
        a(s, ai, iaddrplus);
    }

    public final String a()
    {
        return b;
    }

    public final void a(int i)
    {
        if(i < 2500)
            Log.b("MicroMsg.InAddrHost", "ignore dangerous timeout from server");
        else
            a = i;
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(String s, int ai[], IAddrPlus iaddrplus)
    {
        this;
        JVM INSTR monitorenter ;
        b = s;
        c = ai;
        e = iaddrplus;
        d = new LinkedList();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if(Util.f(g) > 0x5265c00L || flag)
        {
            g = Util.e();
            d.clear();
            Log.d("MicroMsg.InAddrHost", "dns expired, force resolving");
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(int ai[])
    {
        if(ai != null)
        {
            ArrayList arraylist = new ArrayList();
            int i = ai.length;
            for(int j = 0; j < i; j++)
            {
                int k1 = ai[j];
                if(k1 > 0)
                    arraylist.add(Integer.valueOf(k1));
            }

            int ai1[] = c;
            int k = ai1.length;
            for(int l = 0; l < k; l++)
            {
                int j1 = ai1[l];
                if(!arraylist.contains(Integer.valueOf(j1)) && j1 > 0)
                    arraylist.add(Integer.valueOf(j1));
            }

            c = new int[arraylist.size()];
            int i1 = 0;
            while(i1 < c.length) 
            {
                c[i1] = ((Integer)arraylist.get(i1)).intValue();
                i1++;
            }
        }
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(InAddress ainaddress[])
    {
        int i = 0;
        this;
        JVM INSTR monitorenter ;
        InAddress ainaddress1[];
        int j;
        d.clear();
        if(ainaddress != null)
        {
            int k = ainaddress.length;
            for(int l = i; l < k; l++)
            {
                InAddress inaddress1 = ainaddress[l];
                Log.d("MicroMsg.InAddrHost", (new StringBuilder()).append("add cached ip:").append(inaddress1).toString());
                d.add(inaddress1);
            }

        }
        if(e == null)
            break MISSING_BLOCK_LABEL_152;
        ainaddress1 = e.a();
        j = ainaddress1.length;
_L1:
        if(i >= j)
            break MISSING_BLOCK_LABEL_152;
        InAddress inaddress = ainaddress1[i];
        Log.d("MicroMsg.InAddrHost", (new StringBuilder()).append("add cached ip:").append(inaddress).toString());
        d.add(inaddress);
        i++;
          goto _L1
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method b is deprecated
     */

    public final InAddress b()
    {
        this;
        JVM INSTR monitorenter ;
        InAddress inaddress = f;
        this;
        JVM INSTR monitorexit ;
        return inaddress;
        Exception exception;
        exception;
        throw exception;
    }

    public final int c()
    {
        return a;
    }

    /**
     * @deprecated Method d is deprecated
     */

    public final boolean d()
    {
        this;
        JVM INSTR monitorenter ;
        int i = d.size();
        boolean flag;
        if(i > 0)
            flag = true;
        else
            flag = false;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method e is deprecated
     */

    public final InAddress[] e()
    {
        this;
        JVM INSTR monitorenter ;
        InAddress ainaddress[] = (InAddress[])d.toArray(new InAddress[0]);
        this;
        JVM INSTR monitorexit ;
        return ainaddress;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method f is deprecated
     */

    public final boolean f()
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        if(d.size() > 0)
            f = (InAddress)d.remove(0);
        i = d.size();
        boolean flag;
        if(i > 0)
            flag = true;
        else
            flag = false;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    /**
     * @deprecated Method g is deprecated
     */

    public final void g()
    {
        this;
        JVM INSTR monitorenter ;
        d.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public final int[] h()
    {
        return c;
    }

    private int a;
    private String b;
    private int c[];
    private LinkedList d;
    private IAddrPlus e;
    private InAddress f;
    private long g;

    private class IAddrPlus
    {

        public abstract InAddress[] a();
    }

}

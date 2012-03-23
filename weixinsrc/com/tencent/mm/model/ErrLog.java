// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Util;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.model:
//            FromExceptionThread

public final class ErrLog
{

    private ErrLog()
    {
    }

    public static ErrLog a(String s, Runnable runnable)
    {
        ErrLog errlog = new ErrLog();
        (new FromExceptionThread(s, runnable, errlog)).start();
        return errlog;
    }

    public final void a(String s, String s1)
    {
        LinkedList linkedlist = a;
        linkedlist;
        JVM INSTR monitorenter ;
        a.add(new Error(s.trim(), Util.c(), s1.trim()));
        return;
    }

    public final boolean a()
    {
        LinkedList linkedlist = a;
        linkedlist;
        JVM INSTR monitorenter ;
        boolean flag;
        if(!a.isEmpty())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int b()
    {
        LinkedList linkedlist = a;
        linkedlist;
        JVM INSTR monitorenter ;
        int i = a.size();
        return i;
    }

    public final Error c()
    {
        LinkedList linkedlist = a;
        linkedlist;
        JVM INSTR monitorenter ;
        Error error = (Error)a.poll();
        return error;
    }

    private final LinkedList a = new LinkedList();

    private class Error
    {

        public String toString()
        {
            return (new StringBuilder()).append(d).append(",").append(a).append(",time_").append(b).append(",error_").append(c).toString();
        }

        public String a;
        public long b;
        public String c;
        private String d;

        public Error(String s, long l, String s1)
        {
            d = (new StringBuilder()).append(ConstantsProtocal.a).append("_").append(ConstantsProtocal.b).toString();
            a = s;
            b = l;
            c = s1;
        }
    }

}

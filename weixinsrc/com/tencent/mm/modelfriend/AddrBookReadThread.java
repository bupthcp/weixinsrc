// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.content.Context;
import android.os.Handler;
import b.a.o;
import com.tencent.mm.algorithm.CnToSpell;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.platformtools.Log;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelfriend:
//            AddrUpload

class AddrBookReadThread extends Thread
{

    public AddrBookReadThread(Context context, CallBack callback)
    {
        super("addrbook-reader");
        b = callback;
        c = context;
    }

    private static List a(int i, List list)
    {
        Object obj;
        if(list == null)
        {
            Log.a("MicroMsg.AddrBookReadThread", "sync address book failed, null info list");
            obj = new LinkedList();
        } else
        {
            CnToSpell cntospell = new CnToSpell();
            ArrayList arraylist = new ArrayList();
            Iterator iterator = list.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                String as[] = (String[])iterator.next();
                if(as != null)
                {
                    String s = as[0];
                    String s1 = as[1];
                    String s2 = as[2];
                    if(s2 != null && !s2.equals(""))
                    {
                        String s3 = "";
                        if(i == 1)
                            s3 = MD5.a(s2.getBytes());
                        if(i == 0)
                            s3 = MD5.a(o.b(s2).getBytes());
                        AddrUpload addrupload = new AddrUpload();
                        addrupload.d(s1);
                        addrupload.e(cntospell.b(s1));
                        addrupload.f(cntospell.a(s1));
                        addrupload.c(s);
                        addrupload.b(s3);
                        if(i == 1)
                            addrupload.l(s2);
                        if(i == 0)
                            addrupload.k(s2);
                        addrupload.b(i);
                        addrupload.a(14454);
                        arraylist.add(addrupload);
                    }
                }
            } while(true);
            obj = arraylist;
        }
        return ((List) (obj));
    }

    static List a(AddrBookReadThread addrbookreadthread)
    {
        return addrbookreadthread.g;
    }

    static List b(AddrBookReadThread addrbookreadthread)
    {
        return addrbookreadthread.f;
    }

    static CallBack c(AddrBookReadThread addrbookreadthread)
    {
        return addrbookreadthread.b;
    }

    public void run()
    {
        byte abyte0[] = a;
        abyte0;
        JVM INSTR monitorenter ;
        Log.d("MicroMsg.AddrBookReadThread", "reading email info");
        d = o.e(c);
        if(d != null)
            Log.e("MicroMsg.AddrBookReadThread", (new StringBuilder()).append("sync address book email size: ").append(d.size()).toString());
        g = a(1, d);
        Log.d("MicroMsg.AddrBookReadThread", "reading mobile info");
        e = o.d(c);
        if(e != null)
            Log.e("MicroMsg.AddrBookReadThread", (new StringBuilder()).append("sync address book mobile size: ").append(e.size()).toString());
        f = a(0, e);
        Log.d("MicroMsg.AddrBookReadThread", "reading done");
        h.sendEmptyMessage(0);
        return;
    }

    private static byte a[] = new byte[0];
    private final CallBack b;
    private final Context c;
    private List d;
    private List e;
    private List f;
    private List g;
    private final Handler h = new _cls1();


    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            AddrBookReadThread.c(a).a(AddrBookReadThread.a(a), AddrBookReadThread.b(a));
        }

        private AddrBookReadThread a;

        _cls1()
        {
            a = AddrBookReadThread.this;
            super();
        }

        private class CallBack
        {

            public abstract void a(List list, List list1);
        }

    }

}

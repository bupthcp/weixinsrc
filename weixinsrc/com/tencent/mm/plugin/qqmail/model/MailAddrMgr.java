// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.io.IOException;
import java.util.*;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            FileCache, AddrBook, MailAddr, MailAppService

public class MailAddrMgr
{

    MailAddrMgr(String s)
    {
        a = 0L;
        e = 0;
        f = 1;
        g = 2;
        h = 3;
        i = e;
        b = new FileCache(s, 1);
        byte abyte0[] = FileCache.a((new StringBuilder()).append(b.a()).append("address").toString());
        if(abyte0 != null)
        {
            try
            {
                c = AddrBook.a(abyte0);
            }
            catch(IOException ioexception)
            {
                c = new AddrBook();
                c.a("");
            }
        } else
        {
            c = new AddrBook();
            c.a("");
        }
        d = new ArrayList();
    }

    static int a(MailAddrMgr mailaddrmgr)
    {
        return mailaddrmgr.f;
    }

    static int a(MailAddrMgr mailaddrmgr, int j)
    {
        mailaddrmgr.i = j;
        return j;
    }

    static long a(MailAddrMgr mailaddrmgr, long l)
    {
        mailaddrmgr.a = l;
        return l;
    }

    static void a(MailAddrMgr mailaddrmgr, Map map)
    {
        boolean flag;
        int k;
        String s3;
        String s4;
        String s5;
        int l;
        int j = Integer.parseInt((String)map.get(".Response.result.Count"));
        if(j <= 0)
            break MISSING_BLOCK_LABEL_484;
        StringBuilder stringbuilder;
        String s1;
        String s2;
        if(mailaddrmgr.c.d().size() == 0)
            flag = true;
        else
            flag = false;
        k = 0;
_L7:
        if(k >= j) goto _L2; else goto _L1
_L1:
        stringbuilder = (new StringBuilder()).append(".Response.result.List.item");
        String s;
        if(k > 0)
            s = (new StringBuilder()).append("").append(k).toString();
        else
            s = "";
        s1 = stringbuilder.append(s).append(".").toString();
        s2 = (String)map.get((new StringBuilder()).append(s1).append("Del").toString());
        s3 = (String)map.get((new StringBuilder()).append(s1).append("Freq").toString());
        s4 = (String)map.get((new StringBuilder()).append(s1).append("Name").toString());
        s5 = (String)map.get((new StringBuilder()).append(s1).append("Addr").toString());
        if(s5 == null || s5.length() == 0) goto _L4; else goto _L3
_L3:
        if(s4 == null || s4.length() == 0)
            s4 = s5;
        l = s5.hashCode();
        if(!s2.equals("0")) goto _L6; else goto _L5
_L5:
        LinkedList linkedlist1 = mailaddrmgr.c.d();
        int j1;
        for(j1 = 0; !flag && j1 < linkedlist1.size() && ((MailAddr)linkedlist1.get(j1)).c() != l; j1++);
        if(j1 >= linkedlist1.size() || flag)
            mailaddrmgr.c.a((new MailAddr()).a(l).a(s4).b(s5).b(Integer.parseInt(s3)));
_L4:
        k++;
          goto _L7
_L6:
        LinkedList linkedlist;
        int i1;
        linkedlist = mailaddrmgr.c.d();
        i1 = 0;
_L8:
        if(i1 < linkedlist.size())
        {
label0:
            {
                if(((MailAddr)linkedlist.get(i1)).c() != l)
                    break label0;
                linkedlist.remove(i1);
            }
        }
          goto _L4
        i1++;
          goto _L8
_L2:
        mailaddrmgr.c.a((String)map.get(".Response.result.SyncInfo"));
        mailaddrmgr.b();
          goto _L4
    }

    public static MailAddr b(String s)
    {
        MailAddr mailaddr = null;
        if(s != null) goto _L2; else goto _L1
_L1:
        return mailaddr;
_L2:
        String s1 = s.trim();
        int j = s1.trim().lastIndexOf(" ");
        if(j != -1)
        {
            mailaddr = new MailAddr();
            mailaddr.a(s1.substring(0, j));
            mailaddr.b(s1.substring(j + 1));
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    static List b(MailAddrMgr mailaddrmgr)
    {
        return mailaddrmgr.d;
    }

    private void b()
    {
        FileCache.a((new StringBuilder()).append(b.a()).append("address").toString(), c.b());
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static int c(MailAddrMgr mailaddrmgr)
    {
        return mailaddrmgr.h;
    }

    public final List a(String s)
    {
        Object obj = c.d();
        if(i > f) goto _L2; else goto _L1
_L1:
        a();
_L4:
        return ((List) (obj));
_L2:
        if(s != null && s.length() != 0)
        {
            ArrayList arraylist = new ArrayList();
            Iterator iterator = ((List) (obj)).iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                MailAddr mailaddr = (MailAddr)iterator.next();
                if(mailaddr != null && mailaddr.d().contains(s))
                    arraylist.add(mailaddr);
            } while(true);
            obj = arraylist;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a()
    {
        if(i != g)
            if(Util.d() - a <= 0x927c0L)
            {
                Iterator iterator = d.iterator();
                while(iterator.hasNext()) 
                    ((CallBack)iterator.next()).a();
            } else
            {
                i = g;
                HashMap hashmap = new HashMap();
                String s;
                MailAppService mailappservice;
                _cls1 _lcls1;
                if(c.c() == null)
                    s = "";
                else
                    s = c.c();
                hashmap.put("syncinfo", s);
                Log.d("MicroMsg.Plugin.MailAddrMgr", "sync~~~");
                mailappservice = MMCore.n();
                _lcls1 = new _cls1();
                mailappservice.b("/cgi-bin/syncaddrlist", hashmap, new MailAppService.HttpOptions(), _lcls1);
            }
    }

    public final void a(CallBack callback)
    {
        Iterator iterator = d.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if((CallBack)iterator.next() != callback) goto _L4; else goto _L3
_L3:
        return;
_L2:
        d.add(callback);
        if(true) goto _L3; else goto _L5
_L5:
    }

    public final void a(List list)
    {
        if(list != null && list.size() != 0)
        {
            LinkedList linkedlist = c.d();
            Iterator iterator = list.iterator();
label0:
            do
            {
                if(!iterator.hasNext())
                    break;
                MailAddr mailaddr = (MailAddr)iterator.next();
                Iterator iterator1 = linkedlist.iterator();
                MailAddr mailaddr1;
                do
                {
                    if(!iterator1.hasNext())
                        continue label0;
                    mailaddr1 = (MailAddr)iterator1.next();
                } while(!mailaddr1.e().equalsIgnoreCase(mailaddr.e()));
                linkedlist.remove(mailaddr1);
                linkedlist.add(0, mailaddr1);
            } while(true);
            b();
        }
    }

    public final void b(CallBack callback)
    {
        Iterator iterator = d.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            CallBack callback1 = (CallBack)iterator.next();
            if(callback1 != callback)
                continue;
            d.remove(callback1);
            break;
        } while(true);
    }

    protected void finalize()
    {
        d.clear();
    }

    private long a;
    private FileCache b;
    private AddrBook c;
    private List d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;

    private class CallBack
    {

        public abstract void a();

        public CallBack()
        {
        }
    }


    private class _cls1 extends MailAppService.CallBack
    {

        public final void a(int j, String s)
        {
            for(Iterator iterator = MailAddrMgr.b(a).iterator(); iterator.hasNext(); ((CallBack)iterator.next()).a());
        }

        public final void a(String s, Map map)
        {
            MailAddrMgr.a(a, map);
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    MailAddrMgr.a(a.a, MailAddrMgr.a(a.a));
                    a.a.a();
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            if(((String)map.get(".Response.result.ContinueFlag")).equals("1"))
            {
                (new Handler()).postDelayed(new _cls1(), 0L);
            } else
            {
                MailAddrMgr.a(a, Util.d());
                Iterator iterator = MailAddrMgr.b(a).iterator();
                while(iterator.hasNext()) 
                    ((CallBack)iterator.next()).a();
            }
        }

        public final void b()
        {
            MailAddrMgr.a(a, MailAddrMgr.c(a));
        }

        final MailAddrMgr a;

        _cls1()
        {
            a = MailAddrMgr.this;
            super();
        }
    }

}

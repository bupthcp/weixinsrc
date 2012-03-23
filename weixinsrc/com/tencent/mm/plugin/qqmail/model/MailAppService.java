// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import android.content.Context;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import java.util.*;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            URLConnectionUtil, MailAddrMgr, DraftBoxMgr, FileCache

public class MailAppService
{

    public MailAppService(int i, String s)
    {
        a = new HashMap();
        e = new HashMap();
        f = new HashMap();
        URLConnectionUtil.a("qqmail.weixin.qq.com");
        URLConnectionUtil.b((new StringBuilder()).append("weixin/").append(s).append("/0x").append(Integer.toHexString(i)).toString());
        a();
    }

    static int a(HttpStruct httpstruct)
    {
        int i;
        int j;
        i = -1002;
        j = 0;
        if(httpstruct.c.c) goto _L2; else goto _L1
_L1:
        httpstruct.g.a(httpstruct.e.c, null);
        i = j;
_L16:
        return i;
_L2:
        HttpUtil.Response response = httpstruct.e;
        if(httpstruct.f != null) goto _L4; else goto _L3
_L3:
        httpstruct.g.a(i, "format err!");
          goto _L5
_L4:
        int k = Integer.parseInt((String)httpstruct.f.get(".Response.error.code"));
        if(k != 0) goto _L7; else goto _L6
_L6:
        httpstruct.g.a(response.c, httpstruct.f);
        i = j;
          goto _L5
_L7:
        CallBack callback;
        String s;
        callback = httpstruct.g;
        s = (String)httpstruct.f.get(".Response.error.message");
        k;
        JVM INSTR lookupswitch 9: default 212
    //                   -105: 255
    //                   -104: 249
    //                   -103: 267
    //                   -102: 261
    //                   -7: 243
    //                   -6: 255
    //                   -4: 237
    //                   -3: 237
    //                   -1: 231;
           goto _L8 _L9 _L10 _L11 _L12 _L13 _L9 _L14 _L14 _L15
_L8:
        if(j != 0)
            s = MMCore.c().getString(j);
        callback.a(k, s);
        i = k;
_L5:
        if(true) goto _L16; else goto _L15
_L15:
        j = 0x7f0a0467;
          goto _L8
_L14:
        j = 0x7f0a0468;
          goto _L8
_L13:
        j = 0x7f0a046c;
          goto _L8
_L10:
        j = 0x7f0a046e;
          goto _L8
_L9:
        j = 0x7f0a046b;
          goto _L8
_L12:
        j = 0x7f0a0469;
          goto _L8
_L11:
        j = 0x7f0a046a;
          goto _L8
    }

    private long a(String s, int i, Map map, HttpUtil.UploadFile uploadfile, HttpOptions httpoptions, CallBack callback)
    {
        if(map == null)
            map = new HashMap();
        map.put("appname", "qqmail_weixin");
        map.put("f", "xml");
        map.put("charset", "utf-8");
        map.put("clientip", Util.j());
        HttpStruct httpstruct = new HttpStruct(s, new HttpUtil.Request(i, map, d(), uploadfile), callback);
        httpstruct.c = httpoptions;
        HttpAsyncTask httpasynctask = new HttpAsyncTask();
        e.put(Long.valueOf(httpstruct.a), httpstruct);
        f.put(Long.valueOf(httpstruct.a), httpasynctask);
        httpasynctask.a(httpstruct);
        return httpstruct.a;
    }

    static FileCache a(MailAppService mailappservice)
    {
        return mailappservice.d;
    }

    static void a(MailAppService mailappservice, Map map)
    {
        if(mailappservice.a != null && map != null)
        {
            Iterator iterator = map.keySet().iterator();
            while(iterator.hasNext()) 
            {
                String s = (String)iterator.next();
                mailappservice.a.put(s, map.get(s));
            }
        }
    }

    static Map b(MailAppService mailappservice)
    {
        return mailappservice.e;
    }

    static Map c(MailAppService mailappservice)
    {
        return mailappservice.f;
    }

    public final long a(String s, String s1, String s2, HttpOptions httpoptions, CallBack callback)
    {
        return a(s, 1, null, new HttpUtil.UploadFile(s1, s2), httpoptions, callback);
    }

    public final long a(String s, Map map, HttpOptions httpoptions, CallBack callback)
    {
        return a(s, 1, map, null, httpoptions, callback);
    }

    public final void a()
    {
        for(Iterator iterator = f.values().iterator(); iterator.hasNext(); ((HttpAsyncTask)iterator.next()).cancel(true));
        f.clear();
        e.clear();
        a.clear();
        String s = MMCore.f().O();
        b = new MailAddrMgr((new StringBuilder()).append(s).append("addr/").toString());
        c = new DraftBoxMgr((new StringBuilder()).append(s).append("draft/").toString());
        d = new FileCache((new StringBuilder()).append(s).append("http/").toString(), 0);
    }

    public final void a(long l)
    {
        HttpAsyncTask httpasynctask = (HttpAsyncTask)f.get(Long.valueOf(l));
        if(httpasynctask != null)
            httpasynctask.cancel(true);
        f.remove(Long.valueOf(l));
        e.remove(Long.valueOf(l));
    }

    public final long b(String s, Map map, HttpOptions httpoptions, CallBack callback)
    {
        return a(s, 0, map, null, httpoptions, callback);
    }

    public final MailAddrMgr b()
    {
        return b;
    }

    public final DraftBoxMgr c()
    {
        return c;
    }

    public final Map d()
    {
        String s = (String)MMCore.f().f().a(0xa4775e22);
        a.put("skey", s);
        int i = ((Integer)MMCore.f().f().a(9)).intValue();
        a.put("uin", (new StringBuilder()).append("o").append(new UIN(i)).toString());
        return a;
    }

    private Map a;
    private MailAddrMgr b;
    private DraftBoxMgr c;
    private FileCache d;
    private Map e;
    private Map f;

    private class HttpStruct
    {

        long a;
        String b;
        HttpOptions c;
        HttpUtil.Request d;
        HttpUtil.Response e;
        Map f;
        CallBack g;
        private MailAppService h;

        public HttpStruct(String s, HttpUtil.Request request, CallBack callback)
        {
            h = MailAppService.this;
            super();
            a = System.currentTimeMillis();
            b = s;
            d = request;
            g = callback;
        }
    }


    private class HttpOptions
    {

        public final void a()
        {
            a = true;
        }

        public final void b()
        {
            b = false;
        }

        public final void c()
        {
            c = false;
        }

        boolean a;
        boolean b;
        boolean c;

        public HttpOptions()
        {
            a = false;
            b = true;
            c = true;
        }
    }


    private class CallBack
    {

        public abstract void a(int i, String s);

        public abstract void a(String s, Map map);

        public boolean a()
        {
            return true;
        }

        public void b()
        {
        }

        public CallBack()
        {
        }
    }


    private class HttpAsyncTask extends AsyncTask
    {

        public final void a(HttpStruct httpstruct)
        {
            httpstruct.g.a();
            HttpStruct ahttpstruct[] = new HttpStruct[1];
            ahttpstruct[0] = httpstruct;
            super.execute(ahttpstruct);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            HttpStruct httpstruct = ((HttpStruct[])aobj)[0];
            if(httpstruct.c.a || !httpstruct.c.b) goto _L2; else goto _L1
_L1:
            String s = MailAppService.a(b).a(httpstruct.b, httpstruct.d.b);
            if(s == null) goto _L2; else goto _L3
_L3:
            httpstruct.e = new HttpUtil.Response(304, null, s);
_L5:
            if(httpstruct.c.c && (httpstruct.e.a == 304 || httpstruct.e.a == 200))
            {
                Log.d("MailAppService", httpstruct.e.c);
                httpstruct.f = Util.b(httpstruct.e.c, "Response");
            }
            return httpstruct;
_L2:
            if(httpstruct.d.d != null)
                a = new HttpClientUtil();
            else
                a = new URLConnectionUtil();
            httpstruct.e = a.a("https://", httpstruct.b, httpstruct.d);
            if(true) goto _L5; else goto _L4
_L4:
        }

        protected void onCancelled()
        {
            if(a != null)
                a.a();
        }

        protected volatile void onPostExecute(Object obj)
        {
            HttpStruct httpstruct = (HttpStruct)obj;
            if(httpstruct == null) goto _L2; else goto _L1
_L1:
            if(httpstruct.e.a != 304) goto _L4; else goto _L3
_L3:
            MailAppService.a(httpstruct);
_L6:
            httpstruct.g.b();
            MailAppService.b(b).remove(Long.valueOf(httpstruct.a));
            MailAppService.c(b).remove(Long.valueOf(httpstruct.a));
_L2:
            return;
_L4:
            if(httpstruct.e.a == 200)
            {
                MailAppService.a(b, httpstruct.e.b);
                if(MailAppService.a(httpstruct) == 0 && httpstruct.c.b)
                    MailAppService.a(b).a(httpstruct.b, httpstruct.d.b, httpstruct.e.c.getBytes());
            } else
            {
                httpstruct.g.a(httpstruct.e.a, "request error!");
            }
            if(true) goto _L6; else goto _L5
_L5:
        }

        private HttpUtil a;
        private MailAppService b;

        HttpAsyncTask()
        {
            this((byte)0);
        }

        private HttpAsyncTask(byte byte0)
        {
            b = MailAppService.this;
            super();
        }
    }

}

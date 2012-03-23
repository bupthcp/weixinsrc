// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.platformtools.Log;
import java.net.HttpURLConnection;
import java.net.URL;

public class NetworkHttpCheck
{

    public NetworkHttpCheck()
    {
        b = null;
        c = null;
    }

    static IOnHttpConnectFinish a(NetworkHttpCheck networkhttpcheck)
    {
        return networkhttpcheck.b;
    }

    static IOnHttpConnectFinish b(NetworkHttpCheck networkhttpcheck)
    {
        networkhttpcheck.b = null;
        return null;
    }

    static HttpURLConnection c(NetworkHttpCheck networkhttpcheck)
    {
        return networkhttpcheck.a;
    }

    public final int a(String s, IOnHttpConnectFinish ionhttpconnectfinish)
    {
        a = (HttpURLConnection)(new URL(s)).openConnection();
        int i;
        b = ionhttpconnectfinish;
        a.setUseCaches(false);
        a.setConnectTimeout(2000);
        a.setReadTimeout(5000);
        c = new ThreadGet();
        c.start();
        i = 0;
_L2:
        return i;
        Exception exception;
        exception;
        Log.a("MicroMsg.NetworkHttpCheck", (new StringBuilder()).append("open [").append(s).append("] failed:").append(exception.getMessage()).toString());
        i = 0 - CodeInfo.b();
        if(true) goto _L2; else goto _L1
_L1:
    }

    private HttpURLConnection a;
    private IOnHttpConnectFinish b;
    private ThreadGet c;

    private class ThreadGet extends Thread
    {

        static int a(ThreadGet threadget)
        {
            return threadget.b;
        }

        public void run()
        {
            b = 0 - CodeInfo.b();
            c.sendEmptyMessageDelayed(0, NetworkHttpCheck.c(a).getConnectTimeout() + NetworkHttpCheck.c(a).getReadTimeout());
            int i;
            NetworkHttpCheck.c(a).connect();
            i = NetworkHttpCheck.c(a).getResponseCode() / 100;
            if(i == 2 || i == 3) goto _L2; else goto _L1
_L1:
            b = 0 - (10000 + NetworkHttpCheck.c(a).getResponseCode());
_L4:
            NetworkHttpCheck.c(a).disconnect();
            c.sendEmptyMessage(0);
            return;
_L2:
            try
            {
                b = 0;
            }
            catch(Exception exception)
            {
                Log.a("MicroMsg.NetworkHttpCheck", (new StringBuilder()).append("ThreadGet [").append(NetworkHttpCheck.c(a).getURL().toString()).append("] Failed :").append(exception.getMessage()).toString());
                b = 0 - CodeInfo.b();
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        final NetworkHttpCheck a;
        private int b;
        private Handler c;

        public ThreadGet()
        {
            a = NetworkHttpCheck.this;
            super();
            b = 0;
            class _cls1 extends Handler
            {

                public void handleMessage(Message message)
                {
                    if(NetworkHttpCheck.a(b.a) != null)
                    {
                        NetworkHttpCheck.a(b.a).a(ThreadGet.a(b));
                        NetworkHttpCheck.b(b.a);
                    }
                }

                private NetworkHttpCheck a;
                private ThreadGet b;

                _cls1()
                {
                    b = ThreadGet.this;
                    a = NetworkHttpCheck.this;
                    super();
                }

                private class IOnHttpConnectFinish
                {

                    public abstract void a(int i);
                }

            }

            c = new _cls1();
        }
    }

}

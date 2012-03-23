// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.net;

import android.content.Context;
import android.net.*;
import android.os.Handler;
import java.io.IOException;
import org.apache.http.*;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.tencent.qqpim.utils.net:
//            INetEngineObserver

public class HttpDown
{

    public HttpDown(INetEngineObserver inetengineobserver)
    {
        mNetEngineObs = null;
        mThread = null;
        mUrl = null;
        mData = null;
        mHttpclient = null;
        mContext = null;
        mHandler = new _cls1();
        mNetEngineObs = inetengineobserver;
    }

    public void binaryRequest(String s, byte abyte0[])
    {
        mUrl = s;
        mData = abyte0;
        mThread = new _cls2();
        mThread.start();
    }

    public int getNetworkInfo()
    {
        byte byte0;
        if(mContext == null)
        {
            byte0 = -1;
        } else
        {
            NetworkInfo networkinfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
            if(networkinfo == null || networkinfo.getState() != android.net.NetworkInfo.State.CONNECTING && networkinfo.getState() != android.net.NetworkInfo.State.CONNECTED)
                byte0 = -1;
            else
            if(networkinfo.getType() == 1)
                byte0 = 2;
            else
            if(networkinfo.getType() == 0)
            {
                if(Proxy.getDefaultHost() != null || Proxy.getHost(mContext) != null)
                    byte0 = 3;
                else
                    byte0 = 4;
            } else
            {
                byte0 = -1;
            }
        }
        return byte0;
    }

    public void sendRequest(HttpUriRequest httpurirequest, int i)
    {
        int j;
        HttpEntity httpentity;
        j = 200;
        httpentity = null;
        mHttpclient = new DefaultHttpClient();
        mHttpclient.getParams().setParameter("http.socket.timeout", Integer.valueOf(2000));
        mHttpclient.getParams().setParameter("http.connection.timeout", Integer.valueOf(30000));
        mHttpclient.getParams().setBooleanParameter("http.protocol.expect-continue", false);
        if(i == 3)
            mHttpclient.getParams().setParameter("http.route.default-proxy", new HttpHost(Proxy.getHost(mContext), Proxy.getPort(mContext)));
        HttpResponse httpresponse;
        int k;
        httpresponse = mHttpclient.execute(httpurirequest);
        k = httpresponse.getStatusLine().getStatusCode();
        int l;
        l = k;
        if(j != l)
            break MISSING_BLOCK_LABEL_182;
        HttpEntity httpentity1 = httpresponse.getEntity();
        httpentity = httpentity1;
        if(httpentity == null)
            l = 5;
        Message message4 = mHandler.obtainMessage(l, 0, 0, httpentity);
        mHandler.sendMessage(message4);
        mHttpclient.getConnectionManager().shutdown();
_L1:
        return;
        ClientProtocolException clientprotocolexception;
        clientprotocolexception;
_L6:
        clientprotocolexception.getMessage();
        Message message3 = mHandler.obtainMessage(1, 0, 0, httpentity);
        mHandler.sendMessage(message3);
        mHttpclient.getConnectionManager().shutdown();
          goto _L1
        IOException ioexception;
        ioexception;
_L5:
        ioexception.getMessage();
        Message message2 = mHandler.obtainMessage(2, 0, 0, httpentity);
        mHandler.sendMessage(message2);
        mHttpclient.getConnectionManager().shutdown();
          goto _L1
        Exception exception1;
        exception1;
_L4:
        exception1.getMessage();
        Message message1 = mHandler.obtainMessage(3, 0, 0, httpentity);
        mHandler.sendMessage(message1);
        mHttpclient.getConnectionManager().shutdown();
          goto _L1
        Exception exception;
        exception;
_L3:
        Message message = mHandler.obtainMessage(j, 0, 0, httpentity);
        mHandler.sendMessage(message);
        mHttpclient.getConnectionManager().shutdown();
        throw exception;
        Exception exception3;
        exception3;
        j = l;
        exception = exception3;
        if(true) goto _L3; else goto _L2
_L2:
        Exception exception2;
        exception2;
        j = l;
        exception1 = exception2;
          goto _L4
        IOException ioexception1;
        ioexception1;
        j = l;
        ioexception = ioexception1;
          goto _L5
        ClientProtocolException clientprotocolexception1;
        clientprotocolexception1;
        j = l;
        clientprotocolexception = clientprotocolexception1;
          goto _L6
    }

    public void setContext(Context context)
    {
        mContext = context;
    }

    public void stopNetwork()
    {
        if(mHttpclient != null)
            mHttpclient.getConnectionManager().shutdown();
        if(mThread != null)
        {
            mThread.interrupt();
            mThread = null;
        }
    }

    private static final int EDisconnect = -1;
    private static final int ENET = 4;
    private static final int EPROXY = 3;
    private static final int EWifi = 2;
    public Context mContext;
    private byte mData[];
    private Handler mHandler;
    private HttpClient mHttpclient;
    private INetEngineObserver mNetEngineObs;
    private Thread mThread;
    private String mUrl;





    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            mNetEngineObs.binaryPostResponse(message.what, (HttpEntity)message.obj, null);
        }

        final HttpDown this$0;

        _cls1()
        {
            this$0 = HttpDown.this;
            super();
        }
    }


    private class _cls2 extends Thread
    {

        public void run()
        {
            int i = getNetworkInfo();
            if(i == -1)
            {
                Message message = mHandler.obtainMessage(0, 0, 0, null);
                mHandler.sendMessage(message);
            } else
            if(mData == null)
            {
                HttpGet httpget = new HttpGet(mUrl);
                sendRequest(httpget, i);
            } else
            {
                HttpPost httppost = new HttpPost(mUrl);
                httppost.addHeader("Content-Type", "application/x-www-form-urlencoded");
                ByteArrayEntity bytearrayentity = new ByteArrayEntity(mData);
                bytearrayentity.setChunked(false);
                httppost.setEntity(bytearrayentity);
                sendRequest(httppost, i);
            }
        }

        final HttpDown this$0;

        _cls2()
        {
            this$0 = HttpDown.this;
            super();
        }
    }

}

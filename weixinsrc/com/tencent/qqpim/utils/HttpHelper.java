// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.io.*;
import java.net.*;

// Referenced classes of package com.tencent.qqpim.utils:
//            Apn, QQPimUtils

public class HttpHelper
{

    public HttpHelper()
    {
        httpConn = null;
        postSucceed = false;
        responseCode = -1;
        wapurl = "10.0.0.172";
        Apn.init();
        System.setProperty("http.keepAlive", "false");
    }

    protected static byte[] getBytesFromIS(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        do
        {
            int i = inputstream.read();
            if(i == -1)
                return bytearrayoutputstream.toByteArray();
            bytearrayoutputstream.write(i);
        } while(true);
    }

    public static boolean isNetworkConnected()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)QQPimUtils.APPLICATION_CONTEXT.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean flag;
        if(networkinfo == null)
            flag = false;
        else
            flag = networkinfo.isConnected();
        return flag;
    }

    public int getResponseCode()
    {
        return responseCode;
    }

    protected int post(String s, byte abyte0[], String s1, String s2)
    {
        postSucceed = false;
        byte byte0;
        URL url;
        int i = abyte0.length;
        url = new URL(s);
        if(!Apn.M_USE_PROXY)
            break MISSING_BLOCK_LABEL_515;
        QQPimUtils.writeToLog("HttpHelper", "USE PROXY");
        QQPimUtils.writeToLog("HttpHelper", (new StringBuilder("PROXY : ")).append(Apn.M_APN_PROXY).toString());
        String s4 = url.toString();
        int k = 3 + s4.indexOf("://");
        int l = s4.indexOf('/', k);
        OutputStream outputstream;
        int j;
        String s6;
        String s7;
        if(l < 0)
        {
            String s8 = s4.substring(k);
            s6 = "";
            s7 = s8;
        } else
        {
            String s5 = s4.substring(k, l);
            s6 = s4.substring(l);
            s7 = s5;
        }
        QQPimUtils.writeToLog("HttpHelper", (new StringBuilder("Host : ")).append(s7).toString());
        QQPimUtils.writeToLog("HttpHelper", (new StringBuilder("Path : ")).append(s6).toString());
        if(Apn.M_PROXY_TYPE == 1)
        {
            QQPimUtils.writeToLog("HttpHelper", "PROXY_TYPE : CT");
            httpConn = (HttpURLConnection)url.openConnection(new Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(Apn.M_APN_PROXY, 80)));
        } else
        {
            QQPimUtils.writeToLog("HttpHelper", "PROXY_TYPE : CM");
            httpConn = (HttpURLConnection)(new URL((new StringBuilder("http://")).append(Apn.M_APN_PROXY).append(s6).toString())).openConnection();
            httpConn.setRequestProperty("X-Online-Host", s7);
        }
_L1:
        Exception exception;
        String s3;
        httpConn.setReadTimeout(15000);
        httpConn.setConnectTimeout(15000);
        httpConn.setDoOutput(true);
        httpConn.setDoInput(true);
        httpConn.setUseCaches(false);
        httpConn.setRequestMethod("POST");
        httpConn.setRequestProperty("Accept", s1);
        httpConn.setRequestProperty("Content-Type", s2);
        httpConn.setRequestProperty("Content-length", (new StringBuilder()).append(i).toString());
        httpConn.setRequestProperty("User-Agent", "mQQPim");
        outputstream = httpConn.getOutputStream();
        outputstream.write(abyte0);
        outputstream.close();
        j = httpConn.getResponseCode();
        QQPimUtils.writeToLog("post", (new StringBuilder(" responseCode==")).append(j).toString());
        if(200 == j)
        {
            postSucceed = true;
            byte0 = 0;
            break MISSING_BLOCK_LABEL_534;
        }
        break MISSING_BLOCK_LABEL_530;
        try
        {
            httpConn = (HttpURLConnection)url.openConnection();
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception)
        {
            s3 = exception.getMessage();
            if((new StringBuilder("HttpHelper::post exception: ")).append(s3).toString() == null)
                s3 = "";
            QQPimUtils.writeToLog("post", s3);
            byte0 = -1;
            break MISSING_BLOCK_LABEL_534;
        }
          goto _L1
        byte0 = -1;
        return byte0;
    }

    public int postLcCheck(String s, byte abyte0[])
    {
        return post(s, abyte0, "*/*", "application/octet-stream");
    }

    public int postLogin(String s, byte abyte0[])
    {
        return post(s, abyte0, "*/*", "application/octet-stream");
    }

    public int postOperatingData(String s, byte abyte0[])
    {
        return post(s, abyte0, "application/vnd.syncml+wbxml", "application/vnd.syncml+wbxml");
    }

    public int postRemoteSyncCheck(String s, byte abyte0[])
    {
        return post(s, abyte0, "application/vnd.syncml+wbxml", "application/vnd.syncml+wbxml");
    }

    public int postSync(String s, byte abyte0[])
    {
        int i;
        int j;
        i = 0;
        j = i;
_L4:
        if(j < 3) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        QQPimUtils.writeToLog("postSync", "start post");
        i = post(s, abyte0, "application/vnd.syncml+wbxml", "application/vnd.syncml+wbxml");
        QQPimUtils.writeToLog("postSync", (new StringBuilder("post res: ")).append(i).append(", retryCount: ").append(j).toString());
        if(i == 0) goto _L1; else goto _L3
_L3:
        if(httpConn != null)
        {
            httpConn.disconnect();
            httpConn = null;
        }
        Thread.sleep(15000L);
        j++;
          goto _L4
        InterruptedException interruptedexception;
        interruptedexception;
        QQPimUtils.writeToLog("postSync", "\u91CD\u8BD5\u7EBF\u7A0Binterrupted");
          goto _L1
    }

    public byte[] recv()
    {
        if(httpConn != null && postSucceed) goto _L2; else goto _L1
_L1:
        byte abyte0[] = null;
_L4:
        return abyte0;
_L2:
        byte abyte1[] = getBytesFromIS(httpConn.getInputStream());
        abyte0 = abyte1;
_L5:
        httpConn.disconnect();
        httpConn = null;
        if(true) goto _L4; else goto _L3
_L3:
        IOException ioexception;
        ioexception;
        abyte0 = null;
          goto _L5
    }

    public byte[] syncRecv()
    {
        byte abyte0[];
        if(httpConn != null && postSucceed)
            break MISSING_BLOCK_LABEL_142;
        abyte0 = null;
_L5:
        return abyte0;
_L4:
        StringBuilder stringbuilder;
        QQPimUtils.writeToLog("syncRecv", "start rcv");
        abyte0 = getBytesFromIS(httpConn.getInputStream());
        stringbuilder = new StringBuilder("rcv res: ");
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        Object obj = "null";
_L6:
        QQPimUtils.writeToLog("syncRecv", stringbuilder.append(obj).toString());
_L7:
        if(abyte0 != null)
            break; /* Loop/switch isn't completed */
        Thread.sleep(15000L);
        int i;
        i++;
_L8:
        if(i < 3) goto _L4; else goto _L3
_L3:
        httpConn.disconnect();
        httpConn = null;
          goto _L5
_L2:
        Integer integer = Integer.valueOf(abyte0.length);
        obj = integer;
          goto _L6
        IOException ioexception;
        ioexception;
        abyte0 = null;
          goto _L7
        InterruptedException interruptedexception;
        interruptedexception;
        QQPimUtils.writeToLog("syncRecv", "\u91CD\u8BD5\u7EBF\u7A0Binterrupted");
          goto _L3
        i = 0;
        abyte0 = null;
          goto _L8
    }

    protected static final int CONNECT_TIMEOUT = 15000;
    private static final int Connenction_cmnet = 2;
    private static final int Connenction_cmwap = 1;
    private static final int Connenction_wifi = 0;
    protected static final String LOGIN_ACCEPT_TYPE = "*/*";
    protected static final String LOGIN_CONTENT_TYPE = "application/octet-stream";
    protected static final int READ_TIMEOUT = 15000;
    protected static final int RETRY_INTERVAL = 15000;
    protected static final String SYNC_ACCEPT_TYPE = "application/vnd.syncml+wbxml";
    protected static final String SYNC_CONTENT_TYPE = "application/vnd.syncml+wbxml";
    public static final String TAG = "HttpHelper";
    protected HttpURLConnection httpConn;
    protected boolean postSucceed;
    int responseCode;
    private String wapurl;
}

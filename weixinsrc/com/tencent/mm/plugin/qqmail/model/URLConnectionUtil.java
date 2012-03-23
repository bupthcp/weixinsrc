// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import com.tencent.mm.platformtools.Log;
import java.io.*;
import java.net.*;
import java.util.*;
import java.util.zip.GZIPInputStream;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            HttpUtil

public class URLConnectionUtil extends HttpUtil
{

    public URLConnectionUtil()
    {
        d = null;
    }

    private static void a(HttpUtil.Request request, OutputStream outputstream)
    {
        if(request.b != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            Iterator iterator = request.b.keySet().iterator();
            boolean flag = true;
            while(iterator.hasNext()) 
            {
                String s = (String)iterator.next();
                String s1;
                if(flag)
                    s1 = "";
                else
                    s1 = "&";
                stringbuilder.append(s1).append(URLEncoder.encode(s, "utf-8")).append("=").append(URLEncoder.encode((String)request.b.get(s), "utf-8"));
                flag = false;
            }
            outputstream.write(stringbuilder.toString().getBytes());
        }
    }

    public final HttpUtil.Response a(String s, String s1, HttpUtil.Request request)
    {
        int i;
        Object obj;
        i = 0;
        obj = null;
        Log.d("MicroMsg.URLConnectionUtil", (new StringBuilder()).append("uri=").append(s1).append(", ").append(request).toString());
        if(request.a != 0) goto _L2; else goto _L1
_L1:
        Object obj2 = request.b;
_L6:
        HttpURLConnection httpurlconnection;
        d = (HttpURLConnection)(new URL(a(s, s1, ((Map) (obj2))))).openConnection();
        d.setConnectTimeout(c);
        httpurlconnection = d;
        if(request.a != 0) goto _L4; else goto _L3
_L3:
        String s2 = "GET";
_L7:
        OutputStream outputstream;
        httpurlconnection.setRequestMethod(s2);
        d.setDoInput(true);
        d.setDoOutput(true);
        d.setUseCaches(false);
        d.setRequestProperty("User-Agent", b);
        d.setRequestProperty("Host", a);
        System.setProperty("http.keepAlive", "false");
        d.setRequestProperty("connection", "close");
        d.setRequestProperty("Accept-Charset", "utf-8");
        d.setRequestProperty("Accept-Encoding", "compress;q=0.5, gzip;q=1.0");
        d.setRequestProperty("Cookie", a(request.c));
        d.connect();
        outputstream = d.getOutputStream();
        Object obj1 = outputstream;
        String s3;
        String s4;
        InputStream inputstream;
        if(request.a == 1)
            a(request, ((OutputStream) (obj1)));
        ((OutputStream) (obj1)).flush();
        i = d.getResponseCode();
        s3 = d.getHeaderField("set-cookie");
        s4 = d.getHeaderField("Content-Encoding");
        inputstream = d.getInputStream();
        if(s4 == null)
            break MISSING_BLOCK_LABEL_652;
        if(!s4.contains("gzip"))
            break MISSING_BLOCK_LABEL_652;
        obj = new GZIPInputStream(inputstream);
_L11:
        ByteArrayOutputStream bytearrayoutputstream;
        bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[1024];
        do
        {
            int j = ((InputStream) (obj)).read(abyte0);
            if(j <= 0)
                break;
            bytearrayoutputstream.write(abyte0, 0, j);
        } while(true);
          goto _L5
        Exception exception2;
        exception2;
_L10:
        HttpUtil.Response response;
        if(i == 0)
            i = 503;
        response = new HttpUtil.Response(i, null, null);
        Exception exception1;
        IOException ioexception4;
        IOException ioexception5;
        if(obj1 != null)
            try
            {
                ((OutputStream) (obj1)).close();
            }
            catch(IOException ioexception1) { }
        if(obj != null)
            try
            {
                ((InputStream) (obj)).close();
            }
            catch(IOException ioexception) { }
        if(d != null)
            d.disconnect();
        return response;
_L2:
        obj2 = obj;
          goto _L6
_L4:
        s2 = "POST";
          goto _L7
_L5:
        response = new HttpUtil.Response(i, c(s3), new String(bytearrayoutputstream.toByteArray()));
        bytearrayoutputstream.close();
        Log.d("MicroMsg.URLConnectionUtil", (new StringBuilder()).append("uri=").append(s1).append(", ").append(response).toString());
        if(obj1 != null)
            try
            {
                ((OutputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception5) { }
        if(obj != null)
            try
            {
                ((InputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception4) { }
        if(d != null)
            d.disconnect();
        break MISSING_BLOCK_LABEL_422;
        exception1;
        obj1 = obj;
_L9:
        if(obj1 != null)
            try
            {
                ((OutputStream) (obj1)).close();
            }
            catch(IOException ioexception3) { }
        if(obj != null)
            try
            {
                ((InputStream) (obj)).close();
            }
            catch(IOException ioexception2) { }
        if(d != null)
            d.disconnect();
        throw exception1;
        exception1;
        continue; /* Loop/switch isn't completed */
        Exception exception4;
        exception4;
        obj = inputstream;
        exception1 = exception4;
        if(true) goto _L9; else goto _L8
_L8:
        Exception exception;
        exception;
        obj1 = obj;
          goto _L10
        Exception exception3;
        exception3;
        obj = inputstream;
          goto _L10
        obj = inputstream;
          goto _L11
    }

    public final void a()
    {
        Log.d("MicroMsg.URLConnectionUtil", "cancel conection.");
        if(d != null)
            d.disconnect();
    }

    private HttpURLConnection d;
}

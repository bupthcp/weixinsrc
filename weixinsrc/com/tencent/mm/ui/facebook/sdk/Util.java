// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook.sdk;

import android.content.Context;
import android.os.Bundle;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.io.*;
import java.net.*;
import java.util.*;

public final class Util
{

    public Util()
    {
    }

    public static Bundle a(String s)
    {
        String s1 = s.replace("fbconnect", "http");
        Bundle bundle;
        try
        {
            URL url = new URL(s1);
            bundle = b(url.getQuery());
            bundle.putAll(b(url.getRef()));
        }
        catch(MalformedURLException malformedurlexception)
        {
            bundle = new Bundle();
        }
        return bundle;
    }

    public static String a(Bundle bundle)
    {
        String s;
        if(bundle == null)
        {
            s = "";
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            Iterator iterator = bundle.keySet().iterator();
            boolean flag = true;
            while(iterator.hasNext()) 
            {
                String s1 = (String)iterator.next();
                if(flag)
                    flag = false;
                else
                    stringbuilder.append("&");
                stringbuilder.append((new StringBuilder()).append(URLEncoder.encode(s1)).append("=").append(URLEncoder.encode(bundle.getString(s1))).toString());
            }
            s = stringbuilder.toString();
        }
        return s;
    }

    private static String a(Bundle bundle, String s)
    {
        String s1;
        if(bundle == null)
        {
            s1 = "";
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            Iterator iterator = bundle.keySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                String s2 = (String)iterator.next();
                if(bundle.getByteArray(s2) == null)
                {
                    stringbuilder.append((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s2).append("\"\r\n\r\n").append(bundle.getString(s2)).toString());
                    stringbuilder.append((new StringBuilder()).append("\r\n--").append(s).append("\r\n").toString());
                }
            } while(true);
            s1 = stringbuilder.toString();
        }
        return s1;
    }

    private static String a(InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 1000);
        for(String s = bufferedreader.readLine(); s != null; s = bufferedreader.readLine())
            stringbuilder.append(s);

        inputstream.close();
        return stringbuilder.toString();
    }

    public static String a(String s, String s1, Bundle bundle)
    {
        HttpURLConnection httpurlconnection;
        if(s1.equals("GET"))
            s = (new StringBuilder()).append(s).append("?").append(a(bundle)).toString();
        (new StringBuilder()).append(s1).append(" URL: ").append(s).toString();
        httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        httpurlconnection.setConnectTimeout(20000);
        httpurlconnection.setReadTimeout(20000);
        httpurlconnection.setRequestProperty("User-Agent", (new StringBuilder()).append(System.getProperties().getProperty("http.agent")).append(" FacebookAndroidSDK").toString());
        if(!s1.equals("GET"))
        {
            Bundle bundle1 = new Bundle();
            Iterator iterator = bundle.keySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                String s5 = (String)iterator.next();
                if(bundle.getByteArray(s5) != null)
                    bundle1.putByteArray(s5, bundle.getByteArray(s5));
            } while(true);
            if(!bundle.containsKey("method"))
                bundle.putString("method", s1);
            if(bundle.containsKey("access_token"))
                bundle.putString("access_token", URLDecoder.decode(bundle.getString("access_token")));
            httpurlconnection.setRequestMethod("POST");
            httpurlconnection.setRequestProperty("Content-Type", (new StringBuilder()).append("multipart/form-data;boundary=").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").toString());
            httpurlconnection.setDoOutput(true);
            httpurlconnection.setDoInput(true);
            httpurlconnection.setRequestProperty("Connection", "Keep-Alive");
            httpurlconnection.connect();
            BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
            bufferedoutputstream.write((new StringBuilder()).append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
            bufferedoutputstream.write(a(bundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
            bufferedoutputstream.write((new StringBuilder()).append("\r\n").append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
            if(!bundle1.isEmpty())
            {
                for(Iterator iterator1 = bundle1.keySet().iterator(); iterator1.hasNext(); bufferedoutputstream.write((new StringBuilder()).append("\r\n").append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes()))
                {
                    String s4 = (String)iterator1.next();
                    bufferedoutputstream.write((new StringBuilder()).append("Content-Disposition: form-data; filename=\"").append(s4).append("\"").append("\r\n").toString().getBytes());
                    bufferedoutputstream.write((new StringBuilder()).append("Content-Type: content/unknown").append("\r\n").append("\r\n").toString().getBytes());
                    bufferedoutputstream.write(bundle1.getByteArray(s4));
                }

            }
            bufferedoutputstream.flush();
        }
        String s3 = a(httpurlconnection.getInputStream());
        String s2 = s3;
_L2:
        return s2;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        s2 = a(httpurlconnection.getErrorStream());
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void a(Context context)
    {
        CookieSyncManager.createInstance(context);
        CookieManager.getInstance().removeAllCookie();
    }

    private static Bundle b(String s)
    {
        Bundle bundle = new Bundle();
        if(s != null)
        {
            String as[] = s.split("&");
            int i = as.length;
            for(int j = 0; j < i; j++)
            {
                String as1[] = as[j].split("=");
                bundle.putString(URLDecoder.decode(as1[0]), URLDecoder.decode(as1[1]));
            }

        }
        return bundle;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.location;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.view.View;
import java.io.*;
import java.net.*;

public class MapUtil
{

    public MapUtil()
    {
    }

    public static Uri a(String s, double d, double d1)
    {
        return Uri.parse((new StringBuilder()).append("http://maps.google.cn/maps?hl=").append(s).append("&mrt=loc&q=").append(d).append(",").append(d1).toString());
    }

    public static String a(double d, double d1, String s)
    {
        String s1 = null;
        (new StringBuilder()).append("lat ").append(d).append(" lng ").append(d).append(" lan ").append(s).toString();
        Object aobj[] = new Object[4];
        aobj[0] = "05iGkFSm2uMe-_6wzcT2vhVQUfSWfJK8sRGXRVQ";
        aobj[1] = Double.valueOf(d);
        aobj[2] = Double.valueOf(d1);
        aobj[3] = s;
        String s2 = String.format("http://ditu.google.com/maps/geo?output=csv&key=%s&q=%f,%f&hl=%s", aobj);
        (new StringBuilder()).append("url ").append(s2).toString();
        Object obj;
        IOException ioexception;
        String s3;
        Exception exception;
        HttpURLConnection httpurlconnection;
        String s4;
        String as[];
        String s5;
        String s6;
        IOException ioexception1;
        Exception exception1;
        String s7;
        try
        {
            obj = new URL(s2);
        }
        catch(MalformedURLException malformedurlexception)
        {
            obj = s1;
        }
        httpurlconnection = (HttpURLConnection)((URL) (obj)).openConnection();
        httpurlconnection.setConnectTimeout(20000);
        httpurlconnection.setRequestMethod("GET");
        (new StringBuilder()).append("conn ").append(httpurlconnection.getResponseCode()).toString();
        s4 = (new BufferedReader(new InputStreamReader(httpurlconnection.getInputStream()))).readLine();
        if(s4 == null) goto _L2; else goto _L1
_L1:
        as = s4.split(",", 3);
        (new StringBuilder()).append("get data ").append(s4).append(" ").append(as[0]).toString();
        if(as[0].equals("200")) goto _L4; else goto _L3
_L4:
        if(as.length <= 2 || !"200".equals(as[0].trim())) goto _L2; else goto _L5
_L5:
        s5 = as[2].trim();
        s6 = s5;
        try
        {
            if(s6.startsWith("\""))
                s6 = s6.substring(1);
            if(s6.endsWith("\""))
                s6 = s6.substring(0, -1 + s6.length());
            s7 = s6.replaceAll("\"", "\\\"");
        }
        // Misplaced declaration of an exception variable
        catch(IOException ioexception1)
        {
            s3 = s6;
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception1)
        {
            s3 = s6;
            continue; /* Loop/switch isn't completed */
        }
        s3 = s7;
_L6:
        s1 = s3;
        break; /* Loop/switch isn't completed */
        exception;
        s3 = s1;
        continue; /* Loop/switch isn't completed */
        ioexception;
        s3 = s1;
        continue; /* Loop/switch isn't completed */
_L2:
        s3 = s1;
        if(true) goto _L6; else goto _L3
_L3:
        return s1;
    }

    public static String a(String s)
    {
        return (new StringBuilder()).append("\"").append(s).append("\"").toString();
    }

    public static String a(String s, String s1, View view)
    {
        String s2;
        Bitmap bitmap;
        (new StringBuilder()).append("w h ").append(view.getWidth()).append(" ").append(20 + view.getHeight() / 2).toString();
        s2 = (new StringBuilder()).append(s).append(s1).append(".png").toString();
        bitmap = Bitmap.createBitmap(view.getWidth(), 20 + view.getHeight() / 2, android.graphics.Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmap));
        File file;
        (new StringBuilder()).append("saveMyBitmap\u3000").append(s1).toString();
        file = new File((new StringBuilder()).append(s).append(s1).append(".png").toString());
        file.createNewFile();
        FileOutputStream fileoutputstream;
        try
        {
            fileoutputstream = new FileOutputStream(file);
        }
        catch(FileNotFoundException filenotfoundexception)
        {
            fileoutputstream = null;
        }
        (new StringBuilder()).append("h ").append(bitmap.getHeight()).append(" w:").append(bitmap.getWidth()).append(" ").toString();
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 60, fileoutputstream);
        try
        {
            fileoutputstream.flush();
        }
        catch(IOException ioexception1) { }
        try
        {
            fileoutputstream.close();
        }
        catch(IOException ioexception2) { }
        if(bitmap != null)
            try
            {
                bitmap.recycle();
            }
            catch(IOException ioexception)
            {
                s2 = null;
            }
        return s2;
    }

    private static String a = "http://ditu.google.cn/maps?hl=zh&mrt=loc&q";

}

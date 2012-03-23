// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import java.net.URLEncoder;
import java.util.*;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            URLConnectionUtil

public abstract class HttpUtil
{

    public HttpUtil()
    {
    }

    protected static String a(String s, String s1, Map map)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if(!s1.startsWith("http://") && !s1.startsWith("https://"))
            stringbuilder.append((new StringBuilder()).append(s).append(a).toString());
        stringbuilder.append(s1);
        String s2;
        if(map == null)
        {
            s2 = stringbuilder.toString();
        } else
        {
            stringbuilder.append("?");
            Iterator iterator = map.keySet().iterator();
            boolean flag = true;
            while(iterator.hasNext()) 
            {
                String s3 = (String)iterator.next();
                String s4 = (String)map.get(s3);
                String s5;
                if(flag)
                    s5 = "";
                else
                    s5 = "&";
                stringbuilder.append(s5).append(URLEncoder.encode(s3, "utf-8")).append("=").append(URLEncoder.encode(s4, "utf-8"));
                flag = false;
            }
            s2 = stringbuilder.toString();
        }
        return s2;
    }

    protected static String a(Map map)
    {
        String s;
        if(map == null || map.size() == 0)
        {
            s = "";
        } else
        {
            StringBuilder stringbuilder = new StringBuilder();
            Iterator iterator = map.keySet().iterator();
            int j;
            for(int i = 0; iterator.hasNext(); i = j)
            {
                String s1 = (String)iterator.next();
                stringbuilder.append(URLEncoder.encode(s1, "utf-8")).append("=").append(URLEncoder.encode((String)map.get(s1), "utf-8"));
                j = i + 1;
                if(map.size() > j)
                    stringbuilder.append("; ");
            }

            s = stringbuilder.toString();
        }
        return s;
    }

    public static void a(String s)
    {
        URLConnectionUtil.a = s;
    }

    public static void b(String s)
    {
        URLConnectionUtil.b = s;
    }

    protected static Map c(String s)
    {
        HashMap hashmap = new HashMap();
        if(s != null && s.length() != 0)
        {
            String as[] = s.split(";");
            int i = as.length;
            int j = 0;
            while(j < i) 
            {
                String as1[] = as[j].split("=");
                if(as1.length == 2)
                    hashmap.put(as1[0], as1[1]);
                j++;
            }
        }
        return hashmap;
    }

    public abstract Response a(String s, String s1, Request request);

    public abstract void a();

    protected static String a = "";
    protected static String b = "weixin/android";
    protected static int c = 0;

}

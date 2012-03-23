// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class InetUtil
{

    private InetUtil()
    {
    }

    public static InetAddress a(String s)
    {
        InetAddress inetaddress;
        if(a.matcher(s).matches())
        {
            inetaddress = InetAddress.getByName(s);
        } else
        {
            boolean flag;
            if(b.matcher(s).matches() || c.matcher(s).matches())
                flag = true;
            else
                flag = false;
            if(flag)
                inetaddress = InetAddress.getByName(s);
            else
                throw new UnknownHostException("invalid ipv4 or ipv6 dotted string");
        }
        return inetaddress;
    }

    private static final Pattern a = Pattern.compile("^(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}$");
    private static final Pattern b = Pattern.compile("^(?:[0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$");
    private static final Pattern c = Pattern.compile("^((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)::((?:[0-9A-Fa-f]{1,4}(?::[0-9A-Fa-f]{1,4})*)?)$");

}

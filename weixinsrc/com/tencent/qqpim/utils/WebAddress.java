// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class WebAddress
{

    public WebAddress(String s)
    {
        Matcher matcher;
        if(s == null)
            throw new NullPointerException();
        mScheme = "";
        mHost = "";
        mPort = -1;
        mPath = "/";
        mAuthInfo = "";
        matcher = sAddressPattern.matcher(s);
        if(!matcher.matches()) goto _L2; else goto _L1
_L1:
        String s1 = matcher.group(1);
        if(s1 != null)
            mScheme = s1;
        String s2 = matcher.group(2);
        if(s2 != null)
            mAuthInfo = s2;
        String s3 = matcher.group(3);
        if(s3 != null)
            mHost = s3;
        String s4 = matcher.group(4);
        String s5;
        if(s4 != null)
            try
            {
                mPort = Integer.parseInt(s4);
            }
            catch(NumberFormatException numberformatexception)
            {
                throw new ParseException("Bad port");
            }
        s5 = matcher.group(5);
        if(s5 != null && s5.length() > 0)
            if(s5.charAt(0) == '/')
                mPath = s5;
            else
                mPath = (new StringBuilder("/")).append(s5).toString();
        if(mPort != 443 || !mScheme.equals("")) goto _L4; else goto _L3
_L3:
        mScheme = "https";
_L6:
        if(mScheme.equals(""))
            mScheme = "http";
        mScheme = mScheme.toLowerCase();
        return;
_L2:
        throw new ParseException("Bad address");
_L4:
        if(mPort == -1)
            if(mScheme.equals("https"))
                mPort = 443;
            else
                mPort = 80;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public String toString()
    {
        String s = "";
        if(mPort != 443 && mScheme.equals("https") || mPort != 80 && mScheme.equals("http"))
            s = (new StringBuilder(":")).append(Integer.toString(mPort)).toString();
        String s1 = "";
        if(mAuthInfo.length() > 0)
            s1 = (new StringBuilder(String.valueOf(mAuthInfo))).append("@").toString();
        return (new StringBuilder(String.valueOf(mScheme))).append("://").append(s1).append(mHost).append(s).append(mPath).toString();
    }

    private static final String LOGTAG = "http";
    static final int MATCH_GROUP_AUTHORITY = 2;
    static final int MATCH_GROUP_HOST = 3;
    static final int MATCH_GROUP_PATH = 5;
    static final int MATCH_GROUP_PORT = 4;
    static final int MATCH_GROUP_SCHEME = 1;
    static Pattern sAddressPattern = Pattern.compile("(?:(http|HTTP|https|HTTPS|file|FILE)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*'(),;?&=]+)?)@)?([-A-Za-z0-9%]+(?:\\.[-A-Za-z0-9%]+)*)?(?:\\:([0-9]+))?(\\/?.*)?");
    public String mAuthInfo;
    public String mHost;
    public String mPath;
    public int mPort;
    public String mScheme;


    private class ParseException extends RuntimeException
    {

        public String response;
        final WebAddress this$0;

        ParseException(String s)
        {
            this$0 = WebAddress.this;
            super();
            response = s;
        }
    }

}

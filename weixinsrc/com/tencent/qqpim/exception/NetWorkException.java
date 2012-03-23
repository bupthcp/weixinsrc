// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.exception;


public class NetWorkException extends Exception
{

    public NetWorkException(String s)
    {
        super(s);
        errorMsg = s;
    }

    public String getErrorMsg()
    {
        return errorMsg;
    }

    public static String EXCEPTION_NETWORK_DES = "\u7F51\u7EDC\u8FDE\u63A5\u9519\u8BEF";
    private static final long serialVersionUID = 0xa076dfa2d7927e20L;
    String errorMsg;

}

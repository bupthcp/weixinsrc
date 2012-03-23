// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;


public class LoginUtilException extends RuntimeException
{

    public LoginUtilException(int i)
    {
        super((new StringBuilder("LoginUtil error")).append(Integer.toString(i)).toString());
        error = i;
    }

    public int getError()
    {
        return error;
    }

    private static final long serialVersionUID = 0x186a1L;
    private int error;
}

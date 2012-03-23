// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


public final class CodeInfo
{

    public CodeInfo()
    {
    }

    public static String a()
    {
        StackTraceElement stacktraceelement = (new Throwable()).getStackTrace()[1];
        return (new StringBuilder()).append(stacktraceelement.getFileName()).append("(").append(stacktraceelement.getLineNumber()).append(")").toString();
    }

    public static int b()
    {
        return (new Throwable()).getStackTrace()[1].getLineNumber();
    }

    public static String c()
    {
        return (new Throwable()).getStackTrace()[1].toString();
    }
}

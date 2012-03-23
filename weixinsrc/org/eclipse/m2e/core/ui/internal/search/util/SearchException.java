// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SearchException.java

package org.eclipse.m2e.core.ui.internal.search.util;


public class SearchException extends RuntimeException
{

    public SearchException(String message, Throwable cause)
    {
        super(message, cause);
    }

    public SearchException(String message)
    {
        super(message);
    }

    private static final long serialVersionUID = 0x5fe2c880e0aa4ec0L;
}

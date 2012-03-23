// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;


public class SyncException extends RuntimeException
{

    public SyncException(int i)
    {
        super((new StringBuilder("\u540C\u6B65\u5F15\u64CE\u51FA\u9519\uFF0C\u9519\u8BEF\u7801\uFF1A")).append(Integer.toString(i)).toString());
        error = i;
    }

    public int getError()
    {
        return error;
    }

    private static final long serialVersionUID = 0xf4242L;
    private int error;
}

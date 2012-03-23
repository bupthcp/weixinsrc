// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;


// Referenced classes of package com.tencent.mm.network.connpool:
//            DiagnosticException

class OutOfBandException extends DiagnosticException
{

    public OutOfBandException(int i, long l)
    {
        a = i;
        b = l;
    }

    public String getMessage()
    {
        return (new StringBuilder()).append("server out of bind:").append(a).append(",").append(b).toString();
    }

    final int a;
    final long b;
}

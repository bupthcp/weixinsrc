// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import org.apache.http.util.ByteArrayBuffer;

class HttpResponse
{

    HttpResponse()
    {
        a();
    }

    final void a()
    {
        a = false;
        b = 0;
        c = -1;
        d = "";
        e = new ByteArrayBuffer(256);
    }

    boolean a;
    int b;
    int c;
    String d;
    ByteArrayBuffer e;
}

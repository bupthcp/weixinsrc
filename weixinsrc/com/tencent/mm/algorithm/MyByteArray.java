// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;


class MyByteArray
{

    public MyByteArray()
    {
        b = 0;
        a = new byte[256];
    }

    public MyByteArray(byte byte0)
    {
        b = 0;
        byte abyte0[] = new byte[1];
        abyte0[0] = byte0;
        a = abyte0;
    }

    public MyByteArray(byte abyte0[])
    {
        b = 0;
        a = abyte0;
    }

    public byte a[];
    public int b;
}

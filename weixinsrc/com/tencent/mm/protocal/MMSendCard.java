// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal;


public final class MMSendCard
{

    private MMSendCard()
    {
    }

    public static String a(int i)
    {
        String s = (new StringBuilder()).append("code=").append(Integer.toHexString(i)).toString();
        if((i & 1) != 0)
            s = (new StringBuilder()).append(s).append(", weibo").toString();
        if((i & 2) != 0)
            s = (new StringBuilder()).append(s).append(", signature").toString();
        if((i & 4) != 0)
            s = (new StringBuilder()).append(s).append(", qzone").toString();
        if((i & 8) != 0)
            s = (new StringBuilder()).append(s).append(", friend").toString();
        return s;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protocal.protobuf.KeyVal;
import com.tencent.mm.protocal.protobuf.SyncKey;
import java.io.IOException;
import java.util.LinkedList;

final class SyncKeyParser
{

    private SyncKeyParser()
    {
    }

    public static String a(String s)
    {
        String as[];
        LinkedList linkedlist;
        int i;
        int j;
        int k;
        as = s.split("-");
        linkedlist = new LinkedList();
        i = as.length;
        j = 0;
        k = 1;
_L2:
        String s1;
        if(j >= i)
            break; /* Loop/switch isn't completed */
        s1 = as[j];
        int i1 = Integer.parseInt(s1);
        int l = i1;
_L3:
        linkedlist.add((new KeyVal()).a(k).b(l));
        k <<= 1;
        j++;
        if(true) goto _L2; else goto _L1
        Exception exception;
        exception;
        l = 0;
          goto _L3
_L1:
        byte abyte0[] = new byte[0];
        byte abyte1[] = (new SyncKey()).a(linkedlist).a(linkedlist.size()).b();
        abyte0 = abyte1;
_L5:
        Log.b("MicroMsg.SyncKetParser", (new StringBuilder()).append("parse new synckey=").append(Util.a(abyte0)).toString());
        return Util.c(abyte0);
        IOException ioexception;
        ioexception;
        if(true) goto _L5; else goto _L4
_L4:
    }
}

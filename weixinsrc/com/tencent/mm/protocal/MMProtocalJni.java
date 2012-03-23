// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal;

import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.pointers.PInt;

public final class MMProtocalJni
{

    private MMProtocalJni()
    {
    }

    public static native boolean bufToResp(int i, MMBase.Resp resp, byte abyte0[], String s, PByteArray pbytearray);

    public static native boolean mergeSyncKey(byte abyte0[], byte abyte1[], PByteArray pbytearray);

    public static native boolean pack(byte abyte0[], PByteArray pbytearray, String s, byte abyte1[], String s1, int i, int j);

    public static native boolean reqToBuf(int i, MMBase.Req req, PByteArray pbytearray, String s, byte abyte0[], int j);

    public static native boolean setClientPackVersion(int i);

    public static native boolean unpack(PByteArray pbytearray, byte abyte0[], String s, PByteArray pbytearray1, PInt pint);

    public static native boolean verifySyncKey(byte abyte0[]);
}

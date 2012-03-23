// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.android.internal.telephony;

import android.app.PendingIntent;
import android.os.IInterface;
import java.util.List;

public interface ISms
    extends IInterface
{

    public abstract boolean copyMessageToIccEf(int i, byte abyte0[], byte abyte1[]);

    public abstract boolean disableCellBroadcast(int i);

    public abstract boolean enableCellBroadcast(int i);

    public abstract List getAllMessagesFromIccEf();

    public abstract void sendData(String s, String s1, int i, byte abyte0[], PendingIntent pendingintent, PendingIntent pendingintent1);

    public abstract void sendMultipartText(String s, String s1, List list, List list1, List list2);

    public abstract void sendText(String s, String s1, String s2, PendingIntent pendingintent, PendingIntent pendingintent1);

    public abstract boolean updateMessageOnIccEf(int i, int j, byte abyte0[]);
}

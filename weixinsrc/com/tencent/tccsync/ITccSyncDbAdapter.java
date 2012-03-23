// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public interface ITccSyncDbAdapter
{

    public abstract int add(ArrayList arraylist, ArrayList arraylist1, int ai[], int ai1[]);

    public abstract OperationReturnValue add(byte abyte0[], AtomicReference atomicreference, AtomicInteger atomicinteger);

    public abstract OperationReturnValue del(byte abyte0[]);

    public abstract GetCurrObjectReturnValue getCurrObject(AtomicReference atomicreference, AtomicReference atomicreference1, AtomicInteger atomicinteger);

    public abstract GetCurrObjectReturnValue getCurrObjectInfo(AtomicReference atomicreference, AtomicInteger atomicinteger);

    public abstract DbAdapterType getSyncDataType();

    public abstract boolean hasEnoughStorageSpace(long l);

    public abstract boolean isAtEnd();

    public abstract boolean isExist(byte abyte0[]);

    public abstract OperationReturnValue mdf(byte abyte0[], byte abyte1[], AtomicInteger atomicinteger);

    public abstract boolean seekFirst(AtomicInteger atomicinteger);

    public abstract boolean seekNext();

    public abstract int size();

    public abstract boolean syncFreeze();

    public abstract boolean syncInit();
}

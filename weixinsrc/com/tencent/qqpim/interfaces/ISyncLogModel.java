// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;


public interface ISyncLogModel
{

    public abstract long add(String s, int i, long l, long l1, int j, 
            int k, int i1, int j1, long l2, long l3, 
            int k1, int i2, int j2, int k2, int i3, int j3, int k3, 
            int i4, int j4);

    public abstract int delAllSyncLogData();

    public abstract int delAllSyncLogData(String s);

    public abstract int delSyncLogData(String s);
}

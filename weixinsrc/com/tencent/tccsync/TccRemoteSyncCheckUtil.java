// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;

import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import java.util.concurrent.atomic.AtomicInteger;

public class TccRemoteSyncCheckUtil
{

    public TccRemoteSyncCheckUtil()
    {
        cppInstance = 0;
        cppInstance = newTccRemoteSyncCheckUtilInstance();
        if(cppInstance == 0)
            throw new OutOfMemoryError();
        else
            return;
    }

    private native void deleteTccRemoteSyncCheckUtilInstance(int i);

    private native byte[] getPostBody(int i);

    private native String getPostUrl(int i);

    private native int getRemoteContactDelTotal(int i, AtomicInteger atomicinteger);

    private native int getRemoteSyncCheck(int i, AtomicInteger atomicinteger, AtomicInteger atomicinteger1, AtomicInteger atomicinteger2, AtomicInteger atomicinteger3);

    private native int makeCheckWapDataPackage(int i, String s, String s1, String s2, String s3, String s4, int j);

    private native int newTccRemoteSyncCheckUtilInstance();

    private native int solveLoginResponsePackage(int i, byte abyte0[], int j);

    protected void finalize()
    {
        release();
    }

    public byte[] getPostBody()
    {
        return getPostBody(cppInstance);
    }

    public String getPostUrl()
    {
        return getPostUrl(cppInstance);
    }

    public int getRemoteContactDelTotal(AtomicInteger atomicinteger)
    {
        return getRemoteContactDelTotal(cppInstance, atomicinteger);
    }

    public int getRemoteSyncCheck(AtomicInteger atomicinteger, AtomicInteger atomicinteger1, AtomicInteger atomicinteger2, AtomicInteger atomicinteger3)
    {
        return getRemoteSyncCheck(cppInstance, atomicinteger, atomicinteger1, atomicinteger2, atomicinteger3);
    }

    public int makeCheckWapDataPackage(String s, String s1, String s2, String s3, String s4, int i)
    {
        return makeCheckWapDataPackage(cppInstance, s, s1, s2, s3, s4, i);
    }

    public void release()
    {
        if(cppInstance != 0)
        {
            deleteTccRemoteSyncCheckUtilInstance(cppInstance);
            cppInstance = 0;
        }
    }

    public int solveLoginResponsePackage(byte abyte0[], int i)
    {
        return solveLoginResponsePackage(cppInstance, abyte0, i);
    }

    private int cppInstance;

    static 
    {
        ConfigDao.getInstance(null).loadLibrary(ConfigDao.LIB_NAME);
    }
}

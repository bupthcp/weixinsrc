// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.tccsync;

import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.tencent.tccsync:
//            ITccSyncDbAdapter

public class TccRemoteSyncMapPreCount
{

    public TccRemoteSyncMapPreCount()
    {
    }

    public native int getLocalChangeCount(ITccSyncDbAdapter itccsyncdbadapter, String s, AtomicInteger atomicinteger, AtomicInteger atomicinteger1, AtomicInteger atomicinteger2);

    static 
    {
        ConfigDao.getInstance(null).loadLibrary(ConfigDao.LIB_NAME);
    }
}

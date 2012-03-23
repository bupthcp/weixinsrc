// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import com.tencent.a.b.e;
import com.tencent.qqpim.dao.*;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.interfaces.IDao;
import com.tencent.qqpim.tccsync.TccSyncDb;
import com.tencent.tccsync.TccRemoteSyncCheckUtil;
import com.tencent.tccsync.TccRemoteSyncMapPreCount;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.tencent.qqpim.utils:
//            LoginInformation, QQPimUtils, HttpHelper

public class StatisticsUtil
{

    public StatisticsUtil()
    {
    }

    public static boolean collectRemoteSyncCheck()
    {
        boolean flag;
        if(!LoginInformation.getSingleInstance().isLogined())
        {
            flag = false;
            break MISSING_BLOCK_LABEL_298;
        }
        AtomicInteger atomicinteger = new AtomicInteger();
        AtomicInteger atomicinteger1 = new AtomicInteger();
        AtomicInteger atomicinteger2 = new AtomicInteger();
        AtomicInteger atomicinteger3 = new AtomicInteger();
        AtomicInteger atomicinteger4 = new AtomicInteger();
        TccRemoteSyncCheckUtil tccremotesynccheckutil = new TccRemoteSyncCheckUtil();
        if(tccremotesynccheckutil.makeCheckWapDataPackage(QQPimUtils.getServerURL(), LoginInformation.getSingleInstance().getLoginedAccount(), LoginInformation.getSingleInstance().getLoginKey(), QQPimUtils.getUniqueMachineAppID(e.a()), QQPimUtils.getLCString(), 16) != 0)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_298;
        }
        String s1 = tccremotesynccheckutil.getPostUrl();
        byte abyte0[] = tccremotesynccheckutil.getPostBody();
        HttpHelper httphelper = new HttpHelper();
        if(httphelper.postRemoteSyncCheck(s1, abyte0) != 0)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_298;
        }
        byte abyte1[] = httphelper.recv();
        if(abyte1 == null)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_298;
        }
        if(tccremotesynccheckutil.solveLoginResponsePackage(abyte1, abyte1.length) != 0)
        {
            flag = false;
            break MISSING_BLOCK_LABEL_298;
        }
        int i = tccremotesynccheckutil.getRemoteSyncCheck(atomicinteger, atomicinteger1, atomicinteger2, atomicinteger3);
        int j = tccremotesynccheckutil.getRemoteContactDelTotal(atomicinteger4);
        tccremotesynccheckutil.release();
        if(i != 0 || j != 0)
            break MISSING_BLOCK_LABEL_263;
        remoteContactTotal = atomicinteger.get();
        remoteSmsTotal = atomicinteger1.get();
        remoteBookmarkTotal = atomicinteger3.get();
        remoteCalllogTotal = atomicinteger2.get();
        remoteContactDelTotal = atomicinteger4.get();
        flag = true;
        break MISSING_BLOCK_LABEL_298;
        flag = false;
        break MISSING_BLOCK_LABEL_298;
        Throwable throwable;
        throwable;
        String s;
        if(throwable.getMessage() == null)
            s = "collectRemoteSyncCheck exception";
        else
            s = throwable.getMessage();
        QQPimUtils.writeStringToFile("StatisticsUtil.collectRemoteSyncCheck", s);
        flag = false;
        return flag;
    }

    public static int getLocalChangeTotal()
    {
        return localChangeTotal;
    }

    public static int getLocalTotalLocalBookmarkNum(Context context)
    {
        return SYSBookmarkDao.getIDao(context).queryNumber();
    }

    public static int getRemoteBookmarkTotal()
    {
        return remoteBookmarkTotal;
    }

    public static int getRemoteCalllogTotal()
    {
        return remoteCalllogTotal;
    }

    public static int getRemoteContactDelTotal()
    {
        return remoteContactDelTotal;
    }

    public static int getRemoteContactTotal()
    {
        return remoteContactTotal;
    }

    public static int getRemoteSmsTotal()
    {
        return remoteSmsTotal;
    }

    public static int getTotalLocalCalllogNum(Context context)
    {
        return SYSCallLogDao.getIDao(context).queryNumber();
    }

    public static int getTotalLocalContactNum(Context context)
    {
        return SYSContactDao.getIDao(context).queryNumber();
    }

    public static int getTotalLocalSmsNum(Context context)
    {
        return SYSSmsDao.getIDao(context).queryNumber();
    }

    public static boolean isClientChangeTipsNeedToShow()
    {
        return clientChangeTipsNeedToShow;
    }

    public static boolean isLocalContactDeleted()
    {
        boolean flag;
        if(localDelTotal > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean isNeedToShowClientChangePrompt()
    {
        return needToShowClientChangePrompt;
    }

    public static void setClientChangeTipsNeedToShow(boolean flag)
    {
        clientChangeTipsNeedToShow = flag;
    }

    public static void setNeedToShowClientChangePrompt(boolean flag)
    {
        needToShowClientChangePrompt = flag;
    }

    public static boolean syncCollectLocalContactChange(Context context)
    {
        localChangeTotal = 0;
        localDelTotal = 0;
        String s;
        boolean flag;
        if(LoginInformation.getSingleInstance().isLogined())
            s = LoginInformation.getSingleInstance().getLoginedAccount();
        else
            s = ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_ACCOUNT);
        if(s == null || s.equals(""))
        {
            flag = false;
        } else
        {
            boolean flag1 = e.a();
            String s1;
            if(LoginInformation.getSingleInstance().isLogined())
                s1 = QQPimUtils.getContactMapPath_LoginedAccount(flag1);
            else
                s1 = QQPimUtils.getContactMapPath(s, flag1);
            if(s1 == null)
            {
                flag = false;
            } else
            {
                TccRemoteSyncMapPreCount tccremotesyncmapprecount = new TccRemoteSyncMapPreCount();
                AtomicInteger atomicinteger = new AtomicInteger();
                AtomicInteger atomicinteger1 = new AtomicInteger();
                AtomicInteger atomicinteger2 = new AtomicInteger();
                int i = tccremotesyncmapprecount.getLocalChangeCount(TccSyncDb.getITccSyncDbAdapter(context, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CONTACT), s1, atomicinteger, atomicinteger1, atomicinteger2);
                if(i != 0)
                {
                    QQPimUtils.writeStringToFile("collectLocalContactChange", "map fail: Fail to collect local changed contact num");
                } else
                {
                    localChangeTotal = atomicinteger.get() + atomicinteger1.get() + atomicinteger2.get();
                    localDelTotal = atomicinteger1.get();
                }
                if(i == 0)
                    flag = true;
                else
                    flag = false;
            }
        }
        return flag;
    }

    private static boolean clientChangeTipsNeedToShow = false;
    private static int localChangeTotal;
    private static int localDelTotal;
    private static boolean needToShowClientChangePrompt;
    private static int remoteBookmarkTotal;
    private static int remoteCalllogTotal;
    private static int remoteContactDelTotal;
    private static int remoteContactTotal;
    private static int remoteSmsTotal;

}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.model;

import android.content.*;
import android.os.Handler;
import android.os.Message;
import com.tencent.a.b.e;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.dao.SYSSmsDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.interfaces.ISyncModel;
import com.tencent.qqpim.receiver.SyncStatusReceiver;
import com.tencent.qqpim.tccsync.TccSyncDb;
import com.tencent.qqpim.utils.*;
import com.tencent.tccsync.*;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Vector;

// Referenced classes of package com.tencent.qqpim.model:
//            SyncLogModel

public class SyncModel extends RemoteSyncObserver
    implements ISyncModel
{

    static int[] $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()
    {
        int ai[] = $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType;
        if(ai == null)
        {
            ai = new int[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.values().length];
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.BOOKMARK.ordinal()] = 7;
            }
            catch(NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CALLLOG.ordinal()] = 6;
            }
            catch(NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CONTACT.ordinal()] = 2;
            }
            catch(NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.EVENT.ordinal()] = 3;
            }
            catch(NoSuchFieldError nosuchfielderror3) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.MMS.ordinal()] = 5;
            }
            catch(NoSuchFieldError nosuchfielderror4) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.NOTE.ordinal()] = 9;
            }
            catch(NoSuchFieldError nosuchfielderror5) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.SMS.ordinal()] = 4;
            }
            catch(NoSuchFieldError nosuchfielderror6) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.TNOTE.ordinal()] = 10;
            }
            catch(NoSuchFieldError nosuchfielderror7) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.TODO.ordinal()] = 8;
            }
            catch(NoSuchFieldError nosuchfielderror8) { }
            try
            {
                ai[com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.UNKNOW.ordinal()] = 1;
            }
            catch(NoSuchFieldError nosuchfielderror9) { }
            $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType = ai;
        }
        return ai;
    }

    static int[] $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType()
    {
        int ai[] = $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType;
        if(ai == null)
        {
            ai = new int[com.tencent.tccsync.RemoteSync.SyncType.values().length];
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_COVER_SERVER.ordinal()] = 9;
            }
            catch(NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_NONE.ordinal()] = 1;
            }
            catch(NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_ONE_WAY_FROM_CLIENT.ordinal()] = 4;
            }
            catch(NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_ONE_WAY_FROM_SERVER.ordinal()] = 6;
            }
            catch(NoSuchFieldError nosuchfielderror3) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_REFRESH_FROM_CLIENT.ordinal()] = 5;
            }
            catch(NoSuchFieldError nosuchfielderror4) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_REFRESH_FROM_SERVER.ordinal()] = 7;
            }
            catch(NoSuchFieldError nosuchfielderror5) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_RESTORE_FROM_SERVER.ordinal()] = 8;
            }
            catch(NoSuchFieldError nosuchfielderror6) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_SLOW_SYNC.ordinal()] = 3;
            }
            catch(NoSuchFieldError nosuchfielderror7) { }
            try
            {
                ai[com.tencent.tccsync.RemoteSync.SyncType.SYNC_TWO_WAY.ordinal()] = 2;
            }
            catch(NoSuchFieldError nosuchfielderror8) { }
            $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType = ai;
        }
        return ai;
    }

    public SyncModel(Context context1, Handler handler)
    {
        Object obj = null;
        super();
        adapterVec = new Vector();
        adapterNameVec = new Vector();
        syncMethod = 0;
        localBackupId = -1;
        backupTotalNum = 0;
        currentBackupIndex = 0;
        serverAddedNum = 0;
        serverModifiedNum = 0;
        serverDeletedNum = 0;
        restoreTotalNum = 0;
        currentRestoreIndex = 0;
        clientAddedNum = 0;
        clientModifiedNum = 0;
        clientDeletedNum = 0;
        progessPrecent = 0;
        fastRestore = true;
        uploadBytes = 0L;
        downloadBytes = 0L;
        stoppedCommand = false;
        workingThread = ((Thread) (obj));
        syncErrorAlertBecauseNetwork = "[SYNCMODEL]Network Connection Problem";
        syncErrorAlert = "[SYNCMODEL]Sync Exception";
        syncErrorAlertBecauseEngine = "[SYNCMODEL]SYNC ENGINE ERROR, ERROR CODE: ";
        logWritten = false;
        mUseSdcard = false;
        smsApapterAdded = false;
        mHandler = ((Handler) (obj));
        context = context1;
        syncLogModel = new SyncLogModel(context1);
        mHandler = handler;
        mUseSdcard = e.a();
        if(QQPimUtils.SDCARD_MAP_DIR != null)
            obj = (new StringBuilder(String.valueOf(QQPimUtils.SDCARD_MAP_DIR))).append(".lock").toString();
        mSdcardLockFilePath = ((String) (obj));
    }

    private void addAdapter(Context context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType dbadaptertype, String as[])
    {
        String s;
        adapterType = dbadaptertype;
        s = null;
        $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[dbadaptertype.ordinal()];
        JVM INSTR tableswitch 2 7: default 56
    //                   2 67
    //                   3 56
    //                   4 92
    //                   5 56
    //                   6 123
    //                   7 148;
           goto _L1 _L2 _L1 _L3 _L1 _L4 _L5
_L1:
        adapterNameVec.add(s);
        return;
_L2:
        adapterVec.add(TccSyncDb.getITccSyncDbAdapter(context1, dbadaptertype));
        s = QQPimUtils.getContactMapPath_LoginedAccount(mUseSdcard);
        continue; /* Loop/switch isn't completed */
_L3:
        adapterVec.add(TccSyncDb.getITccSyncDbAdapter(context1, dbadaptertype, as));
        s = QQPimUtils.getSmsMapPath(mUseSdcard);
        smsApapterAdded = true;
        continue; /* Loop/switch isn't completed */
_L4:
        adapterVec.add(TccSyncDb.getITccSyncDbAdapter(context1, dbadaptertype));
        s = QQPimUtils.getCalllogMapPath(mUseSdcard);
        continue; /* Loop/switch isn't completed */
_L5:
        adapterVec.add(TccSyncDb.getITccSyncDbAdapter(context1, dbadaptertype));
        s = QQPimUtils.getBookmarkPath(mUseSdcard);
        if(true) goto _L1; else goto _L6
_L6:
    }

    private boolean checkLockFileAvailableAndAdd()
    {
        File file = new File(mSdcardLockFilePath);
        if(file.exists()) goto _L2; else goto _L1
_L1:
        boolean flag;
        file.getParentFile().mkdirs();
        flag = file.createNewFile();
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        fileoutputstream.write(0);
        fileoutputstream.close();
_L4:
        return flag;
_L2:
        flag = false;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYNC ENGINE", (new StringBuilder("checkLockFile throwable:")).append(throwable.toString()).toString());
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean isContactMapFileExist()
    {
        String s;
        boolean flag;
        if(LoginInformation.getSingleInstance().isLogined())
            s = QQPimUtils.getContactMapPath_LoginedAccount(e.a());
        else
            s = QQPimUtils.getContactMapPath(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.DEFAULT_ACCOUNT), e.a());
        if(s == null)
            flag = false;
        else
            flag = (new File(s)).exists();
        return flag;
    }

    private void registerSyncStatusReceiver()
    {
        mSyncStatusReceiver = new SyncStatusReceiver();
        QQPimUtils.APPLICATION_CONTEXT.registerReceiver(mSyncStatusReceiver, new IntentFilter("com.tencent.qqpim.action_req_is_sync_working"));
        QQPimUtils.APPLICATION_CONTEXT.registerReceiver(mSyncStatusReceiver, new IntentFilter("com.tencent.qqpim.action_resp_sync_is_working"));
    }

    private boolean releaseLockFile()
    {
        boolean flag;
        File file;
        flag = false;
        file = new File(mSdcardLockFilePath);
        if(!file.exists())
            break MISSING_BLOCK_LABEL_30;
        boolean flag1 = file.delete();
        flag = flag1;
_L2:
        return flag;
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("SYNC ENGINE", (new StringBuilder("checkLockFile throwable:")).append(throwable.toString()).toString());
        if(true) goto _L2; else goto _L1
_L1:
    }

    private boolean syncSendBroadcastAndCheckIfRemoteSyncRunning()
    {
        boolean flag = false;
        REMOTE_SYNC_RUNNING = flag;
        Intent intent = new Intent();
        intent.setAction("com.tencent.qqpim.action_req_is_sync_working");
        intent.putExtra("package_name", QQPimUtils.APPLICATION_CONTEXT.getPackageName());
        QQPimUtils.APPLICATION_CONTEXT.sendBroadcast(intent);
        try
        {
            Thread.sleep(3000L);
        }
        catch(Exception exception) { }
        if(!REMOTE_SYNC_RUNNING)
        {
            releaseLockFile();
            flag = true;
        }
        return flag;
    }

    private void unregisterSyncStstusReceiver()
    {
        if(mSyncStatusReceiver != null)
        {
            QQPimUtils.APPLICATION_CONTEXT.unregisterReceiver(mSyncStatusReceiver);
            mSyncStatusReceiver = null;
        }
    }

    /**
     * @deprecated Method writeSyncLog is deprecated
     */

    private void writeSyncLog(int i, long l, int j, int k)
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = logWritten;
        if(!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        int i1 = 0;
        if(syncType == null) goto _L1; else goto _L3
_L3:
        $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType()[syncType.ordinal()];
        JVM INSTR tableswitch 2 9: default 84
    //                   2 273
    //                   3 84
    //                   4 261
    //                   5 261
    //                   6 267
    //                   7 267
    //                   8 267
    //                   9 261;
           goto _L4 _L5 _L4 _L6 _L6 _L7 _L7 _L7 _L6
_L4:
        byte byte0 = -1;
        $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[adapterType.ordinal()];
        JVM INSTR tableswitch 2 7: default 136
    //                   2 279
    //                   3 136
    //                   4 285
    //                   5 136
    //                   6 291
    //                   7 297;
           goto _L8 _L9 _L8 _L10 _L8 _L11 _L12
_L8:
        long l1;
        SyncLogModel synclogmodel;
        String s;
        l1 = System.currentTimeMillis();
        synclogmodel = syncLogModel;
        s = LoginInformation.getSingleInstance().getLoginedAccount();
        if(i1 != 0) goto _L14; else goto _L13
_L13:
        int j1 = getServerAdddedNum();
_L19:
        if(i1 != 0) goto _L16; else goto _L15
_L15:
        int k1 = getServerModifiededNum();
_L20:
        if(i1 != 0) goto _L18; else goto _L17
_L17:
        int j2 = getServerDeletedNum();
_L21:
        synclogmodel.add(s, byte0, l, l1, j1, k1, j2, i1, uploadBytes, downloadBytes, i, clientAddedNum, clientModifiedNum, clientDeletedNum, serverAddedNum, serverModifiedNum, serverDeletedNum, j, k);
        logWritten = true;
          goto _L1
        Exception exception;
        exception;
        throw exception;
_L6:
        i1 = 0;
          goto _L4
_L7:
        i1 = 1;
          goto _L4
_L5:
        i1 = 2;
          goto _L4
_L9:
        byte0 = 0;
          goto _L8
_L10:
        byte0 = 1;
          goto _L8
_L11:
        byte0 = 2;
          goto _L8
_L12:
        byte0 = 3;
          goto _L8
_L14:
        j1 = getClientAddedNum();
          goto _L19
_L16:
        k1 = getClientModifiededNum();
          goto _L20
_L18:
        int i2 = getClientDeletedNum();
        j2 = i2;
          goto _L21
    }

    public void addBookmarkAdapter(Context context1)
    {
        addAdapter(context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.BOOKMARK, null);
    }

    public void addCallLogAdapter(Context context1)
    {
        addAdapter(context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CALLLOG, null);
    }

    public void addContactAdapter(Context context1)
    {
        addAdapter(context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CONTACT, null);
    }

    public void addSmsAdapter(Context context1, String as[])
    {
        addAdapter(context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.SMS, as);
    }

    public void clearLoginInformation()
    {
        LoginInformation.getSingleInstance().clearLoginInformation();
    }

    public int getClientAddedNum()
    {
        return clientAddedNum;
    }

    public int getClientDeletedNum()
    {
        return clientDeletedNum;
    }

    public int getClientModifiededNum()
    {
        return clientModifiedNum;
    }

    public int getCurrentBackupIndex()
    {
        return currentBackupIndex;
    }

    public int getCurrentRestoreIndex()
    {
        return currentRestoreIndex;
    }

    public long getDownloadBytes()
    {
        return downloadBytes;
    }

    public String getLastErrorDes()
    {
        return lastErrorDes;
    }

    public int getProgressPrecent()
    {
        return progessPrecent;
    }

    public int getServerAdddedNum()
    {
        return serverAddedNum;
    }

    public int getServerDeletedNum()
    {
        return serverDeletedNum;
    }

    public int getServerModifiededNum()
    {
        return serverModifiedNum;
    }

    public int getTotalBackupNum()
    {
        return backupTotalNum;
    }

    public int getTotalRestoreNum()
    {
        return restoreTotalNum;
    }

    public long getUploadBytes()
    {
        return uploadBytes;
    }

    public void handleESyncProgressNotify(int i, int j)
    {
        progessPrecent = i;
    }

    public void handleESyncShDbBeginScan(int i, int j)
    {
        backupTotalNum = j;
    }

    public void handleESyncShDbClientAdd(int i, int j)
    {
        clientAddedNum = j + clientAddedNum;
    }

    public void handleESyncShDbClientDel(int i, int j)
    {
        clientDeletedNum = 1 + clientDeletedNum;
    }

    public void handleESyncShDbClientMdf(int i, int j)
    {
        clientModifiedNum = 1 + clientModifiedNum;
    }

    public void handleESyncShDbScanOkNotify(int i, int j)
    {
        currentBackupIndex = 1 + currentBackupIndex;
    }

    public void handleESyncShDbServerActionNotify(int i, int j)
    {
        currentRestoreIndex = j + currentRestoreIndex;
    }

    public void handleESyncShDbServerAdd(int i, int j)
    {
        serverAddedNum = 1 + serverAddedNum;
    }

    public void handleESyncShDbServerDel(int i, int j)
    {
        serverDeletedNum = 1 + serverDeletedNum;
    }

    public void handleESyncShDbServerMdf(int i, int j)
    {
        serverModifiedNum = 1 + serverModifiedNum;
    }

    public void handleESyncShDbServerNumOfChange(int i, int j)
    {
        restoreTotalNum = j;
    }

    public void handleESyncShMapServerRefresh(int i, int j)
    {
        fastRestore = false;
    }

    public boolean isLogined()
    {
        return LoginInformation.getSingleInstance().isLogined();
    }

    public com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeBackupAll()
    {
        syncType = com.tencent.tccsync.RemoteSync.SyncType.SYNC_REFRESH_FROM_CLIENT;
        return safeWork();
    }

    public com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeBackupByReplace()
    {
        syncType = com.tencent.tccsync.RemoteSync.SyncType.SYNC_COVER_SERVER;
        return safeWork();
    }

    public com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeBackupChanged()
    {
        syncType = com.tencent.tccsync.RemoteSync.SyncType.SYNC_ONE_WAY_FROM_CLIENT;
        return safeWork();
    }

    public com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeRestoreAll()
    {
        syncType = com.tencent.tccsync.RemoteSync.SyncType.SYNC_RESTORE_FROM_SERVER;
        return safeWork();
    }

    public com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeRestoreChanged()
    {
        syncType = com.tencent.tccsync.RemoteSync.SyncType.SYNC_ONE_WAY_FROM_SERVER;
        return safeWork();
    }

    public com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeSync()
    {
        syncType = com.tencent.tccsync.RemoteSync.SyncType.SYNC_TWO_WAY;
        return safeWork();
    }

    protected com.tencent.qqpim.interfaces.ISyncModel.SyncResult safeWork()
    {
        LOCAL_SYNC_RUNNING = true;
        registerSyncStatusReceiver();
        startTime = System.currentTimeMillis();
        com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult1 = work();
        if(syncresult1 != com.tencent.qqpim.interfaces.ISyncModel.SyncResult.SUCCEED) goto _L2; else goto _L1
_L1:
        writeSyncLog(1, startTime, syncMethod, localBackupId);
_L4:
        if(smsApapterAdded)
        {
            if(mHandler != null)
            {
                Message message = mHandler.obtainMessage();
                message.what = 256;
                mHandler.sendMessage(message);
            }
            ((SYSSmsDao)SYSSmsDao.getIDao(context)).updateAllThreadTime();
        }
        com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult;
        unregisterSyncStstusReceiver();
        LOCAL_SYNC_RUNNING = false;
        syncresult = syncresult1;
_L5:
        return syncresult;
_L2:
        if(syncresult1 == com.tencent.qqpim.interfaces.ISyncModel.SyncResult.USER_CANCEL) goto _L4; else goto _L3
_L3:
        writeSyncLog(0, startTime, syncMethod, localBackupId);
          goto _L4
        SyncException syncexception;
        syncexception;
        if(stoppedCommand)
        {
            syncresult = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.USER_CANCEL;
        } else
        {
            lastErrorDes = syncexception.getMessage();
            if(lastErrorDes == null)
                lastErrorDes = "unknown exception(SyncException), its getMessage() is null";
            QQPimUtils.writeToLog("SYNC ENGINE", lastErrorDes);
            writeSyncLog(0, startTime, syncMethod, localBackupId);
            syncresult = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL;
        }
          goto _L5
        Throwable throwable;
        throwable;
        if(stoppedCommand)
        {
            syncresult = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.USER_CANCEL;
        } else
        {
            lastErrorDes = throwable.getMessage();
            if(lastErrorDes == null)
                lastErrorDes = "unknown exception(Throwable), its getMessage() is null";
            QQPimUtils.writeToLog("SYNC ENGINE", lastErrorDes);
            writeSyncLog(0, startTime, syncMethod, localBackupId);
            syncresult = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL;
        }
          goto _L5
    }

    public void setLocalBackupId(int i)
    {
        localBackupId = i;
    }

    public void setSyncMethod(int i)
    {
        syncMethod = i;
    }

    public void stop()
    {
        if(workingThread != null)
            workingThread.interrupt();
        stoppedCommand = true;
        QQPimUtils.userStoppedSync = true;
        writeSyncLog(2, startTime, syncMethod, localBackupId);
    }

    protected com.tencent.qqpim.interfaces.ISyncModel.SyncResult work()
    {
        if(!mUseSdcard) goto _L2; else goto _L1
_L1:
        if(!checkLockFileAvailableAndAdd())
            syncSendBroadcastAndCheckIfRemoteSyncRunning();
        if(syncSendBroadcastAndCheckIfRemoteSyncRunning()) goto _L2; else goto _L3
_L3:
        com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult3 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL_CONFLICT;
_L14:
        return syncresult3;
_L2:
        RemoteSync remotesync;
        HttpHelper httphelper;
        com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult;
        int i;
        QQPimUtils.userStoppedSync = false;
        workingThread = Thread.currentThread();
        downloadBytes = 0L;
        uploadBytes = 0L;
        if(!QQPimUtils.createFilesDir(mUseSdcard))
        {
            syncresult3 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL;
            continue; /* Loop/switch isn't completed */
        }
        remotesync = new RemoteSync();
        httphelper = new HttpHelper();
        String s = LoginInformation.getSingleInstance().getLoginKey();
        String s1 = LoginInformation.getSingleInstance().getLoginedAccount();
        String s2 = QQPimUtils.getServerURL();
        String s3 = QQPimUtils.getUniqueMachineAppID(mUseSdcard);
        syncresult = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.SUCCEED;
        remotesync.setConfigure(s2, s1, s, s3, this, 45600, 272);
        i = 0;
_L7:
        if(i < adapterNameVec.size()) goto _L5; else goto _L4
_L4:
        int j;
        int k;
        com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult1;
        j = remotesync.start();
        k = 0;
        syncresult1 = syncresult;
          goto _L6
_L9:
        int i1;
        int k1 = k;
        syncresult3 = syncresult1;
        i1 = k1;
_L11:
        QQPimUtils.writeToLog("SyncmlEngine, do,while leave time: ", String.valueOf(System.currentTimeMillis()));
        ITccSyncDbAdapter itccsyncdbadapter;
        String s4;
        com.tencent.tccsync.RemoteSync.SyncType synctype;
        String s5;
        byte abyte0[];
        byte abyte1[];
        com.tencent.qqpim.interfaces.ISyncModel.SyncResult syncresult2;
        int l;
        long l1;
        if(stoppedCommand)
        {
            syncresult3 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.USER_CANCEL;
        } else
        {
            int j1 = remotesync.getLastError();
            if(i1 == 1 && j1 == -32215)
            {
                syncresult3 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.RELOGIN;
                LoginInformation.getSingleInstance().clearLoginInformation();
            } else
            if(syncresult3 != com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL && j1 != 0)
            {
                syncresult3 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL;
                lastErrorDes = syncErrorAlert;
                QQPimUtils.writeToLog("SYNC_JAVA", (new StringBuilder(String.valueOf(syncErrorAlertBecauseEngine))).append(j1).toString());
            }
        }
        l1 = System.currentTimeMillis();
        remotesync.end();
        QQPimUtils.writeToLog("SyncmlEngine.end cost:", String.valueOf(System.currentTimeMillis() - l1));
        workingThread = null;
        if(stoppedCommand)
            syncresult3 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.USER_CANCEL;
        continue; /* Loop/switch isn't completed */
_L5:
        itccsyncdbadapter = (ITccSyncDbAdapter)adapterVec.get(i);
        s4 = (String)adapterNameVec.get(i);
        QQPimUtils.writeToLog("SyncModel.work, syncType: ", (new StringBuilder()).append(syncType.toInt()).toString());
        synctype = syncType;
        if(s4 == null)
            s4 = "";
        remotesync.addDataSource(synctype, itccsyncdbadapter, s4);
        i++;
          goto _L7
_L6:
        if(j != 0 || stoppedCommand) goto _L9; else goto _L8
_L8:
        QQPimUtils.writeToLog("SyncmlEngine, do,while entry/asyncnext leave time: ", String.valueOf(System.currentTimeMillis()));
        k++;
        s5 = remotesync.getPostUrl();
        abyte0 = remotesync.GetPostBuf();
        if(httphelper.postSync(s5, abyte0) != 0)
        {
            syncresult1 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL;
            lastErrorDes = syncErrorAlertBecauseNetwork;
            QQPimUtils.writeToLog("SYNC_JAVA", syncErrorAlertBecauseNetwork);
        }
        QQPimUtils.writeToLog("SyncmlEngine, post leave time: ", String.valueOf(System.currentTimeMillis()));
        uploadBytes = uploadBytes + (long)abyte0.length;
        QQPimUtils.writeToLog("POST UPLOAD TOTAL COUNT", (new Long(uploadBytes)).toString());
        if(stoppedCommand) goto _L9; else goto _L10
_L10:
label0:
        {
            QQPimUtils.writeToLog("SyncmlEngine, recv entry time: ", String.valueOf(System.currentTimeMillis()));
            abyte1 = httphelper.syncRecv();
            if(abyte1 != null)
                break label0;
            syncresult2 = com.tencent.qqpim.interfaces.ISyncModel.SyncResult.FAIL;
            lastErrorDes = syncErrorAlertBecauseNetwork;
            QQPimUtils.writeToLog("SYNC_JAVA", syncErrorAlertBecauseNetwork);
            l = k;
            syncresult3 = syncresult2;
            i1 = l;
        }
          goto _L11
        downloadBytes = downloadBytes + (long)abyte1.length;
        QQPimUtils.writeToLog("POST DOWNLOAD TOTAL COUNT", (new Long(downloadBytes)).toString());
        QQPimUtils.writeToLog("SyncmlEngine, writeBackRecvBuf entry time: ", String.valueOf(System.currentTimeMillis()));
        remotesync.writeBackRecvBuf(abyte1);
        QQPimUtils.writeToLog("SyncmlEngine, writeBackRecvBuf leave time: ", String.valueOf(System.currentTimeMillis()));
        QQPimUtils.writeToLog("SyncmlEngine, asyncNext entry time: ", String.valueOf(System.currentTimeMillis()));
        j = remotesync.next();
        while(3 == j) 
            j = remotesync.nextStep();
        if(true) goto _L6; else goto _L12
_L12:
        if(true) goto _L14; else goto _L13
_L13:
    }

    private static int $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType[];
    private static int $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType[];
    public static boolean LOCAL_SYNC_RUNNING = false;
    public static final int MSG_SYNCMODEL_UPDATE_PROGRESS_MSG = 256;
    public static boolean REMOTE_SYNC_RUNNING = false;
    public static final int SYNC_METHOD_AUTO = 1;
    public static final int SYNC_METHOD_MANUAL = 0;
    public static final int SYNC_METHOD_WIFI = 2;
    public static final int SYNC_RES_CANCEL = 2;
    public static final int SYNC_RES_FAIL = 0;
    public static final int SYNC_RES_SUCCEED = 1;
    Vector adapterNameVec;
    com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType adapterType;
    Vector adapterVec;
    int backupTotalNum;
    int clientAddedNum;
    int clientDeletedNum;
    int clientModifiedNum;
    Context context;
    int currentBackupIndex;
    int currentRestoreIndex;
    long downloadBytes;
    boolean fastRestore;
    String lastErrorDes;
    int localBackupId;
    boolean logWritten;
    private Handler mHandler;
    FileOutputStream mLockFileOutputStream;
    String mSdcardLockFilePath;
    private SyncStatusReceiver mSyncStatusReceiver;
    boolean mUseSdcard;
    int progessPrecent;
    int restoreTotalNum;
    int serverAddedNum;
    int serverDeletedNum;
    int serverModifiedNum;
    boolean smsApapterAdded;
    long startTime;
    boolean stoppedCommand;
    String syncErrorAlert;
    String syncErrorAlertBecauseEngine;
    String syncErrorAlertBecauseNetwork;
    SyncLogModel syncLogModel;
    int syncMethod;
    com.tencent.tccsync.RemoteSync.SyncType syncType;
    long uploadBytes;
    Thread workingThread;

    static 
    {
        LOCAL_SYNC_RUNNING = false;
        REMOTE_SYNC_RUNNING = false;
    }
}

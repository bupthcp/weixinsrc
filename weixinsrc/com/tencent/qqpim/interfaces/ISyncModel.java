// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;

import android.content.Context;

public interface ISyncModel
{

    public abstract void addBookmarkAdapter(Context context);

    public abstract void addCallLogAdapter(Context context);

    public abstract void addContactAdapter(Context context);

    public abstract void addSmsAdapter(Context context, String as[]);

    public abstract void clearLoginInformation();

    public abstract int getClientAddedNum();

    public abstract int getClientDeletedNum();

    public abstract int getClientModifiededNum();

    public abstract int getCurrentBackupIndex();

    public abstract int getCurrentRestoreIndex();

    public abstract long getDownloadBytes();

    public abstract String getLastErrorDes();

    public abstract int getProgressPrecent();

    public abstract int getServerAdddedNum();

    public abstract int getServerDeletedNum();

    public abstract int getServerModifiededNum();

    public abstract int getTotalBackupNum();

    public abstract int getTotalRestoreNum();

    public abstract long getUploadBytes();

    public abstract boolean isLogined();

    public abstract SyncResult safeBackupAll();

    public abstract SyncResult safeBackupByReplace();

    public abstract SyncResult safeBackupChanged();

    public abstract SyncResult safeRestoreAll();

    public abstract SyncResult safeRestoreChanged();

    public abstract SyncResult safeSync();

    public abstract void setLocalBackupId(int i);

    public abstract void setSyncMethod(int i);

    public abstract void stop();

    public static final int REMOTESYNCSTATUS_NEXTCONTINUE = 3;
    public static final int REMOTESYNCSTATUS_SYNCEND = 1;
    public static final int REMOTESYNCSTATUS_SYNCERROR = 2;
    public static final int REMOTESYNCSTATUS_SYNCPOST;
}

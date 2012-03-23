.class public interface abstract Lcom/tencent/qqpim/interfaces/ISyncModel;
.super Ljava/lang/Object;


# static fields
.field public static final REMOTESYNCSTATUS_NEXTCONTINUE:I = 0x3

.field public static final REMOTESYNCSTATUS_SYNCEND:I = 0x1

.field public static final REMOTESYNCSTATUS_SYNCERROR:I = 0x2

.field public static final REMOTESYNCSTATUS_SYNCPOST:I


# virtual methods
.method public abstract addBookmarkAdapter(Landroid/content/Context;)V
.end method

.method public abstract addCallLogAdapter(Landroid/content/Context;)V
.end method

.method public abstract addContactAdapter(Landroid/content/Context;)V
.end method

.method public abstract addSmsAdapter(Landroid/content/Context;[Ljava/lang/String;)V
.end method

.method public abstract clearLoginInformation()V
.end method

.method public abstract getClientAddedNum()I
.end method

.method public abstract getClientDeletedNum()I
.end method

.method public abstract getClientModifiededNum()I
.end method

.method public abstract getCurrentBackupIndex()I
.end method

.method public abstract getCurrentRestoreIndex()I
.end method

.method public abstract getDownloadBytes()J
.end method

.method public abstract getLastErrorDes()Ljava/lang/String;
.end method

.method public abstract getProgressPrecent()I
.end method

.method public abstract getServerAdddedNum()I
.end method

.method public abstract getServerDeletedNum()I
.end method

.method public abstract getServerModifiededNum()I
.end method

.method public abstract getTotalBackupNum()I
.end method

.method public abstract getTotalRestoreNum()I
.end method

.method public abstract getUploadBytes()J
.end method

.method public abstract isLogined()Z
.end method

.method public abstract safeBackupAll()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
.end method

.method public abstract safeBackupByReplace()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
.end method

.method public abstract safeBackupChanged()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
.end method

.method public abstract safeRestoreAll()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
.end method

.method public abstract safeRestoreChanged()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
.end method

.method public abstract safeSync()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
.end method

.method public abstract setLocalBackupId(I)V
.end method

.method public abstract setSyncMethod(I)V
.end method

.method public abstract stop()V
.end method

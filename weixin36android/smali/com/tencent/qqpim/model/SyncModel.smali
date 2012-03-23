.class public Lcom/tencent/qqpim/model/SyncModel;
.super Lcom/tencent/tccsync/RemoteSyncObserver;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/ISyncModel;


# static fields
.field private static synthetic $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType:[I = null

.field private static synthetic $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType:[I = null

.field public static LOCAL_SYNC_RUNNING:Z = false

.field public static final MSG_SYNCMODEL_UPDATE_PROGRESS_MSG:I = 0x100

.field public static REMOTE_SYNC_RUNNING:Z = false

.field public static final SYNC_METHOD_AUTO:I = 0x1

.field public static final SYNC_METHOD_MANUAL:I = 0x0

.field public static final SYNC_METHOD_WIFI:I = 0x2

.field public static final SYNC_RES_CANCEL:I = 0x2

.field public static final SYNC_RES_FAIL:I = 0x0

.field public static final SYNC_RES_SUCCEED:I = 0x1


# instance fields
.field adapterNameVec:Ljava/util/Vector;

.field adapterType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

.field adapterVec:Ljava/util/Vector;

.field backupTotalNum:I

.field clientAddedNum:I

.field clientDeletedNum:I

.field clientModifiedNum:I

.field context:Landroid/content/Context;

.field currentBackupIndex:I

.field currentRestoreIndex:I

.field downloadBytes:J

.field fastRestore:Z

.field lastErrorDes:Ljava/lang/String;

.field localBackupId:I

.field logWritten:Z

.field private mHandler:Landroid/os/Handler;

.field mLockFileOutputStream:Ljava/io/FileOutputStream;

.field mSdcardLockFilePath:Ljava/lang/String;

.field private mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

.field mUseSdcard:Z

.field progessPrecent:I

.field restoreTotalNum:I

.field serverAddedNum:I

.field serverDeletedNum:I

.field serverModifiedNum:I

.field smsApapterAdded:Z

.field startTime:J

.field stoppedCommand:Z

.field syncErrorAlert:Ljava/lang/String;

.field syncErrorAlertBecauseEngine:Ljava/lang/String;

.field syncErrorAlertBecauseNetwork:Ljava/lang/String;

.field syncLogModel:Lcom/tencent/qqpim/model/SyncLogModel;

.field syncMethod:I

.field syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

.field uploadBytes:J

.field workingThread:Ljava/lang/Thread;


# direct methods
.method static synthetic $SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[I
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->values()[Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->EVENT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->MMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->NOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TNOTE:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->TODO:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->UNKNOW:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType()[I
    .locals 3

    sget-object v0, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/tccsync/RemoteSync$SyncType;->values()[Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_COVER_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_2
    :try_start_2
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_3
    :try_start_3
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_4
    :try_start_4
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_5
    :try_start_5
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_7
    :try_start_7
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_SLOW_SYNC:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_8
    :try_start_8
    sget-object v1, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_TWO_WAY:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_9
    sput-object v0, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/model/SyncModel;->LOCAL_SYNC_RUNNING:Z

    sput-boolean v0, Lcom/tencent/qqpim/model/SyncModel;->REMOTE_SYNC_RUNNING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/tccsync/RemoteSyncObserver;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterVec:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterNameVec:Ljava/util/Vector;

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->backupTotalNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->currentBackupIndex:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->serverAddedNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->serverModifiedNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->serverDeletedNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->restoreTotalNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->currentRestoreIndex:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->clientAddedNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->clientModifiedNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->clientDeletedNum:I

    iput v2, p0, Lcom/tencent/qqpim/model/SyncModel;->progessPrecent:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpim/model/SyncModel;->fastRestore:Z

    iput-wide v3, p0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    iput-wide v3, p0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    iput-boolean v2, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->workingThread:Ljava/lang/Thread;

    const-string v1, "[SYNCMODEL]Network Connection Problem"

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseNetwork:Ljava/lang/String;

    const-string v1, "[SYNCMODEL]Sync Exception"

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlert:Ljava/lang/String;

    const-string v1, "[SYNCMODEL]SYNC ENGINE ERROR, ERROR CODE: "

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseEngine:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/qqpim/model/SyncModel;->logWritten:Z

    iput-boolean v2, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    iput-boolean v2, p0, Lcom/tencent/qqpim/model/SyncModel;->smsApapterAdded:Z

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/qqpim/model/SyncModel;->context:Landroid/content/Context;

    new-instance v1, Lcom/tencent/qqpim/model/SyncLogModel;

    invoke-direct {v1, p1}, Lcom/tencent/qqpim/model/SyncLogModel;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->syncLogModel:Lcom/tencent/qqpim/model/SyncLogModel;

    iput-object p2, p0, Lcom/tencent/qqpim/model/SyncModel;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/a/b/e;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils;->SDCARD_MAP_DIR:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mSdcardLockFilePath:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils;->SDCARD_MAP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private addAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V
    .locals 3

    iput-object p2, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterNameVec:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterVec:Ljava/util/Vector;

    invoke-static {p1, p2}, Lcom/tencent/qqpim/tccsync/TccSyncDb;->getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getContactMapPath_LoginedAccount(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterVec:Ljava/util/Vector;

    invoke-static {p1, p2, p3}, Lcom/tencent/qqpim/tccsync/TccSyncDb;->getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSmsMapPath(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpim/model/SyncModel;->smsApapterAdded:Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterVec:Ljava/util/Vector;

    invoke-static {p1, p2}, Lcom/tencent/qqpim/tccsync/TccSyncDb;->getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getCalllogMapPath(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterVec:Ljava/util/Vector;

    invoke-static {p1, p2}, Lcom/tencent/qqpim/tccsync/TccSyncDb;->getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getBookmarkPath(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkLockFileAvailableAndAdd()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mSdcardLockFilePath:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SYNC ENGINE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLockFile throwable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static isContactMapFileExist()Z
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/a/b/e;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getContactMapPath_LoginedAccount(Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/b/e;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getContactMapPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_1
.end method

.method private registerSyncStatusReceiver()V
    .locals 4

    new-instance v0, Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    invoke-direct {v0}, Lcom/tencent/qqpim/receiver/SyncStatusReceiver;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpim.action_req_is_sync_working"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tencent.qqpim.action_resp_sync_is_working"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseLockFile()Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/qqpim/model/SyncModel;->mSdcardLockFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SYNC ENGINE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkLockFile throwable:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private syncSendBroadcastAndCheckIfRemoteSyncRunning()Z
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/model/SyncModel;->REMOTE_SYNC_RUNNING:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.tencent.qqpim.action_req_is_sync_working"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "package_name"

    sget-object v3, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/tencent/qqpim/model/SyncModel;->REMOTE_SYNC_RUNNING:Z

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/model/SyncModel;->releaseLockFile()Z

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private unregisterSyncStstusReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mSyncStatusReceiver:Lcom/tencent/qqpim/receiver/SyncStatusReceiver;

    :cond_0
    return-void
.end method

.method private declared-synchronized writeSyncLog(IJII)V
    .locals 25

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/tencent/qqpim/model/SyncModel;->logWritten:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v11, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$RemoteSync$SyncType()[I

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v2}, Lcom/tencent/tccsync/RemoteSync$SyncType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const/4 v3, -0x1

    invoke-static {}, Lcom/tencent/qqpim/model/SyncModel;->$SWITCH_TABLE$com$tencent$tccsync$ITccSyncDbAdapter$DbAdapterType()[I

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qqpim/model/SyncModel;->adapterType:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v2}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    :goto_2
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/qqpim/model/SyncModel;->syncLogModel:Lcom/tencent/qqpim/model/SyncLogModel;

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    if-nez v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/model/SyncModel;->getServerAdddedNum()I

    move-result v8

    :goto_3
    if-nez v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/model/SyncModel;->getServerModifiededNum()I

    move-result v9

    :goto_4
    if-nez v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/model/SyncModel;->getServerDeletedNum()I

    move-result v10

    :goto_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpim/model/SyncModel;->clientAddedNum:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpim/model/SyncModel;->clientModifiedNum:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpim/model/SyncModel;->clientDeletedNum:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpim/model/SyncModel;->serverAddedNum:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpim/model/SyncModel;->serverModifiedNum:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qqpim/model/SyncModel;->serverDeletedNum:I

    move/from16 v22, v0

    move-wide/from16 v4, p2

    move/from16 v16, p1

    move/from16 v23, p4

    move/from16 v24, p5

    invoke-virtual/range {v1 .. v24}, Lcom/tencent/qqpim/model/SyncLogModel;->add(Ljava/lang/String;IJJIIIIJJIIIIIIIII)J

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/tencent/qqpim/model/SyncModel;->logWritten:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_2
    const/4 v11, 0x0

    goto :goto_1

    :pswitch_3
    const/4 v11, 0x1

    goto :goto_1

    :pswitch_4
    const/4 v11, 0x2

    goto :goto_1

    :pswitch_5
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_6
    const/4 v3, 0x1

    goto :goto_2

    :pswitch_7
    const/4 v3, 0x2

    goto :goto_2

    :pswitch_8
    const/4 v3, 0x3

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/model/SyncModel;->getClientAddedNum()I

    move-result v8

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/model/SyncModel;->getClientModifiededNum()I

    move-result v9

    goto :goto_4

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qqpim/model/SyncModel;->getClientDeletedNum()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addBookmarkAdapter(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->BOOKMARK:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qqpim/model/SyncModel;->addAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V

    return-void
.end method

.method public addCallLogAdapter(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CALLLOG:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qqpim/model/SyncModel;->addAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V

    return-void
.end method

.method public addContactAdapter(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qqpim/model/SyncModel;->addAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V

    return-void
.end method

.method public addSmsAdapter(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->SMS:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qqpim/model/SyncModel;->addAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;[Ljava/lang/String;)V

    return-void
.end method

.method public clearLoginInformation()V
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->clearLoginInformation()V

    return-void
.end method

.method public getClientAddedNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientAddedNum:I

    return v0
.end method

.method public getClientDeletedNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientDeletedNum:I

    return v0
.end method

.method public getClientModifiededNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientModifiedNum:I

    return v0
.end method

.method public getCurrentBackupIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->currentBackupIndex:I

    return v0
.end method

.method public getCurrentRestoreIndex()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->currentRestoreIndex:I

    return v0
.end method

.method public getDownloadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    return-wide v0
.end method

.method public getLastErrorDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressPrecent()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->progessPrecent:I

    return v0
.end method

.method public getServerAdddedNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverAddedNum:I

    return v0
.end method

.method public getServerDeletedNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverDeletedNum:I

    return v0
.end method

.method public getServerModifiededNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverModifiedNum:I

    return v0
.end method

.method public getTotalBackupNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->backupTotalNum:I

    return v0
.end method

.method public getTotalRestoreNum()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->restoreTotalNum:I

    return v0
.end method

.method public getUploadBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    return-wide v0
.end method

.method public handleESyncProgressNotify(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/model/SyncModel;->progessPrecent:I

    return-void
.end method

.method public handleESyncShDbBeginScan(II)V
    .locals 0

    iput p2, p0, Lcom/tencent/qqpim/model/SyncModel;->backupTotalNum:I

    return-void
.end method

.method public handleESyncShDbClientAdd(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientAddedNum:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientAddedNum:I

    return-void
.end method

.method public handleESyncShDbClientDel(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientDeletedNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientDeletedNum:I

    return-void
.end method

.method public handleESyncShDbClientMdf(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientModifiedNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->clientModifiedNum:I

    return-void
.end method

.method public handleESyncShDbScanOkNotify(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->currentBackupIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->currentBackupIndex:I

    return-void
.end method

.method public handleESyncShDbServerActionNotify(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->currentRestoreIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->currentRestoreIndex:I

    return-void
.end method

.method public handleESyncShDbServerAdd(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverAddedNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverAddedNum:I

    return-void
.end method

.method public handleESyncShDbServerDel(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverDeletedNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverDeletedNum:I

    return-void
.end method

.method public handleESyncShDbServerMdf(II)V
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverModifiedNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/SyncModel;->serverModifiedNum:I

    return-void
.end method

.method public handleESyncShDbServerNumOfChange(II)V
    .locals 0

    iput p2, p0, Lcom/tencent/qqpim/model/SyncModel;->restoreTotalNum:I

    return-void
.end method

.method public handleESyncShMapServerRefresh(II)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->fastRestore:Z

    return-void
.end method

.method public isLogined()Z
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->isLogined()Z

    move-result v0

    return v0
.end method

.method public safeBackupAll()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_REFRESH_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method public safeBackupByReplace()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_COVER_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method public safeBackupChanged()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_CLIENT:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method public safeRestoreAll()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_RESTORE_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method public safeRestoreChanged()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_ONE_WAY_FROM_SERVER:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method public safeSync()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 1

    sget-object v0, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_TWO_WAY:Lcom/tencent/tccsync/RemoteSync$SyncType;

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    return-object v0
.end method

.method protected safeWork()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 8

    const/4 v0, 0x1

    const/4 v7, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/model/SyncModel;->LOCAL_SYNC_RUNNING:Z

    invoke-direct {p0}, Lcom/tencent/qqpim/model/SyncModel;->registerSyncStatusReceiver()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qqpim/model/SyncModel;->startTime:J

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qqpim/model/SyncModel;->work()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v6

    sget-object v0, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->SUCCEED:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    if-ne v6, v0, :cond_3

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/tencent/qqpim/model/SyncModel;->startTime:J

    iget v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    iget v5, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/model/SyncModel;->writeSyncLog(IJII)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->smsApapterAdded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x100

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/SYSSmsDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/dao/SYSSmsDao;

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/SYSSmsDao;->updateAllThreadTime()V
    :try_end_0
    .catch Lcom/tencent/tccsync/SyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/model/SyncModel;->unregisterSyncStstusReceiver()V

    sput-boolean v7, Lcom/tencent/qqpim/model/SyncModel;->LOCAL_SYNC_RUNNING:Z

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->USER_CANCEL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    if-eq v6, v0, :cond_0

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/tencent/qqpim/model/SyncModel;->startTime:J

    iget v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    iget v5, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/model/SyncModel;->writeSyncLog(IJII)V
    :try_end_1
    .catch Lcom/tencent/tccsync/SyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    if-eqz v1, :cond_4

    sget-object v0, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->USER_CANCEL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tccsync/SyncException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "unknown exception(SyncException), its getMessage() is null"

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    :cond_5
    const-string v0, "SYNC ENGINE"

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/qqpim/model/SyncModel;->startTime:J

    iget v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    iget v5, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    move-object v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/model/SyncModel;->writeSyncLog(IJII)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    if-eqz v1, :cond_6

    sget-object v0, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->USER_CANCEL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "unknown exception(Throwable), its getMessage() is null"

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    :cond_7
    const-string v0, "SYNC ENGINE"

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/qqpim/model/SyncModel;->startTime:J

    iget v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    iget v5, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    move-object v0, p0

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/model/SyncModel;->writeSyncLog(IJII)V

    sget-object v0, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    goto :goto_1
.end method

.method public setLocalBackupId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    return-void
.end method

.method public setSyncMethod(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    return-void
.end method

.method public stop()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->workingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->workingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    sput-boolean v1, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/tencent/qqpim/model/SyncModel;->startTime:J

    iget v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncMethod:I

    iget v5, p0, Lcom/tencent/qqpim/model/SyncModel;->localBackupId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpim/model/SyncModel;->writeSyncLog(IJII)V

    return-void
.end method

.method protected work()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;
    .locals 12

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/qqpim/model/SyncModel;->checkLockFileAvailableAndAdd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/model/SyncModel;->syncSendBroadcastAndCheckIfRemoteSyncRunning()Z

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpim/model/SyncModel;->syncSendBroadcastAndCheckIfRemoteSyncRunning()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v2, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL_CONFLICT:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    sput-boolean v8, Lcom/tencent/qqpim/utils/QQPimUtils;->userStoppedSync:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->workingThread:Ljava/lang/Thread;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    iput-wide v0, p0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->createFilesDir(Z)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v2, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/tccsync/RemoteSync;

    invoke-direct {v0}, Lcom/tencent/tccsync/RemoteSync;-><init>()V

    new-instance v10, Lcom/tencent/qqpim/utils/HttpHelper;

    invoke-direct {v10}, Lcom/tencent/qqpim/utils/HttpHelper;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getServerURL()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lcom/tencent/qqpim/model/SyncModel;->mUseSdcard:Z

    invoke-static {v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUniqueMachineAppID(Z)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->SUCCEED:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    const v6, 0xb220

    const/16 v7, 0x110

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/tccsync/RemoteSync;->setConfigure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tccsync/RemoteSyncObserver;II)V

    move v3, v8

    :goto_1
    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterNameVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v3, v1, :cond_7

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->start()I

    move-result v3

    move v2, v8

    move-object v1, v9

    :cond_4
    if-eqz v3, :cond_9

    :cond_5
    move v11, v2

    move-object v2, v1

    move v1, v11

    :goto_2
    const-string v3, "SyncmlEngine, do,while leave time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    if-eqz v3, :cond_c

    sget-object v2, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->USER_CANCEL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->end()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    const-string v3, "SyncmlEngine.end cost:"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/model/SyncModel;->workingThread:Ljava/lang/Thread;

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    if-eqz v0, :cond_1

    sget-object v2, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->USER_CANCEL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterVec:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tccsync/ITccSyncDbAdapter;

    iget-object v2, p0, Lcom/tencent/qqpim/model/SyncModel;->adapterNameVec:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "SyncModel.work, syncType: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    invoke-virtual {v6}, Lcom/tencent/tccsync/RemoteSync$SyncType;->toInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncType:Lcom/tencent/tccsync/RemoteSync$SyncType;

    if-nez v2, :cond_8

    const-string v2, ""

    :cond_8
    invoke-virtual {v0, v4, v1, v2}, Lcom/tencent/tccsync/RemoteSync;->addDataSource(Lcom/tencent/tccsync/RemoteSync$SyncType;Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_9
    iget-boolean v3, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    if-nez v3, :cond_5

    const-string v3, "SyncmlEngine, do,while entry/asyncnext leave time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->getPostUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->GetPostBuf()[B

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Lcom/tencent/qqpim/utils/HttpHelper;->postSync(Ljava/lang/String;[B)I

    move-result v3

    if-eqz v3, :cond_a

    sget-object v1, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    iget-object v3, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseNetwork:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    const-string v3, "SYNC_JAVA"

    iget-object v5, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseNetwork:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v3, "SyncmlEngine, post leave time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    array-length v3, v4

    int-to-long v3, v3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    const-string v3, "POST UPLOAD TOTAL COUNT"

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lcom/tencent/qqpim/model/SyncModel;->uploadBytes:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/tencent/qqpim/model/SyncModel;->stoppedCommand:Z

    if-nez v3, :cond_5

    const-string v3, "SyncmlEngine, recv entry time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/tencent/qqpim/utils/HttpHelper;->syncRecv()[B

    move-result-object v3

    if-nez v3, :cond_b

    sget-object v1, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    iget-object v3, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseNetwork:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    const-string v3, "SYNC_JAVA"

    iget-object v4, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseNetwork:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v2

    move-object v2, v1

    move v1, v11

    goto/16 :goto_2

    :cond_b
    iget-wide v4, p0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    array-length v6, v3

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    const-string v4, "POST DOWNLOAD TOTAL COUNT"

    new-instance v5, Ljava/lang/Long;

    iget-wide v6, p0, Lcom/tencent/qqpim/model/SyncModel;->downloadBytes:J

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SyncmlEngine, writeBackRecvBuf entry time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/tccsync/RemoteSync;->writeBackRecvBuf([B)V

    const-string v3, "SyncmlEngine, writeBackRecvBuf leave time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SyncmlEngine, asyncNext entry time: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->next()I

    move-result v3

    :goto_4
    const/4 v4, 0x3

    if-ne v4, v3, :cond_4

    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->nextStep()I

    move-result v3

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Lcom/tencent/tccsync/RemoteSync;->getLastError()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v4, :cond_d

    const/16 v1, -0x7dd7

    if-ne v3, v1, :cond_d

    sget-object v2, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->RELOGIN:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LoginInformation;->clearLoginInformation()V

    goto/16 :goto_3

    :cond_d
    sget-object v1, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    if-eq v2, v1, :cond_6

    if-eqz v3, :cond_6

    sget-object v2, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    iget-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlert:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/model/SyncModel;->lastErrorDes:Ljava/lang/String;

    const-string v1, "SYNC_JAVA"

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/tencent/qqpim/model/SyncModel;->syncErrorAlertBecauseEngine:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

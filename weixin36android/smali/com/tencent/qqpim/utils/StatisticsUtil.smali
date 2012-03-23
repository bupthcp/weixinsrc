.class public Lcom/tencent/qqpim/utils/StatisticsUtil;
.super Ljava/lang/Object;


# static fields
.field private static clientChangeTipsNeedToShow:Z

.field private static localChangeTotal:I

.field private static localDelTotal:I

.field private static needToShowClientChangePrompt:Z

.field private static remoteBookmarkTotal:I

.field private static remoteCalllogTotal:I

.field private static remoteContactDelTotal:I

.field private static remoteContactTotal:I

.field private static remoteSmsTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->clientChangeTipsNeedToShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectRemoteSyncCheck()Z
    .locals 13

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;

    invoke-direct {v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getServerURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/a/b/e;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->getUniqueMachineAppID(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getLCString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->makeCheckWapDataPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getPostBody()[B

    move-result-object v2

    new-instance v3, Lcom/tencent/qqpim/utils/HttpHelper;

    invoke-direct {v3}, Lcom/tencent/qqpim/utils/HttpHelper;-><init>()V

    invoke-virtual {v3, v1, v2}, Lcom/tencent/qqpim/utils/HttpHelper;->postRemoteSyncCheck(Ljava/lang/String;[B)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/qqpim/utils/HttpHelper;->recv()[B

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->solveLoginResponsePackage([BI)I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v8, v9, v10, v11}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteSyncCheck(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v1

    invoke-virtual {v0, v12}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->getRemoteContactDelTotal(Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/tccsync/TccRemoteSyncCheckUtil;->release()V

    if-nez v1, :cond_5

    if-nez v2, :cond_5

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteContactTotal:I

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteSmsTotal:I

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteBookmarkTotal:I

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteCalllogTotal:I

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteContactDelTotal:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v0, v7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatisticsUtil.collectRemoteSyncCheck"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v0, "collectRemoteSyncCheck exception"

    :goto_1
    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getLocalChangeTotal()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->localChangeTotal:I

    return v0
.end method

.method public static getLocalTotalLocalBookmarkNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSBookmarkDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IDao;->queryNumber()I

    move-result v0

    return v0
.end method

.method public static getRemoteBookmarkTotal()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteBookmarkTotal:I

    return v0
.end method

.method public static getRemoteCalllogTotal()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteCalllogTotal:I

    return v0
.end method

.method public static getRemoteContactDelTotal()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteContactDelTotal:I

    return v0
.end method

.method public static getRemoteContactTotal()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteContactTotal:I

    return v0
.end method

.method public static getRemoteSmsTotal()I
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->remoteSmsTotal:I

    return v0
.end method

.method public static getTotalLocalCalllogNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IDao;->queryNumber()I

    move-result v0

    return v0
.end method

.method public static getTotalLocalContactNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSContactDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IDao;->queryNumber()I

    move-result v0

    return v0
.end method

.method public static getTotalLocalSmsNum(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSSmsDao;->getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IDao;->queryNumber()I

    move-result v0

    return v0
.end method

.method public static isClientChangeTipsNeedToShow()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->clientChangeTipsNeedToShow:Z

    return v0
.end method

.method public static isLocalContactDeleted()Z
    .locals 1

    sget v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->localDelTotal:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedToShowClientChangePrompt()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/qqpim/utils/StatisticsUtil;->needToShowClientChangePrompt:Z

    return v0
.end method

.method public static setClientChangeTipsNeedToShow(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/utils/StatisticsUtil;->clientChangeTipsNeedToShow:Z

    return-void
.end method

.method public static setNeedToShowClientChangePrompt(Z)V
    .locals 0

    sput-boolean p0, Lcom/tencent/qqpim/utils/StatisticsUtil;->needToShowClientChangePrompt:Z

    return-void
.end method

.method public static syncCollectLocalContactChange(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    sput v6, Lcom/tencent/qqpim/utils/StatisticsUtil;->localChangeTotal:I

    sput v6, Lcom/tencent/qqpim/utils/StatisticsUtil;->localDelTotal:I

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->getLoginedAccount()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/a/b/e;->a()Z

    move-result v1

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpim/utils/LoginInformation;->isLogined()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getContactMapPath_LoginedAccount(Z)Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    move v0, v6

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getContactMapPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;

    invoke-direct {v0}, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {p0, v1}, Lcom/tencent/qqpim/tccsync/TccSyncDb;->getITccSyncDbAdapter(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;->getLocalChangeCount(Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, "collectLocalContactChange"

    const-string v2, "map fail: Fail to collect local changed contact num"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcom/tencent/qqpim/utils/StatisticsUtil;->localChangeTotal:I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sput v1, Lcom/tencent/qqpim/utils/StatisticsUtil;->localDelTotal:I

    goto :goto_3

    :cond_6
    move v0, v6

    goto :goto_1
.end method

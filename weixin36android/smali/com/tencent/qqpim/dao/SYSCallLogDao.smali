.class public abstract Lcom/tencent/qqpim/dao/SYSCallLogDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/IDao;


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSCallLogDao;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSCallLogDaoV1;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSCallLogDaoV2;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

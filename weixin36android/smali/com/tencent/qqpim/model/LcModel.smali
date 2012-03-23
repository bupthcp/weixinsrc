.class public Lcom/tencent/qqpim/model/LcModel;
.super Ljava/lang/Object;


# static fields
.field public static isLcChecked:Z


# instance fields
.field private checkUpdateResult:I

.field context:Landroid/content/Context;

.field private updateUrl:Ljava/lang/String;

.field private updatedesText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/model/LcModel;->isLcChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    iput-object p1, p0, Lcom/tencent/qqpim/model/LcModel;->context:Landroid/content/Context;

    return-void
.end method

.method public static clearLCInformation()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/model/LcModel;->isLcChecked:Z

    return-void
.end method


# virtual methods
.method public checkLC(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/qqpim/utils/LcUtil;

    invoke-direct {v1}, Lcom/tencent/qqpim/utils/LcUtil;-><init>()V

    new-instance v2, Lcom/tencent/qqpim/utils/HttpHelper;

    invoke-direct {v2}, Lcom/tencent/qqpim/utils/HttpHelper;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/model/LcModel;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v3

    invoke-interface {v3}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5, v0}, Lcom/tencent/qqpim/utils/LcUtil;->makeCheckUpdateRequestPackge([BJI)[B

    move-result-object v3

    const-string v4, "http://conf.3g.qq.com/newConf/n"

    invoke-virtual {v2, v4, v3}, Lcom/tencent/qqpim/utils/HttpHelper;->postLcCheck(Ljava/lang/String;[B)I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/tencent/qqpim/utils/HttpHelper;->recv()[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/model/LcModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpim/utils/LcUtil;->sloveCheckUpdateResponPackge([B[B)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    iget v0, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LcUtil;->getUpdateDesText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/model/LcModel;->updatedesText:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/LcUtil;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/model/LcModel;->updateUrl:Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    goto :goto_0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/LcModel;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedesText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/LcModel;->updatedesText:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedToShowUpdateDialog()Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcom/tencent/qqpim/model/LcModel;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v3

    sget-object v4, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LC_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v3, v4}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLongValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    const-wide/16 v4, 0xf

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/model/LcModel;->updateUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedesText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/model/LcModel;->updatedesText:Ljava/lang/String;

    return-void
.end method

.method public userChooseCancelUpdate()V
    .locals 4

    iget v0, p0, Lcom/tencent/qqpim/model/LcModel;->checkUpdateResult:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/model/LcModel;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->LAST_LC_CHECK_TIME_STAMP:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setLongValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;J)V

    :cond_0
    return-void
.end method

.method public userChooseUpdate()V
    .locals 0

    return-void
.end method

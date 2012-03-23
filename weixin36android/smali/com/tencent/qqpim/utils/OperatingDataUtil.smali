.class public Lcom/tencent/qqpim/utils/OperatingDataUtil;
.super Ljava/lang/Object;


# static fields
.field public static final XXTEA_KEY:Ljava/lang/String; = "DFG#$%^#%$RGHR(&*M<><"


# instance fields
.field configManager:Lcom/tencent/qqpim/dao/ConfigManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/qqpim/utils/OperatingDataUtil;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendOperatingData(LQQPIM/SUIKey;Ljava/util/ArrayList;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/a/b/a/e;

    invoke-direct {v1}, Lcom/a/b/a/e;-><init>()V

    invoke-virtual {v1}, Lcom/a/b/a/e;->b()V

    const-string v2, "report"

    invoke-virtual {v1, v2}, Lcom/a/b/a/e;->c(Ljava/lang/String;)V

    const-string v2, "reportSoftUsageInfo"

    invoke-virtual {v1, v2}, Lcom/a/b/a/e;->d(Ljava/lang/String;)V

    const-string v2, "suikey"

    invoke-virtual {v1, v2, p1}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "vecsui"

    invoke-virtual {v1, v2, p2}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/a/b/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/a/b/a/e;->a()[B

    move-result-object v1

    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/XxteaCryptor;->encrypt([B[B)[B

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpim/utils/HttpHelper;

    invoke-direct {v2}, Lcom/tencent/qqpim/utils/HttpHelper;-><init>()V

    const-string v3, "http://pmir.3g.qq.com"

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/utils/HttpHelper;->postOperatingData(Ljava/lang/String;[B)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/tencent/qqpim/utils/HttpHelper;->recv()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "sendOperatingData"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public sendChannelData()V
    .locals 3

    new-instance v0, Lcom/tencent/qqpim/dao/ConfigManager;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/dao/ConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->configManager:Lcom/tencent/qqpim/dao/ConfigManager;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->HAD_REPORT_CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getBooleanValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->configManager:Lcom/tencent/qqpim/dao/ConfigManager;

    invoke-virtual {v0}, Lcom/tencent/qqpim/dao/ConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;-><init>(Lcom/tencent/qqpim/utils/OperatingDataUtil;Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;)V

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->start()V

    :cond_1
    return-void
.end method

.method public sendOperatingData(Ljava/util/ArrayList;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, LQQPIM/SUIKey;

    invoke-direct {v0}, LQQPIM/SUIKey;-><init>()V

    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImei(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMSI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setLc(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->VERSION:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setVersion(Ljava/lang/String;)V

    const-string v1, "QQPIM"

    invoke-virtual {v0, v1}, LQQPIM/SUIKey;->setName(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/qqpim/utils/OperatingDataUtil;->sendOperatingData(LQQPIM/SUIKey;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

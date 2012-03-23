.class Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpim/utils/OperatingDataUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpim/utils/OperatingDataUtil;Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;-><init>(Lcom/tencent/qqpim/utils/OperatingDataUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/a/b/a/e;

    invoke-direct {v0}, Lcom/a/b/a/e;-><init>()V

    invoke-virtual {v0}, Lcom/a/b/a/e;->b()V

    const-string v1, "info"

    invoke-virtual {v0, v1}, Lcom/a/b/a/e;->c(Ljava/lang/String;)V

    const-string v1, "reportChannelInfo"

    invoke-virtual {v0, v1}, Lcom/a/b/a/e;->d(Ljava/lang/String;)V

    const-string v1, "phonetype"

    new-instance v2, LQQPIM/PhoneType;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, LQQPIM/PhoneType;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, LQQPIM/UserInfo;

    invoke-direct {v1}, LQQPIM/UserInfo;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/UserInfo;->setImei(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;

    #getter for: Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/tencent/qqpim/utils/OperatingDataUtil;->access$0(Lcom/tencent/qqpim/utils/OperatingDataUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/UserInfo;->setLc(Ljava/lang/String;)V

    const-string v2, "userinfo"

    invoke-virtual {v0, v2, v1}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "channelinfo"

    new-instance v2, LQQPIM/ChannelInfo;

    iget-object v3, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;

    iget-object v3, v3, Lcom/tencent/qqpim/utils/OperatingDataUtil;->configManager:Lcom/tencent/qqpim/dao/ConfigManager;

    invoke-virtual {v3}, Lcom/tencent/qqpim/dao/ConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, LQQPIM/ChannelInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/a/b/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/a/b/a/e;->a()[B

    move-result-object v0

    const-string v1, "DFG#$%^#%$RGHR(&*M<><"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/XxteaCryptor;->encrypt([B[B)[B

    move-result-object v0

    new-instance v1, Lcom/tencent/qqpim/utils/HttpHelper;

    invoke-direct {v1}, Lcom/tencent/qqpim/utils/HttpHelper;-><init>()V

    const-string v2, "http://pmir.3g.qq.com"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/utils/HttpHelper;->postOperatingData(Ljava/lang/String;[B)I

    move-result v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "postOperatingData=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/tencent/qqpim/utils/HttpHelper;->recv()[B

    iget-object v0, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;

    #getter for: Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpim/utils/OperatingDataUtil;->access$0(Lcom/tencent/qqpim/utils/OperatingDataUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->HAD_REPORT_CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setBooleanValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;

    #getter for: Lcom/tencent/qqpim/utils/OperatingDataUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qqpim/utils/OperatingDataUtil;->access$0(Lcom/tencent/qqpim/utils/OperatingDataUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->CHANNEL:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    iget-object v2, p0, Lcom/tencent/qqpim/utils/OperatingDataUtil$SendChannelInfoThread;->this$0:Lcom/tencent/qqpim/utils/OperatingDataUtil;

    iget-object v2, v2, Lcom/tencent/qqpim/utils/OperatingDataUtil;->configManager:Lcom/tencent/qqpim/dao/ConfigManager;

    invoke-virtual {v2}, Lcom/tencent/qqpim/dao/ConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

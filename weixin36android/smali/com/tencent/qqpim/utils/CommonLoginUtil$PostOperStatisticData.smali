.class Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpim/utils/CommonLoginUtil;


# direct methods
.method private constructor <init>(Lcom/tencent/qqpim/utils/CommonLoginUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;->this$0:Lcom/tencent/qqpim/utils/CommonLoginUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qqpim/utils/CommonLoginUtil;Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qqpim/utils/CommonLoginUtil$PostOperStatisticData;-><init>(Lcom/tencent/qqpim/utils/CommonLoginUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v2

    sget-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ACTION_STATISTIC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v2, v0}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_1

    new-instance v0, Lcom/tencent/qqpim/utils/OperatingDataUtil;

    invoke-static {}, Lcom/tencent/qqpim/utils/CommonLoginUtil;->access$0()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/utils/OperatingDataUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpim/utils/OperatingDataUtil;->sendOperatingData(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->ACTION_STATISTIC:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    aget-object v6, v4, v0

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    new-instance v7, LQQPIM/SUI;

    invoke-direct {v7}, LQQPIM/SUI;-><init>()V

    aget-object v8, v6, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, LQQPIM/SUI;->setId(I)V

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v6, v8

    invoke-virtual {v7, v6}, LQQPIM/SUI;->setTime(I)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

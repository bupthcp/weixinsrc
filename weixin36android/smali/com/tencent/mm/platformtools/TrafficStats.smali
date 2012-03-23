.class public final Lcom/tencent/mm/platformtools/TrafficStats;
.super Ljava/lang/Object;


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static d:J

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->g:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    sget-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->g:J

    :cond_0
    return-wide v0
.end method

.method public static b()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->h:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    sget-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->h:J

    :cond_0
    return-wide v0
.end method

.method public static c()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->e:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    sget-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->e:J

    :cond_0
    return-wide v0
.end method

.method public static d()J
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->f:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    sget-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->f:J

    :cond_0
    return-wide v0
.end method

.method public static e()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->a:J

    sput-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->b:J

    sput-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    sput-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    invoke-static {}, Lcom/tencent/mm/platformtools/TrafficStats;->f()V

    return-void
.end method

.method public static f()V
    .locals 16

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    :try_start_0
    new-instance v12, Ljava/util/Scanner;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/net/dev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-virtual {v12}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    invoke-virtual {v12}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-wide v0, v10

    move-wide v2, v10

    move-wide v6, v10

    move-wide v8, v10

    :cond_0
    :goto_0
    invoke-virtual {v12}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v12}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v4

    const-string v13, "[ :\t]+"

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x0

    aget-object v4, v13, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const-string v15, "lo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    add-int/lit8 v14, v4, 0x0

    aget-object v14, v13, v14

    const-string v15, "rmnet"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v14, v4, 0x9

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v8, v14

    add-int/lit8 v14, v4, 0x1

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v6, v14

    :cond_1
    add-int/lit8 v14, v4, 0x0

    aget-object v14, v13, v14

    const-string v15, "lo"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    add-int/lit8 v14, v4, 0x0

    aget-object v14, v13, v14

    const-string v15, "rmnet"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    add-int/lit8 v14, v4, 0x9

    aget-object v14, v13, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v2, v14

    add-int/lit8 v4, v4, 0x1

    aget-object v4, v13, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    add-long/2addr v0, v13

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :cond_3
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->a:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_4

    sput-wide v8, Lcom/tencent/mm/platformtools/TrafficStats;->a:J

    const-string v4, "MicroMsg.TrafficStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fix loss newMobileTx"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->b:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_5

    sput-wide v6, Lcom/tencent/mm/platformtools/TrafficStats;->b:J

    const-string v4, "MicroMsg.TrafficStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fix loss newMobileRx"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_6

    sput-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    const-string v4, "MicroMsg.TrafficStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fix loss newWifiTx"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_7

    sput-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    const-string v4, "MicroMsg.TrafficStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fix loss newWifiRx"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_8

    const-string v4, "MicroMsg.TrafficStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "minu "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v12, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    sub-long v12, v0, v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v10

    if-gez v4, :cond_9

    const-string v4, "MicroMsg.TrafficStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "minu "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v10, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    sub-long v10, v2, v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->a:J

    cmp-long v4, v8, v4

    if-ltz v4, :cond_a

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->a:J

    sub-long v4, v8, v4

    :goto_2
    sput-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->e:J

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->b:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_b

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->b:J

    sub-long v4, v6, v4

    :goto_3
    sput-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->f:J

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_c

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    sub-long v4, v2, v4

    :goto_4
    sput-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->g:J

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_d

    sget-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->d:J

    sub-long v4, v0, v4

    :goto_5
    sput-wide v4, Lcom/tencent/mm/platformtools/TrafficStats;->h:J

    sput-wide v8, Lcom/tencent/mm/platformtools/TrafficStats;->a:J

    sput-wide v6, Lcom/tencent/mm/platformtools/TrafficStats;->b:J

    sput-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->c:J

    sput-wide v0, Lcom/tencent/mm/platformtools/TrafficStats;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    const-string v0, "MicroMsg.TrafficStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current system traffic: wifi rx/tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mobile rx/tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/tencent/mm/platformtools/TrafficStats;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    move-wide v4, v8

    goto :goto_2

    :cond_b
    move-wide v4, v6

    goto :goto_3

    :cond_c
    move-wide v4, v2

    goto :goto_4

    :cond_d
    move-wide v4, v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6
.end method

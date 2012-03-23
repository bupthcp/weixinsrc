.class Lcom/tencent/mm/modelmulti/SyncRespHandler;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tencent/mm/protocal/MMSync$Resp;

.field private final b:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final c:Lcom/tencent/mm/modelmulti/NetSceneSync;

.field private d:I

.field private e:Z

.field private f:Z

.field private final g:Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelmulti/NetSceneSync;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;-><init>(Lcom/tencent/mm/modelmulti/SyncRespHandler;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b:Lcom/tencent/mm/platformtools/MTimerHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->f:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b()V

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    invoke-direct {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->g:Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->c:Lcom/tencent/mm/modelmulti/NetSceneSync;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->c:Lcom/tencent/mm/modelmulti/NetSceneSync;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->e:Z

    iput v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a:Lcom/tencent/mm/protocal/MMSync$Resp;

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->f:Z

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->g:Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->e:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/modelmulti/SyncRespHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->f:Z

    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/MMSync$Resp;)Z
    .locals 6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$Resp;->d()J

    move-result-wide v2

    sget v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    if-lez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->c:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->h_()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "MicroMsg.SyncRespHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "continue flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$Resp;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selector="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", opsize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", limit reach="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->c:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {v3}, Lcom/tencent/mm/modelmulti/NetSceneSync;->h_()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/protocal/MMSync$Resp;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a:Lcom/tencent/mm/protocal/MMSync$Resp;

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->c:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->j_()V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.class Lcom/tencent/mm/modelmulti/InitRespHandler;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tencent/mm/protocal/MMInit$Resp;

.field private final b:Lcom/tencent/mm/modelmulti/NetSceneSync;

.field private final c:Ljava/util/Queue;

.field private d:I

.field private e:Z

.field private final f:Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

.field private final g:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelmulti/NetSceneSync;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->c:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->e:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelmulti/InitRespHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelmulti/InitRespHandler$1;-><init>(Lcom/tencent/mm/modelmulti/InitRespHandler;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->b()V

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    invoke-direct {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->f:Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->b:Lcom/tencent/mm/modelmulti/NetSceneSync;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelmulti/InitRespHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelmulti/InitRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->b:Lcom/tencent/mm/modelmulti/NetSceneSync;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/modelmulti/InitRespHandler;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->d:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelmulti/InitRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->f:Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelmulti/InitRespHandler;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->c:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/modelmulti/InitRespHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->b()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/modelmulti/InitRespHandler;)I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->d:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/MMInit$Resp;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->b()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->b:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->h_()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/protocal/MMInit$Resp;)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelmulti/InitRespHandler;->a(Lcom/tencent/mm/protocal/MMInit$Resp;)Z

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    if-eqz v1, :cond_0

    const-string v1, "MicroMsg.InitRespHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "busy, processing resp, continue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMInit$Resp;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMInit$Resp;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->c:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    return v0

    :cond_0
    const-string v1, "MicroMsg.InitRespHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idle process next resp, continue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->b:Lcom/tencent/mm/modelmulti/NetSceneSync;

    invoke-virtual {v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->h()V

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

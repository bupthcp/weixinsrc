.class public Lcom/tencent/mm/modelvoip/VoipService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelvoip/v2protocal;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/mm/modelvoip/VoipService$VoipCallbacks;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private h:Landroid/os/Handler;

.field private i:[B

.field private j:Lcom/tencent/mm/modelvoip/AudioPlayer;

.field private k:Lcom/tencent/mm/modelvoip/AudioRecorder;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->b:Landroid/content/Context;

    iput-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->c:Lcom/tencent/mm/modelvoip/VoipService$VoipCallbacks;

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->d:Z

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->e:Z

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->f:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelvoip/VoipService$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoip/VoipService$1;-><init>(Lcom/tencent/mm/modelvoip/VoipService;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/modelvoip/VoipService$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoip/VoipService$2;-><init>(Lcom/tencent/mm/modelvoip/VoipService;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->h:Landroid/os/Handler;

    iput-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->i:[B

    iput-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    iput-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/protocal/MMVoipSync$Resp;)V
    .locals 4

    iget-object v0, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->e()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v1, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->e()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    :cond_0
    iget-object v0, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->h()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v1, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->h()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/modelvoip/v2protocal;->e:I

    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v1, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->i()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/tencent/mm/modelvoip/v2protocal;->f:J

    :cond_2
    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roomid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v2, v2, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " memberid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v2, v2, Lcom/tencent/mm/modelvoip/v2protocal;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-wide v2, v2, Lcom/tencent/mm/modelvoip/v2protocal;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->i:[B

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoip/VoipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    return-void
.end method

.method private b(Lcom/tencent/mm/protocal/MMVoipSync$Resp;)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v1, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/modelvoip/v2protocal;->d:Ljava/lang/String;

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncOnSceneEnd caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v2, v2, Lcom/tencent/mm/modelvoip/v2protocal;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tencent/mm/protocal/MMVoipSync$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipSyncResp;->g()Lcom/tencent/mm/protocal/protobuf/CmdList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdList;->d()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " syncOnSceneEnd cmdlistnull"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " syncOnSceneEnd cmdlist size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/CmdItem;

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " syncOnSceneEnd item:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cmdId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->c()I

    move-result v3

    if-ne v3, v7, :cond_a

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->a([B)Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v3

    if-ne v3, v10, :cond_3

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/protocal/MMVoipSync$Resp;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/protocal/MMVoipSync$Resp;)V

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " syncOnSceneEnd statItem.getStatus():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v3

    if-ne v3, v10, :cond_6

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v3, v3, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    if-nez v3, :cond_5

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " roomId == 0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    :goto_2
    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " syncOnSceneEnd item:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " statItem.getStatus():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " be invited by:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v4, v4, Lcom/tencent/mm/modelvoip/v2protocal;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    new-instance v3, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;

    iget-object v4, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v4, v4, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    iget-object v5, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v5, v5, Lcom/tencent/mm/modelvoip/v2protocal;->a:[B

    iget-object v6, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget-object v6, v6, Lcom/tencent/mm/modelvoip/v2protocal;->b:[B

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;-><init>(I[B[B)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iput-boolean v7, p0, Lcom/tencent/mm/modelvoip/VoipService;->f:Z

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v3

    if-ne v3, v7, :cond_7

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " syncOnSceneEnd item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v3

    if-ne v3, v8, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v3

    if-ne v3, v9, :cond_9

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipStatusItem;->c()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->c()I

    move-result v3

    if-ne v3, v8, :cond_4

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/protocal/MMVoipSync$Resp;)V

    :try_start_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a([B)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "relayData.getType():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c()I

    move-result v3

    if-ne v3, v8, :cond_b

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/modelvoip/v2protocal;->h:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/v2protocal;->setconfigconnect()I

    move-result v0

    if-gez v0, :cond_4

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "protocal contact failed ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c()I

    move-result v3

    if-ne v3, v9, :cond_c

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/modelvoip/v2protocal;->i:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/v2protocal;->exchangecabinfo()I

    move-result v0

    if-gez v0, :cond_4

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "protocal exchangecabinfo failed ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c()I

    move-result v3

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/modelvoip/v2protocal;->j:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/v2protocal;->handlecommand()I

    move-result v0

    if-gez v0, :cond_4

    const-string v3, "MicroMsg.V2Protocol"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "protocal handlecommand failed ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    goto/16 :goto_3
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoip/VoipService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->c:Lcom/tencent/mm/modelvoip/VoipService$VoipCallbacks;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":uiCallback == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->c:Lcom/tencent/mm/modelvoip/VoipService$VoipCallbacks;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":uiCallback == null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->c()V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/v2protocal;->a()I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->f()V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v0, v0, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roomId == 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v0, -0x30d40

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/tencent/mm/modelvoip/NetSceneVoipShutDown;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v1, v1, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoip/NetSceneVoipShutDown;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/protocal/protobuf/CmdList;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/protocal/protobuf/CmdList;

    invoke-direct {p1}, Lcom/tencent/mm/protocal/protobuf/CmdList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/protocal/protobuf/CmdList;->a(I)Lcom/tencent/mm/protocal/protobuf/CmdList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1, v1}, Lcom/tencent/mm/protocal/protobuf/CmdList;->a(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/protobuf/CmdList;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->i:[B

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->i:[B

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-static {v1}, Lcom/tencent/mm/modelvoip/v2protocal;->a(Lcom/tencent/mm/modelvoip/v2protocal;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/tencent/mm/modelvoip/v2protocal;->g:J

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoip/v2protocal;->a(Z)I

    move-result v1

    if-gez v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    const v0, -0x30d40

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_2
    const-string v1, "MicroMsg.V2Protocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doSync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v3, v3, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmdList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/CmdList;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->i:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v2, v2, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->i:[B

    invoke-direct {v1, v2, p1, v3}, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;-><init>(ILcom/tencent/mm/protocal/protobuf/CmdList;[B)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_3

    iput-boolean v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->d:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    check-cast p4, Lcom/tencent/mm/modelvoip/NetSceneVoipInvite;

    invoke-virtual {p4}, Lcom/tencent/mm/modelvoip/NetSceneVoipInvite;->f()Lcom/tencent/mm/protocal/MMVoipInvite$Resp;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/protocal/MMVoipInvite$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipInviteResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/VoipInviteResp;->d()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isCalling:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isCancelCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->e:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->f()V

    new-instance v0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->a:Lcom/tencent/mm/modelvoip/v2protocal;

    iget v1, v1, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iput-boolean v3, p0, Lcom/tencent/mm/modelvoip/VoipService;->e:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->e()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/VoipService;->d()V

    goto/16 :goto_0

    :cond_6
    check-cast p4, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;

    invoke-virtual {p4}, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->f()Lcom/tencent/mm/protocal/MMVoipSync$Resp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelvoip/VoipService;->b(Lcom/tencent/mm/protocal/MMVoipSync$Resp;)V

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "MicroMsg.V2Protocol"

    const-string v1, "startdev"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelvoip/AudioPlayer;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoip/AudioPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioPlayer;->b()I

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoip/AudioPlayer;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    new-instance v1, Lcom/tencent/mm/modelvoip/VoipService$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoip/VoipService$3;-><init>(Lcom/tencent/mm/modelvoip/VoipService;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoip/AudioPlayer;->a(Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioPlayer;->c()I

    new-instance v0, Lcom/tencent/mm/modelvoip/AudioRecorder;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoip/AudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioRecorder;->b()I

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoip/AudioRecorder;->a(Landroid/content/Context;)I

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    new-instance v1, Lcom/tencent/mm/modelvoip/VoipService$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoip/VoipService$4;-><init>(Lcom/tencent/mm/modelvoip/VoipService;)V

    iput-object v1, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    iget-boolean v1, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    if-nez v1, :cond_0

    iput-boolean v2, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    iput-boolean v2, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->d:Z

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioRecorder;->start()V

    iget-object v1, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "MicroMsg.V2Protocol"

    const-string v1, "stopdev"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioPlayer;->d()I

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioPlayer;->a()I

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->j:Lcom/tencent/mm/modelvoip/AudioPlayer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/AudioRecorder;->a()I

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    iget-boolean v1, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    iput-object v2, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    iput-object v2, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iput-boolean v3, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    iput-boolean v3, v0, Lcom/tencent/mm/modelvoip/AudioRecorder;->d:Z

    :cond_1
    iput-object v2, p0, Lcom/tencent/mm/modelvoip/VoipService;->k:Lcom/tencent/mm/modelvoip/AudioRecorder;

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

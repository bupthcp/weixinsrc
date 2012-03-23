.class public Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->h:Z

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    new-instance v2, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v3, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$1;-><init>(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)V

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneUploadVoice:  file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/modelbase/IOnSceneEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;)Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 9

    const/16 v8, 0x1770

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->h:Z

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    const-string v1, "doScene:  filename null!"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get info Failed file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "MicroMsg.NetSceneUploadVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doScene file:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " netTimes:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->r()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVoiceNetTimes Failed file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;

    invoke-direct {v1}, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;-><init>()V

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_4

    const-string v3, "MicroMsg.NetSceneUploadVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cancelFlag = 1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->g(Ljava/lang/String;)Z

    move-object v3, v1

    move v1, v2

    :goto_1
    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    add-int/lit8 v0, v0, -0x6

    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x14

    move v4, v0

    :goto_2
    new-instance v0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v6, v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->d(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget v6, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->e(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v4, v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    if-eq v1, v2, :cond_f

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    iget-object v4, v3, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->a:[B

    invoke-static {v4}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    iget v4, v3, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v4, v2}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget v4, v3, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    :goto_3
    const-string v2, "MicroMsg.NetSceneUploadVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelFlag:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " endFlag:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " svrId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MicroMsg.NetSceneUploadVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doscene msgId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->e()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " user:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " offset:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->d()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dataLen:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " endFlag:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->g()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene MsgId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " readBytes:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v3, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " neTTTOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " neWWWOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cancelFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->e:J

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    iput-boolean v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->h:Z

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v4

    invoke-virtual {v1, v4, v8}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(II)Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_7
    const-string v4, "MicroMsg.NetSceneUploadVoice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doScene READ file["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] read ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " readlen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " netOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " line:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    if-gez v4, :cond_8

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err doScene READ file["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] read ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " readlen:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " newOff:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_8
    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    iput v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    iget v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v6

    if-lt v4, v6, :cond_9

    iget v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    sget v6, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a:I

    if-lt v4, v6, :cond_a

    :cond_9
    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ file["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] newOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldtOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_a
    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    if-nez v4, :cond_b

    iget-boolean v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->h:Z

    if-nez v4, :cond_b

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene:  file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " No Data temperature , will be retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_b
    iget-boolean v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->h:Z

    if-eqz v4, :cond_e

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v4

    if-gtz v4, :cond_c

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ file["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] read totalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v4

    iget v6, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    if-le v4, v6, :cond_d

    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    if-ge v4, v8, :cond_d

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err doScene READ file["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] readlen:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " newOff:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    move v0, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v3

    iget v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    if-gt v3, v4, :cond_e

    iput v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    :cond_e
    move-object v3, v1

    move v1, v0

    goto/16 :goto_1

    :cond_f
    new-instance v4, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    new-array v6, v2, [B

    invoke-static {v6}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v4

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v6, v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v4, v2}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    goto/16 :goto_3

    :cond_10
    move v4, v0

    goto/16 :goto_2
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 5

    const/4 v4, 0x1

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;

    const-string v1, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->e()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->d()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->g()I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->h()I

    move-result v0

    if-eq v0, v4, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 11

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->b(I)V

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;

    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    const/16 v2, -0x16

    if-ne p3, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    const/16 v2, 0x108

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    :cond_0
    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    const/16 v1, 0x140

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    if-eqz p3, :cond_3

    const/16 v2, -0xd

    if-eq p3, v2, :cond_3

    const/4 v2, -0x6

    if-eq p3, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_5
    const-string v2, "MicroMsg.NetSceneUploadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd msgId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toUser:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->f()I

    move-result v2

    if-gtz v2, :cond_6

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getMsgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netoff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    iget-object v0, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->f()I

    move-result v0

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->e()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->i:I

    if-nez v2, :cond_8

    const/4 v0, -0x1

    :cond_7
    :goto_1
    const-string v2, "MicroMsg.NetSceneUploadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd updateAfterSend:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MsgSvrId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " clientId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " neWWOff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " neTTTT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceResponse;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_d

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    const-string v1, "MicroMsg.NetSceneUploadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UpdateAfterSend Ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "MicroMsg.VoiceLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UpdateAfterSend file:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] newOff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SvrID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " clientID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v6

    if-nez v6, :cond_9

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v6, v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/tencent/mm/modelvoice/VoiceInfo;->b(J)V

    const/16 v7, 0x108

    invoke-virtual {v6, v7}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_a

    if-eqz v4, :cond_a

    invoke-virtual {v6, v4}, Lcom/tencent/mm/modelvoice/VoiceInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v4

    or-int/lit16 v4, v4, 0x200

    invoke-virtual {v6, v4}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    :cond_a
    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v4

    if-nez v4, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v6, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->d(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {v6, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v4

    if-gt v4, v3, :cond_c

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    const/4 v3, 0x1

    if-ne v5, v3, :cond_c

    const/16 v0, 0x63

    invoke-virtual {v6, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c()I

    move-result v0

    or-int/lit8 v0, v0, 0x40

    invoke-virtual {v6, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g()I

    move-result v4

    int-to-long v4, v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const/16 v3, 0x10a

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    const-string v0, "MicroMsg.VoiceLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END!!! updateSend  file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/modelvoice/VoiceInfo;->r()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->c(Ljava/lang/String;)V

    :cond_c
    invoke-static {v6}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, -0x4

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    const-string v0, "MicroMsg.NetSceneUploadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd finish file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->h:Z

    if-eqz v0, :cond_f

    const-wide/16 v0, 0x0

    :goto_2
    const-string v2, "MicroMsg.NetSceneUploadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto/16 :goto_0

    :cond_f
    const-wide/16 v0, 0x1f4

    goto :goto_2
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f:I

    return v0
.end method

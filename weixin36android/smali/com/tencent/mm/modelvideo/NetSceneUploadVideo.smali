.class public Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private final e:I

.field private final f:J

.field private g:I

.field private h:Z

.field private i:Lcom/tencent/mm/modelvideo/VideoInfo;

.field private j:Z

.field private k:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

.field private l:I

.field private m:I

.field private n:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v2, 0x9c4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-wide/32 v3, 0x1b7740

    iput-wide v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->f:J

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    iput-boolean v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->h:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->j:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->k:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    iput v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->l:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->m:I

    new-instance v3, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v4, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo$1;-><init>(Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;)V

    invoke-direct {v3, v4, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->n:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetSceneUploadVideo:  file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->r()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->e:I

    :goto_2
    new-instance v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->k:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->e:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;)Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;)Lcom/tencent/mm/modelbase/IOnSceneEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 10

    const/16 v9, 0x67

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v3, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v0

    const/16 v4, 0x68

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v0

    if-eq v0, v9, :cond_1

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get info Failed file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    :goto_0
    return v0

    :cond_1
    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doscene file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->i()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]  netTimes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->o()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->m:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->m:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->r()I

    move-result v0

    if-ne v0, v1, :cond_5

    iput-boolean v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->j:Z

    :cond_2
    new-instance v0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo$MMReqRespUploadVideo;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo$MMReqRespUploadVideo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->j:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f(I)V

    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e(I)V

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->i()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a(I)V

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v1

    if-ne v1, v9, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    if-ltz v2, :cond_4

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    if-nez v2, :cond_8

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene READ THUMB["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->k()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    add-long/2addr v4, v6

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_6

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create time check error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkVoiceNetTimes Failed file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto/16 :goto_1

    :cond_8
    const-string v2, "MicroMsg.NetSceneUploadVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doScene READ THUMB["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] read ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " readlen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v4

    if-ge v2, v4, :cond_9

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err doScene READ THUMB["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] newOff:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldtOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_9
    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    new-array v2, v2, [B

    iget-object v3, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->a:[B

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-static {v3, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a([B)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    if-ltz v2, :cond_b

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    if-nez v2, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene READ VIDEO["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_c
    const-string v2, "MicroMsg.NetSceneUploadVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doScene READ VIDEO["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] read ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " readlen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " netOff:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v4

    if-ge v2, v4, :cond_d

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Err doScene READ VIDEO["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] newOff:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldtOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_d
    iget-boolean v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->j:Z

    if-nez v2, :cond_e

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    const v4, 0xfa000

    if-lt v2, v4, :cond_e

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ VIDEO["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0xfa000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_e
    iget-boolean v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->j:Z

    if-eqz v2, :cond_f

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    const v4, 0x989680

    if-lt v2, v4, :cond_f

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ VIDEO["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x989680

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    move v0, v3

    goto/16 :goto_0

    :cond_f
    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    new-array v2, v2, [B

    iget-object v3, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->a:[B

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-static {v3, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b([B)V

    goto/16 :goto_2
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 4

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->n()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->m()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "MicroMsg.NetSceneUploadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: Security Check Failed file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/16 v8, 0x67

    const/4 v5, 0x4

    const/4 v7, 0x2

    const/16 v6, 0x68

    const/4 v2, 0x0

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd  errtype:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " errCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  file:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->b(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd Call Stop by Service   file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadVideo$Resp;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMUploadVideo$Req;

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    if-nez v3, :cond_1

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd Get INFO FAILED :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_2

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd STATUS PAUSE ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v3

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v3

    if-eq v3, v8, :cond_3

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd STATUS ERR: status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_3
    if-ne p2, v5, :cond_5

    const/16 v3, -0x16

    if-ne p3, v3, :cond_5

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: onGYNetEnd BLACK  errtype:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " errCode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  file:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->n()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    const/16 v2, 0x108

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->n()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    if-ne p2, v5, :cond_6

    if-eqz p3, :cond_6

    const/16 v3, -0xd

    if-eq p3, v3, :cond_6

    const/4 v3, -0x6

    if-eq p3, v3, :cond_6

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd SERVER FAILED errtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    if-nez p2, :cond_7

    if-eqz p3, :cond_8

    :cond_7
    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd FAILED (WILL RETRY) errtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Resp;->e()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g()[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_9

    const-string v2, "MicroMsg.NetSceneUploadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd Err Thumb Pos:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Resp;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Resp;->f()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j()[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_a

    const-string v2, "MicroMsg.NetSceneUploadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd Err Thumb Pos:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Resp;->f()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadVideo$Resp;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    const/16 v3, 0x404

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v0

    if-ne v0, v8, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->f(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->b()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->h()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->i()I

    move-result v1

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->b()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    iget-boolean v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->h:Z

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_b
    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->c(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->b()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->e()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v1

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->b()I

    move-result v1

    or-int/lit16 v1, v1, 0x100

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {v1, v7}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const/16 v2, 0x10a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->n()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_c
    const-string v2, "MicroMsg.NetSceneUploadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd ERROR STATUS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " user:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_d
    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->n:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v0

    if-gtz v0, :cond_f

    const-string v0, "MicroMsg.NetSceneUploadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: finish video invaild MSGSVRID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->k:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->k:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v0

    :goto_2
    const-string v2, "MicroMsg.NetSceneUploadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!FIN: file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toUser:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgsvrid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " thumbsize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " videosize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->i:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " useTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_10
    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_11
    move v0, v2

    goto/16 :goto_1
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x29

    return v0
.end method

.method protected final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->e:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g:I

    return v0
.end method

.method protected final g_()J
    .locals 2

    const-wide/32 v0, 0x1b7740

    return-wide v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->h:Z

    return-void
.end method

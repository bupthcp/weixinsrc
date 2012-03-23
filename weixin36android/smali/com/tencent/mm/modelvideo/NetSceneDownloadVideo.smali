.class public Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/mm/modelvideo/VideoInfo;

.field private f:I

.field private g:Z

.field private h:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->g:Z

    new-instance v1, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v2, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;-><init>(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)V

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->h:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneDownloadVideo:  file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)Lcom/tencent/mm/modelbase/IOnSceneEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 4

    const/4 v0, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: Get INFO FAILED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    add-int/lit16 v1, v1, -0x2710

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v1

    const/16 v2, 0x70

    if-eq v1, v2, :cond_1

    const-string v1, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: STATUS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    add-int/lit16 v1, v1, -0x2710

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    goto :goto_0

    :cond_1
    const-string v1, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start doScene  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filesize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: NET TIMES: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->o()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    add-int/lit16 v1, v1, -0x2710

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: MSGSVRID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    add-int/lit16 v1, v1, -0x2710

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->f()I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->f()I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    const-string v1, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: fileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x0

    add-int/lit16 v1, v1, -0x2710

    iput v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$MMReqRespDownloadVideo;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$MMReqRespDownloadVideo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_1
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 3

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v0

    if-gt v1, v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: SECURITY CHECK FAILED ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/16 v6, 0x71

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->b(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd Call Stop by Service  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    if-nez v4, :cond_1

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd Get INFO FAILED :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v4

    if-ne v4, v6, :cond_2

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd STATUS PAUSE ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v4

    const/16 v5, 0x70

    if-eq v4, v5, :cond_3

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd STATUS ERR: status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x4

    if-ne p2, v4, :cond_4

    if-eqz p3, :cond_4

    const/16 v4, -0xd

    if-eq p3, v4, :cond_4

    const/4 v4, -0x6

    if-eq p3, v4, :cond_4

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

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

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_6

    :cond_5
    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd SERVER FAILED (SET PAUSE) errtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->f()[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd Recv BUF ZERO length  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->e()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v5

    if-eq v4, v5, :cond_8

    const-string v2, "MicroMsg.NetSceneDownloadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: onGYNetEnd OFFSET ERROR respStartPos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " reqStartPos:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->d()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c()I

    move-result v5

    if-eq v4, v5, :cond_9

    const-string v2, "MicroMsg.NetSceneDownloadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: onGYNetEnd respTotal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " reqTotal:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->e()I

    move-result v5

    if-ge v4, v5, :cond_a

    const-string v2, "MicroMsg.NetSceneDownloadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: onGYNetEnd respTotal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " respStartPos:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->b()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b()I

    move-result v5

    if-eq v4, v5, :cond_b

    const-string v2, "MicroMsg.NetSceneDownloadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: onGYNetEnd respMsgId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " reqMsgId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "MicroMsg.NetSceneDownloadVideo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGYNetEnd respBuf:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->f()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reqStartPos:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " totallen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVideo$Resp;->f()[B

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;I[B)I

    move-result v1

    if-gez v1, :cond_c

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: onGYNetEnd WRITEFILE RET:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v0

    if-le v1, v0, :cond_d

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERR: onGYNetEnd WRITEFILE newOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

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

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v5

    if-nez v5, :cond_f

    const-string v0, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERR:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " getinfo failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :cond_e
    :goto_1
    if-gez v0, :cond_10

    const-string v2, "MicroMsg.NetSceneDownloadVideo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: onGYNetEnd updateAfterRecv Ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " newOffset :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v5, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    const/16 v0, 0x410

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v0

    if-lt v1, v0, :cond_13

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v6, v7, v8, v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const-string v3, "MicroMsg.VideoLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set msg content :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v3

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v6

    invoke-virtual {v3, v6, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(ILcom/tencent/mm/storage/MsgInfo;)V

    const/16 v0, 0xc7

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->b()I

    move-result v0

    or-int/lit16 v0, v0, 0x100

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(I)V

    const-string v0, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "END!!! "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " updateRecv  file:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " newsize:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " total:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " status:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " netTimes:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->o()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    const-string v3, "MicroMsg.VideoLogic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateRecv "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " newsize:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " total:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " status:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto/16 :goto_1

    :cond_10
    if-ne v0, v2, :cond_11

    const-string v0, "MicroMsg.NetSceneDownloadVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!FIN ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->e:Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_11
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->g:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->h:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto/16 :goto_0

    :cond_13
    move v0, v3

    goto/16 :goto_2
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Ljava/lang/String;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa0

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->f:I

    return v0
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->g:Z

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->d:Ljava/lang/String;

    return-object v0
.end method

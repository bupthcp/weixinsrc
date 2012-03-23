.class public Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# static fields
.field private static c:Z

.field private static d:Z

.field private static e:Lcom/tencent/mm/platformtools/MTimerHandler;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->c:Z

    sput-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->d:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg$1;

    invoke-direct {v1}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg$1;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    sput-object v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    return-void
.end method

.method protected static a(Z)V
    .locals 3

    const-string v0, "MicroMsg.NetSceneBatchGetHeadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set writting pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", handlerunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->c:Z

    sget-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->d:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->c:Z

    return v0
.end method

.method static synthetic h()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->d:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 3

    iput-object p2, p0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.NetSceneBatchGetHeadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doScene ReqSize==0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg$MMReqRespBatchGetHeadImg;

    invoke-direct {v2}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg$MMReqRespBatchGetHeadImg;-><init>()V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Req;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Req;->a(Ljava/util/List;)V

    invoke-virtual {p0, p1, v2, p0}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 6

    const/4 v4, 0x4

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Resp;

    const-string v1, "MicroMsg.NetSceneBatchGetHeadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v4, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "MicroMsg.NetSceneBatchGetHeadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errType:"

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

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eq p2, v4, :cond_2

    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    :cond_2
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Req;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Req;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "MicroMsg.NetSceneBatchGetHeadImg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ErrType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GiveUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Resp;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Resp$ImgPair;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Resp$ImgPair;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetHeadImg$Resp$ImgPair;->b()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a(Ljava/lang/String;[B)V

    sget-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->d:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->d:Z

    sget-object v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "doScene failed"

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

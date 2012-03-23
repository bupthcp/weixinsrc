.class public Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:I

.field private e:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;-><init>(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput p1, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    new-instance v0, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;-><init>()V

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->b(I)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/modelbase/IOnSceneEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/network/IReqResp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->c:Lcom/tencent/mm/network/IReqResp;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 5

    const/4 v0, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget v1, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-static {v1}, Lcom/tencent/mm/modeltheme/ThemeLogic;->a(I)Lcom/tencent/mm/modeltheme/ThemeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.NetSceneDownloadTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScene get Theme failed id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->g()I

    move-result v2

    const/16 v3, 0x3ec

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-static {v2}, Lcom/tencent/mm/modeltheme/ThemeLogic;->a(I)Lcom/tencent/mm/modeltheme/ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->g()I

    move-result v3

    const/16 v4, 0x3ed

    if-ne v3, v4, :cond_1

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    :cond_1
    const-string v2, "MicroMsg.NetSceneDownloadTheme"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene get Theme stat failed id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->g()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v2

    if-gtz v2, :cond_3

    const-string v2, "MicroMsg.NetSceneDownloadTheme"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene Theme size err id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v3

    if-lt v2, v3, :cond_4

    iget v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-static {v2}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->f(I)I

    const-string v2, "MicroMsg.NetSceneDownloadTheme"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene Theme off err id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " off:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$MMReqRespDownloadTheme;

    invoke-direct {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$MMReqRespDownloadTheme;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->d(I)V

    const v2, 0xfa00

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->e(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 4

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;

    iget v1, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-static {v1}, Lcom/tencent/mm/modeltheme/ThemeLogic;->a(I)Lcom/tencent/mm/modeltheme/ThemeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.NetSceneDownloadTheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "securityVerificationChecked get Theme failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c()I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->h()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->h()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->i()I

    move-result v0

    const v2, 0xfa00

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->g()I

    move-result v0

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "MicroMsg.NetSceneDownloadTheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "securityVerificationChecked Theme failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->b(I)V

    const-string v0, "MicroMsg.NetSceneDownloadTheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Resp;->b()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Resp;->b()[B

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "MicroMsg.NetSceneDownloadTheme"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd get Theme failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d:I

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->f(I)I

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

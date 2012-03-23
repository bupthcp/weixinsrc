.class public Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput p1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iput v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(II)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene get info null, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->f(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->c(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 5

    const/4 v0, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(II)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.NetSceneDownloadPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScene get Theme failed id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->f()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const-string v2, "MicroMsg.NetSceneDownloadPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene get Theme stat failed id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stat:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->f()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->d()I

    move-result v2

    if-gtz v2, :cond_2

    const-string v2, "MicroMsg.NetSceneDownloadPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene Theme size err id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage$MMReqRespDownloadPackage;

    invoke-direct {v0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage$MMReqRespDownloadPackage;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;

    new-instance v2, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->c()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->b(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->a(Ljava/util/List;)V

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->a(I)V

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->b(I)V

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->c(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 4

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(II)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "securityVerificationChecked get Theme failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->b()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a()I

    move-result v1

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->c()I

    move-result v1

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f:I

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->c()I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/mm/modelpackage/PackageInfo;->d()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->d()I

    move-result v0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {v2}, Lcom/tencent/mm/modelpackage/PackageInfo;->d()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Lcom/tencent/mm/modelpackage/PackageInfo;->f()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "securityVerificationChecked Theme failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

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
    .locals 9

    const/4 v8, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->b(I)V

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

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

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd, errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;->d()I

    move-result v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    if-eq v1, v2, :cond_2

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    const-string v1, "packageType is not consistent"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v7, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;->b()[B

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd get pkgBuf failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v7, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(II)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd info is null, pkgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v7, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;->e()I

    move-result v3

    if-eq v2, v3, :cond_6

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    const-string v1, "onGYNetEnd totalSize is incorrect"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    new-instance v0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v7, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    iget v3, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-static {v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->c(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;->b()[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    const-string v0, "MicroMsg.NetSceneDownloadPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd write file fail, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v7, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f:I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$Resp;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f:I

    iget v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->f:I

    invoke-virtual {v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->d()I

    move-result v4

    if-lt v0, v4, :cond_9

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v5, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->d(II)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/tencent/mm/platformtools/Util;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_8

    const-string v1, "MicroMsg.NetSceneDownloadPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unzip fail, ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", zipFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unzipPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "unzip fail"

    invoke-interface {v0, v7, v8, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->f(I)V

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelpackage/PackageInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v8, v8, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v7, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/NetSceneDownloadPackage;->d:I

    return v0
.end method

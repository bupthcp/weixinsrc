.class public Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:I

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput p1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->e:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;)Lcom/tencent/mm/modelpackage/PackageInfo;
    .locals 2

    new-instance v0, Lcom/tencent/mm/modelpackage/PackageInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelpackage/PackageInfo;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->d(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->b(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->f(I)V

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/PackageInfo;->e(I)V

    return-object v0
.end method

.method private a(Lcom/tencent/mm/protocal/MMGetPackageList$Resp;)V
    .locals 7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a()I

    move-result v4

    iget v5, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(II)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/PackageInfo;->c()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->b()I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a()I

    move-result v5

    iget v6, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-static {v5, v6}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->c(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a(Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modelpackage/PackageInfo;->a(I)V

    if-nez v3, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->e()[B

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->e()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a()I

    move-result v3

    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-static {v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->e()[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a()I

    move-result v3

    iget v4, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(II)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a(Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;)Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelpackage/PackageInfo;->a(I)V

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->e()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->e()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->e:Ljava/util/List;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->e()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->b(Lcom/tencent/mm/modelpackage/PackageInfo;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 5

    iput-object p2, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList$MMReqRespGetPackageList;

    invoke-direct {v0}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList$MMReqRespGetPackageList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->d(I)[Lcom/tencent/mm/modelpackage/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;-><init>()V

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/tencent/mm/modelpackage/PackageInfo;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->a(I)V

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/tencent/mm/modelpackage/PackageInfo;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMDownloadPackage$MMPackage;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->c()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->a(I)V

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->b(I)V

    const-string v0, "MicroMsg.NetSceneGetPackageList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd id:"

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

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->g()I

    move-result v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    if-eq v1, v2, :cond_2

    const-string v0, "MicroMsg.NetSceneGetPackageList"

    const-string v1, "packageType is not consistent"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v6, v4, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_2
    const-string v1, "MicroMsg.NetSceneGetPackageList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    if-ne v1, v5, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a(Ljava/util/List;)V

    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a(Lcom/tencent/mm/protocal/MMGetPackageList$Resp;)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->c(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->e()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->f()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v6, v4, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->d:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

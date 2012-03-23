.class public Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 5

    iput-object p2, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList$MMReqRespGetThemeList;

    invoke-direct {v0}, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList$MMReqRespGetThemeList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetThemeList$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    new-instance v4, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a(I)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modeltheme/ThemeInfo;->d()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetThemeList$Req;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->b(I)V

    const-string v0, "MicroMsg.NetSceneGetThemeList"

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

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetThemeList$Resp;

    move v2, v3

    :goto_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetThemeList$Resp;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetThemeList$Resp;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/modeltheme/ThemeLogic;->a(I)Lcom/tencent/mm/modeltheme/ThemeInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c()I

    move-result v5

    invoke-virtual {v4}, Lcom/tencent/mm/modeltheme/ThemeInfo;->d()I

    move-result v6

    if-eq v5, v6, :cond_3

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(Ljava/lang/String;)I

    new-instance v5, Lcom/tencent/mm/modeltheme/ThemeInfo;

    invoke-direct {v5}, Lcom/tencent/mm/modeltheme/ThemeInfo;-><init>()V

    invoke-virtual {v5, v3}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfo;->b(Ljava/lang/String;)V

    const/16 v6, 0x3ee

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfo;->b(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfo;->d(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c(I)V

    invoke-virtual {v5, v7}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f()[B

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f()[B

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->f()[B

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(ILjava/lang/String;[B)I

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetThemeList$Resp;->d()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    const-string v2, "doScene failed"

    invoke-interface {v0, v1, v7, v2, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneGetThemeList;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

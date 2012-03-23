.class Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/ThemeLogic;->a(I)Lcom/tencent/mm/modeltheme/ThemeInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "MicroMsg.NetSceneDownloadTheme"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTimerExpired get Theme failed id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v3}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->b(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v0

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-interface {v0, v7, v6, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->c(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/network/IReqResp;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Resp;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v4}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Resp;->b()[B

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->a(ILjava/lang/String;[B)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->f(I)I

    const-string v0, "MicroMsg.NetSceneDownloadTheme"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTimerExpired write file ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->c()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$Resp;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f()I

    move-result v0

    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->e()I

    move-result v3

    if-lt v0, v3, :cond_4

    const/16 v0, 0x3eb

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->f(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/modeltheme/ThemeInfo;->b()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->a(I)V

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->b(Lcom/tencent/mm/modeltheme/ThemeInfo;)Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->b(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v0

    const-string v2, ""

    iget-object v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-interface {v0, v1, v1, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    iget-object v2, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v2}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->d(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/network/IDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v3}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->b(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-static {v0}, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;->b(Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v0

    const-string v2, "doScene failed"

    iget-object v3, p0, Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme$1;->a:Lcom/tencent/mm/modeltheme/NetSceneDownloadTheme;

    invoke-interface {v0, v7, v6, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

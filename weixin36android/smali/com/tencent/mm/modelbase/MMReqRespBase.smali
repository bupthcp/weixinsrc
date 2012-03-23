.class public abstract Lcom/tencent/mm/modelbase/MMReqRespBase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/IReqResp;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMBase$Req;

.field private b:Lcom/tencent/mm/modelbase/NetSceneBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/tencent/mm/protocal/MMBase$Req;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/protocal/MMBase$Req;->q(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mm/protocal/ConstantsProtocal;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/protocal/MMBase$Req;->p(Ljava/lang/String;)V

    sget v1, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/protocal/MMBase$Req;->j(I)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/MMBase$Req;->i(I)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase;)Lcom/tencent/mm/network/IReqResp;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->b:Lcom/tencent/mm/modelbase/NetSceneBase;

    return-object p0
.end method

.method public final a(Lcom/tencent/mm/network/IAccInfo;)Lcom/tencent/mm/network/IReqResp;
    .locals 6

    const/4 v5, 0x2

    const-string v0, "MicroMsg.MMReqRespBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build rr for autoauth, accInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "acc info should not be null"

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/tencent/mm/modelsimple/NetSceneAuth$MMReqRespAuth;

    invoke-direct {v2}, Lcom/tencent/mm/modelsimple/NetSceneAuth$MMReqRespAuth;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/mm/modelsimple/NetSceneAuth$MMReqRespAuth;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Req;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/MMReqRespBase;->a(Lcom/tencent/mm/protocal/MMBase$Req;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/protocal/MMAuth$Req;->k(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-interface {p1}, Lcom/tencent/mm/network/IAccInfo;->g()I

    move-result v1

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v4

    if-eq v1, v4, :cond_0

    const-string v1, "MicroMsg.MMReqRespBase"

    const-string v4, "different uin while building auth rr"

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->d(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->n(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v3, v0}, Lcom/tencent/mm/network/IAccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.MMReqRespBase"

    const-string v1, "getAuthReqResp ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected abstract a()Lcom/tencent/mm/protocal/MMBase$Req;
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->b:Lcom/tencent/mm/modelbase/NetSceneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->b:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->k_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/SceneInfo;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelbase/SceneInfo;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;->a()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    iget-object v0, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/MMReqRespBase;->a(Lcom/tencent/mm/protocal/MMBase$Req;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/MMReqRespBase;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    return-object v0
.end method

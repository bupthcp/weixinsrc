.class public Lcom/tencent/mm/modelsimple/NetSceneAuth;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneAuth$MMReqRespAuth;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneAuth$MMReqRespAuth;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Req;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->i(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMAuth$Req;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMAuth$Req;->h(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMAuth$Req;->g(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->m(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->k(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMAuth$Req;->n(Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", psw2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneAuth;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneAuth;->b(I)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    const/16 v0, -0x10

    if-eq p3, v0, :cond_2

    const/16 v0, -0x11

    if-eq p3, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_2
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Resp;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v3, 0x13

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->D()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/model/AccountStorage;->b(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->s()I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_1
    const/4 v5, 0x2

    invoke-virtual {v3, v4, v1, v5}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;ZI)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->j()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/algorithm/UIN;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->j()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@qqim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;I)V

    :cond_3
    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->o()[B

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

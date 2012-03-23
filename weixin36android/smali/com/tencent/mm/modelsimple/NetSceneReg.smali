.class public Lcom/tencent/mm/modelsimple/NetSceneReg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->k:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->l:Z

    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneReg: username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nickname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneReg: bindUin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bindEmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bindMobile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.NetSceneReg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneReg: regMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ticket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p10, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->j:I

    const/4 v0, 0x2

    if-eq v0, p10, :cond_2

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneReg$MMReqRespReg2;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneReg$MMReqRespReg2;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMReg2$Req;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg2$Req;->i(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMReg2$Req;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg2$Req;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMReg2$Req;->i(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMReg2$Req;->b(I)V

    invoke-virtual {v0, p5}, Lcom/tencent/mm/protocal/MMReg2$Req;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/tencent/mm/protocal/MMReg2$Req;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p9}, Lcom/tencent/mm/protocal/MMReg2$Req;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p10}, Lcom/tencent/mm/protocal/MMReg2$Req;->c(I)V

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

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg2$Req;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg2$Req;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg2$Req;->a(I)V

    :goto_0
    iput-object p1, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->h:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->i:I

    if-eqz p9, :cond_0

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->k:Z

    return-void

    :cond_2
    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneReg$MMReqRespReg;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneReg$MMReqRespReg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMReg$Req;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->i(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMReg$Req;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->b(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMReg$Req;->i(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMReg$Req;->b(I)V

    invoke-virtual {v0, p5}, Lcom/tencent/mm/protocal/MMReg$Req;->j(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/tencent/mm/protocal/MMReg$Req;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/tencent/mm/protocal/MMReg$Req;->g(Ljava/lang/String;)V

    invoke-virtual {v0, p8}, Lcom/tencent/mm/protocal/MMReg$Req;->h(Ljava/lang/String;)V

    invoke-virtual {v0, p9}, Lcom/tencent/mm/protocal/MMReg$Req;->f(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->c(I)V

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

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->l(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->m(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Req;->a(I)V

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneReg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/16 v8, 0x10

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneReg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v0

    if-ne v0, v6, :cond_5

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMReg$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->e()I

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->k:Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x13

    iget-object v5, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/Util;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg$Resp;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg$Resp;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg$Resp;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg$Resp;->g(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->i:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg$Resp;->d(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg$Resp;->e(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->j()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/algorithm/UIN;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->j()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@qqim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;I)V

    :cond_2
    const-string v3, "MicroMsg.NetSceneReg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp return flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->E()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->E()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->l:Z

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg$Resp;->e()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMReg2$Resp;

    const-string v3, "MicroMsg.NetSceneReg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mobile:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nick:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->e()I

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->k:Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->e:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x13

    iget-object v5, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->e:Ljava/lang/String;

    invoke-static {v5}, Lcom/tencent/mm/platformtools/Util;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->d:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->j:I

    if-eq v3, v2, :cond_6

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg2$Resp;->c(Ljava/lang/String;)V

    :cond_6
    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg2$Resp;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg2$Resp;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg2$Resp;->g(Ljava/lang/String;)V

    iget v3, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->i:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMReg2$Resp;->d(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMReg2$Resp;->e(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->j()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@qqim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;I)V

    :cond_7
    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->e()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    const-string v3, "MicroMsg.NetSceneReg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp return flag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->E()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMReg2$Resp;->E()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    :goto_2
    iput-boolean v2, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->l:Z

    goto/16 :goto_1

    :cond_8
    move v2, v1

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelsimple/NetSceneReg;->l:Z

    return v0
.end method

.class public Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private final a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Lcom/tencent/mm/algorithm/CnToSpell;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->a(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b(I)V

    new-instance v0, Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CnToSpell;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->a()Ljava/util/Map;

    move-result-object v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;

    const-string v3, "MicroMsg.NetSceneGetQQGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wei:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " md5:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->a()I

    move-result v3

    if-gez v3, :cond_1

    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    const-string v0, "MicroMsg.NetSceneGetQQGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Resp Group Info index:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_1
    new-instance v3, Lcom/tencent/mm/modelfriend/QQGroup;

    invoke-direct {v3}, Lcom/tencent/mm/modelfriend/QQGroup;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/modelfriend/QQGroup;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/modelfriend/QQGroup;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/modelfriend/QQGroup;->c(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->c()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/modelfriend/QQGroup;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelfriend/QQGroup;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->c()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/QQGroup;

    :goto_3
    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelfriend/QQGroup;->e(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelfriend/QQGroup;->f(I)V

    invoke-virtual {v3, v9}, Lcom/tencent/mm/modelfriend/QQGroup;->g(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->a(Lcom/tencent/mm/modelfriend/QQGroup;)Z

    move-result v0

    const-string v5, "MicroMsg.NetSceneGetQQGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insert name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0, v8}, Lcom/tencent/mm/modelfriend/QQGroup;->g(I)V

    const-string v5, "MicroMsg.NetSceneGetQQGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelfriend/QQGroup;->f(I)V

    invoke-virtual {v3, v9}, Lcom/tencent/mm/modelfriend/QQGroup;->g(I)V

    invoke-virtual {v3, v8}, Lcom/tencent/mm/modelfriend/QQGroup;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->b(Lcom/tencent/mm/modelfriend/QQGroup;)Z

    move-result v0

    const-string v5, "MicroMsg.NetSceneGetQQGroup"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tencent/mm/modelfriend/QQGroup;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ret:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/QQGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->e()I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->b(I)Z

    move-result v2

    const-string v3, "MicroMsg.NetSceneGetQQGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelfriend/QQListStorage;->a(I)Z

    move-result v2

    const-string v3, "MicroMsg.NetSceneGetQQGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delete QQList name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ret:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    return-void

    :cond_7
    move-object v0, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 3

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->a(I)Lcom/tencent/mm/modelfriend/QQGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->e()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.NetSceneGetQQGroup"

    const-string v1, "Err group not exist or group no need update."

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 17

    invoke-virtual/range {p0 .. p1}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->b(I)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const-string v4, "MicroMsg.NetSceneGetQQGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGYNetEnd  errType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_1
    const-string v4, "MicroMsg.NetSceneGetQQGroup"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGYNetEnd  errType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v4

    check-cast v4, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v5

    check-cast v5, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a(Ljava/util/List;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/tencent/mm/modelfriend/QQListStorage;->a(I)Z

    move-result v6

    const-string v7, "MicroMsg.NetSceneGetQQGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delete QQList id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->c()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    invoke-virtual {v5}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v7, v6, :cond_8

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->c()I

    move-result v12

    const-string v8, "MicroMsg.NetSceneGetQQGroup"

    const-string v13, "friend"

    invoke-static {v8, v13}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->l()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v8, v13, v15

    if-gez v8, :cond_3

    const/4 v6, 0x0

    :goto_3
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;

    new-instance v8, Lcom/tencent/mm/modelfriend/FriendExt;

    invoke-direct {v8}, Lcom/tencent/mm/modelfriend/FriendExt;-><init>()V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->b()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/FriendExt;->a(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->c()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/FriendExt;->b(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->f()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/FriendExt;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->e()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/FriendExt;->c(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->d()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/FriendExt;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/tencent/mm/modelfriend/FriendExt;->a(Ljava/lang/String;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v8}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Z)V

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto/16 :goto_2

    :cond_3
    new-instance v8, Lcom/tencent/mm/modelfriend/QQList;

    invoke-direct {v8}, Lcom/tencent/mm/modelfriend/QQList;-><init>()V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->l()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lcom/tencent/mm/modelfriend/QQList;->a(J)V

    invoke-virtual {v8}, Lcom/tencent/mm/modelfriend/QQList;->c()J

    move-result-wide v13

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(JI)Z

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->b(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->g()I

    move-result v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->a(I)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->g()I

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v12

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v12}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, 0x2

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->a(I)V

    :cond_6
    :goto_4
    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->b(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->h()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->h(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tencent/mm/algorithm/CnToSpell;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->i(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tencent/mm/algorithm/CnToSpell;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->j(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tencent/mm/algorithm/CnToSpell;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->j()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tencent/mm/algorithm/CnToSpell;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->i()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tencent/mm/algorithm/CnToSpell;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->f(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lcom/tencent/mm/algorithm/CnToSpell;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/tencent/mm/modelfriend/QQList;->g(Ljava/lang/String;)V

    const-string v6, "MicroMsg.NetSceneGetQQGroup"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "QQ Friend nickname: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/tencent/mm/modelfriend/QQList;->g()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "  remark: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/tencent/mm/modelfriend/QQList;->h()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    goto/16 :goto_3

    :cond_7
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/tencent/mm/modelfriend/QQList;->a(I)V

    goto/16 :goto_4

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->c()I

    invoke-virtual {v5, v9}, Lcom/tencent/mm/modelfriend/QQListStorage;->a(Ljava/util/List;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->E()Lcom/tencent/mm/modelfriend/FriendExtStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/tencent/mm/modelfriend/FriendExtStorage;->a(Ljava/util/List;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Ljava/util/List;)Z

    new-instance v5, Lcom/tencent/mm/modelfriend/QQGroup;

    invoke-direct {v5}, Lcom/tencent/mm/modelfriend/QQGroup;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->c()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/tencent/mm/modelfriend/QQGroup;->b(I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/tencent/mm/modelfriend/QQGroup;->g(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v6

    long-to-int v4, v6

    invoke-virtual {v5, v4}, Lcom/tencent/mm/modelfriend/QQGroup;->f(I)V

    const/16 v4, 0x30

    invoke-virtual {v5, v4}, Lcom/tencent/mm/modelfriend/QQGroup;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->b(Lcom/tencent/mm/modelfriend/QQGroup;)Z

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b()I

    move-result v0

    return v0
.end method

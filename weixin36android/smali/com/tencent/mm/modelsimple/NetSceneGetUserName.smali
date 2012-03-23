.class public Lcom/tencent/mm/modelsimple/NetSceneGetUserName;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetUserName$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMGetUserName$Req;->a(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMGetUserName$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMGetUserName$Req;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMGetUserName$Req;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 2

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetUserName$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUserName$Resp;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUserName$Resp;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->e:Ljava/lang/String;

    return-object v0
.end method

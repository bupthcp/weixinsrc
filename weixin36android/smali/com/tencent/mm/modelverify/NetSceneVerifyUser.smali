.class public Lcom/tencent/mm/modelverify/NetSceneVerifyUser;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelverify/NetSceneVerifyUser$MMReqRespVerifyUser;

    invoke-direct {v0}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser$MMReqRespVerifyUser;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->a(I)V

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->a(Ljava/util/List;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->b(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

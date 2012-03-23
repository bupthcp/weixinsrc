.class public Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact$MMReqRespGetContact;

    invoke-direct {v0}, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact$MMReqRespGetContact;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetContact$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMGetContact$Req;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method protected final c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final d()Lcom/tencent/mm/protocal/MMGetContact$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetContact$Resp;

    return-object v0
.end method

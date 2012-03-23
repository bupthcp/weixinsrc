.class public Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite$MMReqRespVoipCancelInvite;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite$MMReqRespVoipCancelInvite;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMVoipCancelInvite$Req;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMVoipCancelInvite$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteReq;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteReq;->a(I)Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteReq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipCancelInvite;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

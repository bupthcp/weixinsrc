.class public Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;->c()Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;->a(I)Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(I)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {p2}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v3, p2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;->a(Lcom/tencent/mm/protocal/protobuf/VoipRelayData;)Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(I)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {p3}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;->b(Lcom/tencent/mm/protocal/protobuf/VoipRelayData;)Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

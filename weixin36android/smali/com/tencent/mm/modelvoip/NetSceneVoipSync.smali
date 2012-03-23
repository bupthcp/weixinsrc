.class public Lcom/tencent/mm/modelvoip/NetSceneVoipSync;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>(ILcom/tencent/mm/protocal/protobuf/CmdList;[B)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMVoipSync$Req;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMVoipSync$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;->a(I)Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMVoipSync$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;->a(Lcom/tencent/mm/protocal/protobuf/CmdList;)Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMVoipSync$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {p3}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMVoipSync$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/VoipSyncReq;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public final f()Lcom/tencent/mm/protocal/MMVoipSync$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMVoipSync$Resp;

    return-object v0
.end method

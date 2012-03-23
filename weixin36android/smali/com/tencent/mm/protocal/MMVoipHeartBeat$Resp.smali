.class public Lcom/tencent/mm/protocal/MMVoipHeartBeat$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;


# instance fields
.field private a:Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVoipHeartBeat$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;->a([B)Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVoipHeartBeat$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVoipHeartBeat$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipHeartBeatResp;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->c()I

    move-result v0

    return v0
.end method

.method public c_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

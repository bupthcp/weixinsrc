.class public Lcom/tencent/mm/protocal/MMVoipCancelInvite$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;


# instance fields
.field private a:Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVoipCancelInvite$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;->a([B)Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVoipCancelInvite$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVoipCancelInvite$Resp;->a:Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipCancelInviteResp;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->c()I

    move-result v0

    return v0
.end method

.method public c_()I
    .locals 1

    const v0, 0x3b9aca40

    return v0
.end method

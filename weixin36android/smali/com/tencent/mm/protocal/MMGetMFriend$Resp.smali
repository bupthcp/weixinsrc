.class public Lcom/tencent/mm/protocal/MMGetMFriend$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;


# instance fields
.field public a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->a([B)Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/protocal/MMBase;->a(Lcom/tencent/mm/protocal/MMBase$Resp;Lcom/tencent/mm/protocal/protobuf/BaseResponse;)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

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

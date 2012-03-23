.class public Lcom/tencent/mm/protocal/MMShakeGet$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;


# instance fields
.field public a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    return-void
.end method


# virtual methods
.method public a([B)I
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->a([B)Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->c()I

    move-result v0

    return v0
.end method

.method public c_()I
    .locals 1

    const v0, 0x3b9aca39

    return v0
.end method

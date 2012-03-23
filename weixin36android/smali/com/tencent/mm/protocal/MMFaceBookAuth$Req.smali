.class public Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;


# instance fields
.field public a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xb7

    return v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    invoke-static {p0}, Lcom/tencent/mm/protocal/MMBase;->a(Lcom/tencent/mm/protocal/MMBase$Req;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;->a(Lcom/tencent/mm/protocal/protobuf/BaseRequest;)Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;->b()[B

    move-result-object v0

    return-object v0
.end method

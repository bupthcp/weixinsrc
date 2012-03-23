.class public Lcom/tencent/mm/protocal/MMBase;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/protocal/MMBase$Req;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;
    .locals 3

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMBase$Req;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMBase$Req;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protobuf/ByteString;->a(I)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->b(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMBase$Req;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protobuf/ByteString;->a(I)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->c(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMBase$Req;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMBase$Req;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protobuf/ByteString;->a(I)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMBase$Req;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/protocal/MMBase$Resp;Lcom/tencent/mm/protocal/protobuf/BaseResponse;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/protocal/MMBase$Resp;->q(Ljava/lang/String;)V

    return-void
.end method

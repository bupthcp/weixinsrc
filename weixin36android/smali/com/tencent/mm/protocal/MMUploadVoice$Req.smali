.class public Lcom/tencent/mm/protocal/MMUploadVoice$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;


# instance fields
.field public a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x7f

    return v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-static {p0}, Lcom/tencent/mm/protocal/MMBase;->a(Lcom/tencent/mm/protocal/MMBase$Req;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->a(Lcom/tencent/mm/protocal/protobuf/BaseRequest;)Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadVoiceRequest;->b()[B

    move-result-object v0

    return-object v0
.end method

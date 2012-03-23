.class public Lcom/tencent/mm/protocal/MMVoipAnswer$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;


# instance fields
.field public a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xac

    return v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-static {p0}, Lcom/tencent/mm/protocal/MMBase;->a(Lcom/tencent/mm/protocal/MMBase$Req;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;->a(Lcom/tencent/mm/protocal/protobuf/BaseRequest;)Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;->a:Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/VoipAnswerReq;->b()[B

    move-result-object v0

    return-object v0
.end method

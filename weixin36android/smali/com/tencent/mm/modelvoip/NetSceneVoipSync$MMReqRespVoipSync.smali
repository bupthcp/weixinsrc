.class public Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMVoipSync$Req;

.field private b:Lcom/tencent/mm/protocal/MMVoipSync$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMVoipSync$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMVoipSync$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;->a:Lcom/tencent/mm/protocal/MMVoipSync$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMVoipSync$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMVoipSync$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;->b:Lcom/tencent/mm/protocal/MMVoipSync$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;->a:Lcom/tencent/mm/protocal/MMVoipSync$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipSync$MMReqRespVoipSync;->b:Lcom/tencent/mm/protocal/MMVoipSync$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/voipsync"

    return-object v0
.end method

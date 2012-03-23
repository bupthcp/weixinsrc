.class public Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMVoipAnswer$Req;

.field private b:Lcom/tencent/mm/protocal/MMVoipAnswer$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMVoipAnswer$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;->a:Lcom/tencent/mm/protocal/MMVoipAnswer$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMVoipAnswer$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMVoipAnswer$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;->b:Lcom/tencent/mm/protocal/MMVoipAnswer$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;->a:Lcom/tencent/mm/protocal/MMVoipAnswer$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/NetSceneVoipAnswer$MMReqRespMMVoipAnswer;->b:Lcom/tencent/mm/protocal/MMVoipAnswer$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/voipanswer"

    return-object v0
.end method

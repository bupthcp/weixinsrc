.class public Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MMReqRespLbsFind;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMLbsFind$Req;

.field private final b:Lcom/tencent/mm/protocal/MMLbsFind$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMLbsFind$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MMReqRespLbsFind;->a:Lcom/tencent/mm/protocal/MMLbsFind$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMLbsFind$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMLbsFind$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MMReqRespLbsFind;->b:Lcom/tencent/mm/protocal/MMLbsFind$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MMReqRespLbsFind;->a:Lcom/tencent/mm/protocal/MMLbsFind$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$MMReqRespLbsFind;->b:Lcom/tencent/mm/protocal/MMLbsFind$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x2b

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/lbsfind"

    return-object v0
.end method

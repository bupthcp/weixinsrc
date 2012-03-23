.class public Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo$MMReqRespGetUpdateInfo;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMGetUpdateInfo$Req;

.field private final b:Lcom/tencent/mm/protocal/MMGetUpdateInfo$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGetUpdateInfo$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetUpdateInfo$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo$MMReqRespGetUpdateInfo;->a:Lcom/tencent/mm/protocal/MMGetUpdateInfo$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGetUpdateInfo$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetUpdateInfo$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo$MMReqRespGetUpdateInfo;->b:Lcom/tencent/mm/protocal/MMGetUpdateInfo$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo$MMReqRespGetUpdateInfo;->a:Lcom/tencent/mm/protocal/MMGetUpdateInfo$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUpdateInfo$MMReqRespGetUpdateInfo;->b:Lcom/tencent/mm/protocal/MMGetUpdateInfo$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/getupdateinfo"

    return-object v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.class public Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMGetUserName$Req;

.field private final b:Lcom/tencent/mm/protocal/MMGetUserName$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGetUserName$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetUserName$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;->a:Lcom/tencent/mm/protocal/MMGetUserName$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGetUserName$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetUserName$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;->b:Lcom/tencent/mm/protocal/MMGetUserName$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;->a:Lcom/tencent/mm/protocal/MMGetUserName$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName$MMReqRespGetUserName;->b:Lcom/tencent/mm/protocal/MMGetUserName$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x19

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/getusername"

    return-object v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

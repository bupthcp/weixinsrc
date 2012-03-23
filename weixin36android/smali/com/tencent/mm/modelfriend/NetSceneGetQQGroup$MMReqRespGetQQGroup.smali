.class public Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

.field private final b:Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;->a:Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;->b:Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;->a:Lcom/tencent/mm/protocal/MMGetQQGroup$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetQQGroup$MMReqRespGetQQGroup;->b:Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x1f

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/getqqgroup"

    return-object v0
.end method

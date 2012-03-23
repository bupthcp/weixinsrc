.class public Lcom/tencent/mm/modelsimple/NetSceneGetVerifyImg$MMReqRespGetVerifyImg;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;

.field private final b:Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetVerifyImg$MMReqRespGetVerifyImg;->a:Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetVerifyImg$MMReqRespGetVerifyImg;->b:Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetVerifyImg$MMReqRespGetVerifyImg;->a:Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGetVerifyImg$MMReqRespGetVerifyImg;->b:Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/getverifyimg"

    return-object v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

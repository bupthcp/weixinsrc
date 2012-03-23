.class public Lcom/tencent/mm/modelsimple/NetSceneSearchContact$MMReqRespSearchContact;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMSearchContact$Req;

.field private final b:Lcom/tencent/mm/protocal/MMSearchContact$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMSearchContact$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSearchContact$MMReqRespSearchContact;->a:Lcom/tencent/mm/protocal/MMSearchContact$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMSearchContact$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSearchContact$MMReqRespSearchContact;->b:Lcom/tencent/mm/protocal/MMSearchContact$Resp;

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSearchContact$MMReqRespSearchContact;->a:Lcom/tencent/mm/protocal/MMSearchContact$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSearchContact$MMReqRespSearchContact;->b:Lcom/tencent/mm/protocal/MMSearchContact$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/searchcontact"

    return-object v0
.end method

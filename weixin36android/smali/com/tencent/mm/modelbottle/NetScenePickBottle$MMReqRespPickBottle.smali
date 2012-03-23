.class public Lcom/tencent/mm/modelbottle/NetScenePickBottle$MMReqRespPickBottle;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMPickBottle$Req;

.field private b:Lcom/tencent/mm/protocal/MMPickBottle$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMPickBottle$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMPickBottle$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetScenePickBottle$MMReqRespPickBottle;->a:Lcom/tencent/mm/protocal/MMPickBottle$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMPickBottle$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetScenePickBottle$MMReqRespPickBottle;->b:Lcom/tencent/mm/protocal/MMPickBottle$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetScenePickBottle$MMReqRespPickBottle;->a:Lcom/tencent/mm/protocal/MMPickBottle$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetScenePickBottle$MMReqRespPickBottle;->b:Lcom/tencent/mm/protocal/MMPickBottle$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x31

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/pickbottle"

    return-object v0
.end method

.class public Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMGetBottleCount$Req;

.field private b:Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGetBottleCount$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;->a:Lcom/tencent/mm/protocal/MMGetBottleCount$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;->b:Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;->a:Lcom/tencent/mm/protocal/MMGetBottleCount$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount$MMReqRespGetBottleCount;->b:Lcom/tencent/mm/protocal/MMGetBottleCount$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x2f

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/getbottlecount"

    return-object v0
.end method

.class public Lcom/tencent/mm/modelsimple/NetSceneAddGroupCard$MMReqRespGroupCard;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMGroupCard$Req;

.field private final b:Lcom/tencent/mm/protocal/MMGroupCard$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGroupCard$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGroupCard$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddGroupCard$MMReqRespGroupCard;->a:Lcom/tencent/mm/protocal/MMGroupCard$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGroupCard$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGroupCard$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddGroupCard$MMReqRespGroupCard;->b:Lcom/tencent/mm/protocal/MMGroupCard$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddGroupCard$MMReqRespGroupCard;->a:Lcom/tencent/mm/protocal/MMGroupCard$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddGroupCard$MMReqRespGroupCard;->b:Lcom/tencent/mm/protocal/MMGroupCard$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/addgroupcard"

    return-object v0
.end method

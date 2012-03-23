.class public Lcom/tencent/mm/modelsimple/NetSceneCollectChatRoom$MMReqRespCollectChatRoom;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMCollectChatRoom$Req;

.field private final b:Lcom/tencent/mm/protocal/MMCollectChatRoom$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMCollectChatRoom$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMCollectChatRoom$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCollectChatRoom$MMReqRespCollectChatRoom;->a:Lcom/tencent/mm/protocal/MMCollectChatRoom$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMCollectChatRoom$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMCollectChatRoom$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCollectChatRoom$MMReqRespCollectChatRoom;->b:Lcom/tencent/mm/protocal/MMCollectChatRoom$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCollectChatRoom$MMReqRespCollectChatRoom;->a:Lcom/tencent/mm/protocal/MMCollectChatRoom$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCollectChatRoom$MMReqRespCollectChatRoom;->b:Lcom/tencent/mm/protocal/MMCollectChatRoom$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x45

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/collectchatroom"

    return-object v0
.end method

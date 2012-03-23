.class public Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;

.field private final b:Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;->a:Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;->b:Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;->a:Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;->b:Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/batchgetcontactprofile"

    return-object v0
.end method

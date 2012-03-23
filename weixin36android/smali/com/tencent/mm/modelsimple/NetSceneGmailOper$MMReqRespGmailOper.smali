.class public Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMGmailOper$Req;

.field private final b:Lcom/tencent/mm/protocal/MMGmailOper$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMGmailOper$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGmailOper$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;->a:Lcom/tencent/mm/protocal/MMGmailOper$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMGmailOper$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMGmailOper$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;->b:Lcom/tencent/mm/protocal/MMGmailOper$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;->a:Lcom/tencent/mm/protocal/MMGmailOper$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;->b:Lcom/tencent/mm/protocal/MMGmailOper$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/gmailoper"

    return-object v0
.end method

.class public Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMUploadVoice$Req;

.field private b:Lcom/tencent/mm/protocal/MMUploadVoice$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMUploadVoice$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMUploadVoice$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;->a:Lcom/tencent/mm/protocal/MMUploadVoice$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMUploadVoice$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;->b:Lcom/tencent/mm/protocal/MMUploadVoice$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;->a:Lcom/tencent/mm/protocal/MMUploadVoice$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice$MMReqRespUploadVoice;->b:Lcom/tencent/mm/protocal/MMUploadVoice$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x15

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/uploadvoice"

    return-object v0
.end method

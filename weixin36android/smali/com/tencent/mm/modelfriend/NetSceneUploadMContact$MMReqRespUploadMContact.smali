.class public Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMUploadMContact$Req;

.field private final b:Lcom/tencent/mm/protocal/MMUploadMContact$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMUploadMContact$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;->a:Lcom/tencent/mm/protocal/MMUploadMContact$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMUploadMContact$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;->b:Lcom/tencent/mm/protocal/MMUploadMContact$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;->a:Lcom/tencent/mm/protocal/MMUploadMContact$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;->b:Lcom/tencent/mm/protocal/MMUploadMContact$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/uploadmcontact"

    return-object v0
.end method

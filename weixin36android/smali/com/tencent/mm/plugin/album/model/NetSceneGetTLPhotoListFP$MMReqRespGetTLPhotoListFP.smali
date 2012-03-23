.class public Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListFP$MMReqRespGetTLPhotoListFP;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Req;

.field private b:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Req;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListFP$MMReqRespGetTLPhotoListFP;->a:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Req;

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListFP$MMReqRespGetTLPhotoListFP;->b:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListFP$MMReqRespGetTLPhotoListFP;->a:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListFP$MMReqRespGetTLPhotoListFP;->b:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x53

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/GetTLPhotoListFP"

    return-object v0
.end method

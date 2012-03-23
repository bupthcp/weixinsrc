.class public Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP$MMReqRespGetTLPhotoListNP;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Req;

.field private b:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Req;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP$MMReqRespGetTLPhotoListNP;->a:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Req;

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP$MMReqRespGetTLPhotoListNP;->b:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP$MMReqRespGetTLPhotoListNP;->a:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP$MMReqRespGetTLPhotoListNP;->b:Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/GetTLPhotoListNP"

    return-object v0
.end method

.class public Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;

.field private b:Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;->a:Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;->b:Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;->a:Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;->b:Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/GetAlbumPhotoListFP"

    return-object v0
.end method

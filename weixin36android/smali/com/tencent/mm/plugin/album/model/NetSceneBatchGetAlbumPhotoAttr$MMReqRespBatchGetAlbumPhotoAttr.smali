.class public Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhotoAttr$MMReqRespBatchGetAlbumPhotoAttr;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Req;

.field private b:Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Req;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhotoAttr$MMReqRespBatchGetAlbumPhotoAttr;->a:Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Req;

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhotoAttr$MMReqRespBatchGetAlbumPhotoAttr;->b:Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhotoAttr$MMReqRespBatchGetAlbumPhotoAttr;->a:Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhotoAttr$MMReqRespBatchGetAlbumPhotoAttr;->b:Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhotoAttr$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x4e

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/BatchGetAlbumPhotoAttr"

    return-object v0
.end method

.class public Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

.field private e:J

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->f:I

    const-string v0, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto$MMReqRespMMUploadAlbumPhoto;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto$MMReqRespMMUploadAlbumPhoto;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->c(Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    iget-wide v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    const-string v0, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert to img storage failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a:Lcom/tencent/mm/network/IReqResp;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(J)Lcom/tencent/mm/plugin/album/model/AlbumImg;

    move-result-object v1

    const-string v2, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->d()Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->c()Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->e()Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    const-string v2, "foreverzeus"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v0

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->i()I

    move-result v1

    invoke-interface {p2, v0, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 7

    const/4 v2, -0x1

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-wide v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadAlbumPhoto"

    const-string v1, "doScene"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v1

    iget-wide v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(J)Lcom/tencent/mm/plugin/album/model/AlbumImg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->i()I

    move-result v1

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->f:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->f:I

    :cond_1
    const-string v4, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buf to read  path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataLen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v4, v1

    if-gtz v4, :cond_3

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    const-string v3, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upLoad  buf Length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoRequest;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    const-string v1, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->b(I)V

    const-string v0, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd errtype:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " errcode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd failed errtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errcode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->b(J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGYNetEnd dataLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startpos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pcId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " clientID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v1

    iget-wide v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(J)Lcom/tencent/mm/plugin/album/model/AlbumImg;

    move-result-object v4

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d()I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d()I

    move-result v1

    iget-object v5, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e()I

    move-result v5

    if-le v1, v5, :cond_4

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x4

    const/4 v2, -0x2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->b(J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->d()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->a(J)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b(I)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v1

    iget-wide v5, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v1, v5, v6, v4}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(JLcom/tencent/mm/plugin/album/model/AlbumImg;)I

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v5

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->i()I

    move-result v6

    invoke-interface {v1, v5, v6, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_5
    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v1

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->i()I

    move-result v5

    if-ne v1, v5, :cond_6

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->i()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "albumb_"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "MicroMsg.NetSceneUploadAlbumPhoto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upLoad ok pcId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tmp is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/tencent/mm/platformtools/FilesCopy;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->g()Ljava/lang/String;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->c(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->j()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v1

    iget-wide v5, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v1, v5, v6, v4}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(JLcom/tencent/mm/plugin/album/model/AlbumImg;)I

    new-instance v1, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;-><init>()V

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->d()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(J)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMUploadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->e()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Lcom/tencent/mm/plugin/album/model/AlbumInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v3, v3, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->b(J)Z

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x4f

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

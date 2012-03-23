.class public Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:I

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/io/FileOutputStream;

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->a:I

    iput-object v9, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    iput-boolean v8, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->k:Z

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto$MMReqRespMMDownloadAlbumPhoto;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto$MMReqRespMMDownloadAlbumPhoto;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/album/model/AlbumImg;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fullFileName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->h:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->k:Z

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bigPic of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object v9, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b(I)V

    :cond_4
    iget-object v4, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "albumb_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->d()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a(I)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->b(I)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/album/model/AlbumInfo;)Z

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;->a(Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;)Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;->c()Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    goto/16 :goto_0
.end method

.method private a([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    :cond_0
    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appendBuf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->j:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->k:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/album/model/AlbumImg;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Req;

    const-string v3, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doscene  offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to downLoad Size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    iget v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->a:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The bigPic of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g()V

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;

    const-string v1, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v4, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g()V

    :goto_0
    return-void

    :cond_0
    if-eq p2, v4, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g()V

    goto :goto_0

    :cond_4
    const-string v1, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download Album  id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;->g()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  totallen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;->f()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->a([B)I

    move-result v1

    :cond_5
    if-gez v1, :cond_6

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    const-string v1, "appendBuf fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/album/model/AlbumImg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->h()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMDownloadAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/DownloadAlbumPhotoResponse;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->L()Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mm/plugin/album/model/AlbumImgStorage;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/album/model/AlbumImg;)Z

    if-eqz v1, :cond_7

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    const-string v1, "doScene again"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->d()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->a(Ljava/lang/String;)V

    const-string v0, "MicroMsg.NetSceneDownloadAlbumPhoto"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downLoad ok bigPicExist "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/model/AlbumImg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/FilesCopy;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;->d:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

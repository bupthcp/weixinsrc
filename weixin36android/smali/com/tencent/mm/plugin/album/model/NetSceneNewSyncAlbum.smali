.class public Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

.field private e:Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 3

    const-string v0, "MicroMsg.NetSceneAlbumPhotoComment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;->a:Lcom/tencent/mm/protocal/protobuf/NewSyncAlbumResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/NewSyncAlbumResponse;->d()Lcom/tencent/mm/protocal/protobuf/CmdList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdList;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->e:Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->U()Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->e:Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->d:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

    iput-object v0, v1, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->a:Ljava/util/LinkedList;

    iget-object v0, v1, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;

    :try_start_0
    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;->a:Lcom/tencent/mm/protocal/protobuf/NewSyncAlbumResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/NewSyncAlbumResponse;->e()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->b()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

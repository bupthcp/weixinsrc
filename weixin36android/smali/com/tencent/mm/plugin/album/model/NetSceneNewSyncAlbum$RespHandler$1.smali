.class Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/CmdItem;

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/CommentTips;->a([B)Lcom/tencent/mm/protocal/protobuf/CommentTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CommentTips;->d()Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CommentTips;->e()Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/CommentTips;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/album/model/AlbumCommentStorage;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/CommentInfo;Lcom/tencent/mm/protocal/protobuf/CommentInfo;)Lcom/tencent/mm/plugin/album/model/AlbumComment;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$RespHandler;->c:Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum;->d()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

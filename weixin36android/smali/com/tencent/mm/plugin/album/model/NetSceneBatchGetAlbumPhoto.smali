.class public Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhoto;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhoto;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhoto;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhoto;->b(I)V

    const-string v0, "MicroMsg.NetSceneBatchGetAlbumPhoto"

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

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhoto$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhoto$Resp;->b_()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMBatchGetAlbumPhoto$Resp;->a:Lcom/tencent/mm/protocal/protobuf/BatchGetAlbumPhotoResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/BatchGetAlbumPhotoResponse;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneBatchGetAlbumPhoto;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x4d

    return v0
.end method

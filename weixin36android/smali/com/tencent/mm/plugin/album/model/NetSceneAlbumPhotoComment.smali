.class public Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment$MMReqRespAlbumPhotoComment;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment$MMReqRespAlbumPhotoComment;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->a:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMAlbumPhotoComment$Req;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;-><init>()V

    invoke-virtual {v1, p1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p4}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->b(I)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p3}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->a(I)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    iget-object v2, v0, Lcom/tencent/mm/plugin/album/protocal/MMAlbumPhotoComment$Req;->a:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoCommentRequest;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoCommentRequest;->a(Lcom/tencent/mm/protocal/protobuf/CommentInfo;)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoCommentRequest;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;-><init>()V

    invoke-virtual {v1, p5}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p6}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->c(I)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p3}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->b(I)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p4}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    invoke-virtual {v1, p7}, Lcom/tencent/mm/protocal/protobuf/CommentInfo;->a(I)Lcom/tencent/mm/protocal/protobuf/CommentInfo;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMAlbumPhotoComment$Req;->a:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoCommentRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoCommentRequest;->b(Lcom/tencent/mm/protocal/protobuf/CommentInfo;)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoCommentRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

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

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneAlbumPhotoComment;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x52

    return v0
.end method

.class public Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private final a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Lcom/tencent/mm/modelemoji/EmojiInfo;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;)V
    .locals 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->e:Z

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p3, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    new-instance v0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji$MMReqRespUploadEmoji;

    invoke-direct {v0}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji$MMReqRespUploadEmoji;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;-><init>()V

    invoke-virtual {p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    invoke-virtual {v2, p1}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->e(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    invoke-virtual {v2, p2}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    invoke-virtual {p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->b(I)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    invoke-virtual {p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    invoke-virtual {p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->c(I)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    const-string v3, "@chatroom"

    invoke-virtual {p2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v3

    sget v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-ne v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "56,2,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->d(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;->a(Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;)Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v3

    sget v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "56,1,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->d(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 5

    const/16 v1, 0x2000

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    iget-boolean v2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->e:Z

    if-eqz v2, :cond_0

    const-string v1, "MicroMsg.NetSceneUploadEmoji"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatcher, firstSend. md5="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->a(I)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->k()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v2, v1, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a(II)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-gtz v2, :cond_2

    :cond_1
    const-string v0, "MicroMsg.NetSceneUploadEmoji"

    const-string v1, "readFromFile is null."

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    array-length v2, v1

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->a(I)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    new-instance v3, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v3

    array-length v1, v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoReq;

    const-string v0, "MicroMsg.NetSceneUploadEmoji"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatcher, start:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", total:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->k()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", len:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->b(I)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadEmoji"

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

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "uploademoji"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMUploadEmoji$Resp;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;->c()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget-object v3, v1, Lcom/tencent/mm/protocal/MMUploadEmoji$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiResponse;->d()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    const-string v2, "MicroMsg.NetSceneUploadEmoji"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd failed. RequestSize not equal RespSize. req size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/tencent/mm/protocal/MMUploadEmoji$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiResponse;->d()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", resp size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMUploadEmoji$Req;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiRequest;->c()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "uploademoji"

    const-string v2, "RequestSize not equal RespSize"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/tencent/mm/protocal/MMUploadEmoji$Resp;->a:Lcom/tencent/mm/protocal/protobuf/UploadEmojiResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/UploadEmojiResponse;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->c()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v2

    if-ge v1, v2, :cond_5

    :cond_4
    const-string v1, "MicroMsg.NetSceneUploadEmoji"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid server return value; start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "uploadimg"

    const-string v2, "invalid server return value"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x4

    const/4 v2, -0x2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->e:Z

    if-eqz v1, :cond_6

    iput-boolean v4, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->e:Z

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->d()I

    move-result v2

    if-lt v1, v2, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, p2, p3, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/EmojiUploadInfoResp;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x3e

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

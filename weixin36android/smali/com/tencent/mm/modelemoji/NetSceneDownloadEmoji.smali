.class public Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;

.field private final d:Lcom/tencent/mm/modelemoji/EmojiInfo;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelemoji/EmojiInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;

    invoke-direct {v0}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->c:Lcom/tencent/mm/network/IReqResp;

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 2

    iput-object p2, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v1, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->k()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;->a(Lcom/tencent/mm/protocal/MMDownloadEmoji$Req$EmojiDownloadInfoReq;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->c()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->b()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v2

    if-ge v1, v2, :cond_4

    :cond_3
    const-string v0, "MicroMsg.NetSceneDownloadEmoji"

    const-string v1, "flood control, malformed data_len"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v5, v4, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->d()[B

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "MicroMsg.NetSceneDownloadEmoji"

    const-string v1, "flood control, malformed data is null or dataLen not match with data buf length"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v5, v4, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->d()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->a([B)Z

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp$EmojiDownloadInfoResp;->d()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->l()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->k()I

    move-result v1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->l:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v3, v3, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v4, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public final d()Lcom/tencent/mm/modelemoji/EmojiInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d:Lcom/tencent/mm/modelemoji/EmojiInfo;

    return-object v0
.end method

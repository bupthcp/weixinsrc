.class public Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/io/FileOutputStream;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x1e0

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    :cond_0
    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init Headimage in_username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out_username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->f:I

    iput v4, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->g:I

    const-string v0, "jpg"

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->d:Ljava/lang/String;

    return-void
.end method

.method private a([B)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

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

.method private h()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h:Ljava/io/FileOutputStream;
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
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

    const-string v1, "username is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->C()Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The HDAvatar of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ".tmp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/HDHeadImgInfo;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    new-instance v0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a(I)V

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b(I)V

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;->a(Lcom/tencent/mm/modelavatar/HDHeadImgInfo;)Z

    move-object v1, v0

    :goto_1
    new-instance v2, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg$MMReqRespGetHDHeadImg;

    invoke-direct {v2}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg$MMReqRespGetHDHeadImg;-><init>()V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->a(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->f:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->a(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->g:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->b(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->b(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->e(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    invoke-virtual {v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->c(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;

    invoke-virtual {v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Req;->d(I)V

    invoke-virtual {p0, p1, v2, p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b()V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->f:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a(I)V

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelavatar/HDHeadImgInfo;)I

    :cond_5
    move-object v1, v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->j()I

    move-result v5

    iget v6, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->e:I

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e()I

    move-result v5

    iget v6, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->f:I

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->f()I

    move-result v5

    iget v6, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->g:I

    if-ne v5, v6, :cond_4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->i()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move v1, v2

    goto :goto_2
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h()V

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Resp;

    const-string v1, "MicroMsg.NetSceneGetHDHeadImg"

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

    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

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

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h()V

    :goto_0
    return-void

    :cond_0
    if-eq p2, v4, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

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

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Resp;->b_()I

    move-result v1

    const/4 v2, -0x4

    if-eq v1, v2, :cond_3

    const/16 v2, -0x36

    if-eq v1, v2, :cond_3

    const/16 v2, -0x37

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v1, "MicroMsg.NetSceneGetHDHeadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retcode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Resp;->b_()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

    const-string v1, "handleCertainError"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Resp;->f()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a([B)I

    move-result v1

    if-gez v1, :cond_6

    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

    const-string v1, "appendBuf fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h()V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->C()Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/HDHeadImgInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Resp;->e()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetHDHeadImg$Resp;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->c(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/tencent/mm/modelavatar/HDHeadImgInfoStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelavatar/HDHeadImgInfo;)I

    invoke-virtual {v3}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MicroMsg.NetSceneGetHDHeadImg"

    const-string v1, "doScene again"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :try_start_0
    invoke-virtual {v3}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->h()I

    move-result v0

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->i:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->h()V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->c:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:J

.field private d:J

.field private e:Lcom/tencent/mm/storage/MsgInfo;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    new-instance v1, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake$1;-><init>(Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;)V

    iput-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->f:Landroid/os/Handler;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->d(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    const-string v1, "MicroMsg.NetSceneUploadMsgImgFake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send local msgImg, imgLocalId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fromUserName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", toUserName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", origImgPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->H(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "THUMBNAIL://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->d:J

    iget-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneUploadMsgImgFake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneUploadMsgImgFake: local msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->d:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    const-string v1, "MicroMsg.NetSceneUploadMsgImgFake"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetSceneUploadMsgImg: local imgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " img len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v0

    invoke-interface {p4, v1, v0, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 5

    const/4 v0, -0x1

    iget-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v0, "MicroMsg.NetSceneUploadMsgImgFake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send local msgimg, imgLocalId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/16 v0, 0x3e7

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "MicroMsg.NetSceneUploadMsgImgFake"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recv local msgimg, imgLocalId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->d:J

    iget-object v3, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->e:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneUploadMsgImgFake;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v6, v6, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

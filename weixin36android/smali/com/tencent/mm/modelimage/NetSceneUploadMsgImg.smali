.class public Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private final a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final d:Lcom/tencent/mm/network/IReqResp;

.field private e:J

.field private f:J

.field private g:I

.field private h:Lcom/tencent/mm/storage/MsgInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    iput-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    new-instance v0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg$MMReqRespUploadMsgImg;

    invoke-direct {v0}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg$MMReqRespUploadMsgImg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    iput-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FROM SERVICE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/modelimage/ImgService;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(I)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->e()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->e()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->b(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->d(I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    iput-object v8, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    iput-object p4, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->c(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FROM UI :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    cmp-long v0, v3, v6

    if-ltz v0, :cond_0

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v3

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert to img storage failed id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    iput-object v8, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    cmp-long v0, v3, v6

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg$MMReqRespUploadMsgImg;

    invoke-direct {v0}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg$MMReqRespUploadMsgImg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->H(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "THUMBNAIL://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    cmp-long v0, v3, v6

    if-ltz v0, :cond_4

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneUploadMsgImg: local msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelimage/ImgInfo;->h(I)V

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelimage/ImgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetSceneUploadMsgImg: local imgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " img len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->b(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->a(I)V

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-static {p2, v2, v3}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->d(I)V

    if-eqz p4, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v1

    invoke-interface {p4, v0, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto/16 :goto_2
.end method

.method private static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 6

    const/4 v2, -0x1

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iput-object p2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->a()I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->k_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4

    new-instance v4, Lcom/tencent/mm/modelbase/SceneInfo;

    iget-object v5, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v5}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/tencent/mm/modelbase/SceneInfo;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modelbase/SceneInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/modelbase/SceneInfo;->d(J)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->c()I

    move-result v1

    const/16 v4, 0x64

    if-lt v1, v4, :cond_5

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    move v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->b(I)V

    const/16 v1, 0x200

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v4, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v1, v4, v5, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v1

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    if-le v1, v4, :cond_6

    iget v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v4, v1

    if-gtz v4, :cond_8

    :cond_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    array-length v2, v1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->c(I)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->b(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->a([B)V

    const-string v1, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doScene: dataLen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " startpos:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->t()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imgid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cliver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->u()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Req;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    if-gez v0, :cond_0

    iget-wide v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v1, v1

    invoke-static {v1}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/16 v4, 0x2000

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;

    const-string v1, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd errtype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errcode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dataLen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startpos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " imgid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

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

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->b(I)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "uploadimg"

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

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->i()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    iget v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    if-le v1, v4, :cond_3

    iput v4, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v3

    if-le v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v2

    if-lez v2, :cond_5

    :cond_4
    const-string v2, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd invalid server return value : startPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " img totalLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v2, v2

    invoke-static {v2}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v2, v2

    invoke-static {v2}, Lcom/tencent/mm/modelimage/ImgService;->b(I)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v2

    const-string v3, "uploadimg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid server return value : startPos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " img totalLen = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, -0x2

    const-string v2, ""

    invoke-interface {v0, v8, v1, v2, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    if-lt v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g:I

    if-gtz v2, :cond_7

    :cond_6
    const-string v2, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd invalid data startPos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " totalLen = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " off:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->b(I)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "uploadimg"

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

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v8, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelimage/ImgInfo;->g(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->l()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelimage/ImgInfo;->f(I)V

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    move-result v2

    if-gez v2, :cond_9

    const-string v0, "MicroMsg.NetSceneUploadMsgImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update db failed local id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " server id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->g()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->b(I)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "uploadimg"

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

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v7, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v4

    invoke-interface {v2, v3, v4, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_a
    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->l()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v2, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->j()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->f:J

    iget-object v3, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->h:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->b(I)Z

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v6, v6, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->b(I)Z

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v7, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public final g()I
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->e:J

    long-to-int v0, v0

    return v0
.end method

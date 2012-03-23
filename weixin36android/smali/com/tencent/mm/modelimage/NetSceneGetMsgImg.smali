.class public Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private final a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final d:Lcom/tencent/mm/network/IReqResp;

.field private final e:J

.field private f:I


# direct methods
.method public constructor <init>(JJLcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V
    .locals 4

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    cmp-long v0, p1, v1

    if-ltz v0, :cond_0

    cmp-long v0, p3, v1

    if-ltz v0, :cond_0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p5, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    new-instance v0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg$MMReqRespGetMsgImg;

    invoke-direct {v0}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg$MMReqRespGetMsgImg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    iput-wide p1, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->e:J

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->c(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->b(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->a(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->b(Ljava/lang/String;)V

    const/16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->f:I

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v0

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v1

    invoke-interface {p5, v0, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 4

    iput-object p2, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->c(I)V

    iget v2, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->f:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->d(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMGetMsgImg$Req;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->d:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v5, -0x1

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->e:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->h()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    const-string v1, "flood control, malformed data_len"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->i()[B

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->h()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->i()[B

    move-result-object v3

    array-length v3, v3

    if-eq v1, v3, :cond_5

    :cond_4
    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    const-string v1, "flood control, malformed data is null or dataLen not match with data buf length"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g()I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->h()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f()I

    move-result v3

    if-le v1, v3, :cond_7

    :cond_6
    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    const-string v1, "flood control, malformed start pos"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g()I

    move-result v1

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    if-eq v1, v3, :cond_8

    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    const-string v1, "flood control, malformed start_pos"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f()I

    move-result v1

    if-gtz v1, :cond_9

    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    const-string v1, "flood control, malformed total_len"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v4, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->k_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modelbase/SceneInfo;

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/modelbase/SceneInfo;->d(J)V

    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->h()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->g(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->h()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->f:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->e:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    move-result v1

    if-gez v1, :cond_b

    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    const-string v1, "onGYNetEnd : update img fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v7, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".temp"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->i()[B

    move-result-object v0

    invoke-static {v3, v1, v4, v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    const-string v0, "MicroMsg.NetSceneGetMsgImg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd : offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalLen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->a:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v4

    invoke-interface {v0, v3, v4, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->m()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelimage/ImgInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    iget-wide v3, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->e:J

    invoke-virtual {v0, v3, v4, v2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, ""

    invoke-interface {v0, v6, v6, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v7, v5, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->e:J

    return-wide v0
.end method

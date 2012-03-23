.class public Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

.field private e:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;Z)V
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x28

    const/4 v1, 0x1

    const/16 v5, 0x68

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->e:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    iput v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iput v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    iput-boolean v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->h:Z

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(J)V

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v0

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    invoke-virtual {p1, v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f(I)V

    const/16 v0, 0x78

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/16 v0, 0x9c4

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    :cond_0
    :goto_0
    new-instance v0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend$MMReqRespMasSend;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend$MMReqRespMasSend;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMMassSend$Req;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    if-eqz p2, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->j(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->e:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_2

    iput v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    invoke-virtual {p1, v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f(I)V

    invoke-virtual {p1, v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iput v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    invoke-virtual {p1, v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    invoke-virtual {p1, v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f(I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v0

    if-ne v0, v1, :cond_4

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    invoke-virtual {p1, v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f(I)V

    invoke-virtual {p1, v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h(I)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error msgtype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error msgtype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 9

    const/16 v1, 0x1f40

    const/16 v7, 0x67

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    iput-object p2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "isCancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->g:I

    if-gez v0, :cond_2

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "MAX_SEND_TIMES"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    if-nez v0, :cond_3

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "MasSendInfo is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "MasSendInfo.toList is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i()I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "getTolistCount is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v0

    if-gtz v0, :cond_6

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "getDataLen is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o()I

    move-result v0

    if-gtz v0, :cond_7

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "getThumbTotalLen is 0"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    if-eq v0, v7, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    const/16 v5, 0x68

    if-eq v0, v5, :cond_8

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMMassSend$Req;

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "MasSendInfo.fileName is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    :goto_1
    if-nez v0, :cond_0

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :cond_a
    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v6, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v1, v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v6, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v1, v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v6, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q()I

    move-result v1

    if-lez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {v6, v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v1

    if-ne v1, v7, :cond_f

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    if-ltz v2, :cond_b

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    if-nez v2, :cond_d

    :cond_b
    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene READ THUMB["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_3

    :cond_d
    const-string v2, "MicroMsg.NetSceneMasSend"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doScene READ THUMB["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] read ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " readlen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " netOff:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    iget-object v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v6

    if-ge v2, v6, :cond_e

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err doScene READ THUMB["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] newOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldtOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_1

    :cond_e
    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    new-array v2, v2, [B

    iget-object v4, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->a:[B

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v4, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v2}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    :goto_4
    move v0, v3

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v6

    invoke-static {v1, v6}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;

    move-result-object v1

    if-eqz v1, :cond_10

    iget v6, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    if-ltz v6, :cond_10

    iget v6, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    if-nez v6, :cond_11

    :cond_10
    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene READ VIDEO["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_1

    :cond_11
    const-string v6, "MicroMsg.NetSceneMasSend"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doScene READ VIDEO["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] read ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " readlen:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newOff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " netOff:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v8}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v6, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    iget-object v7, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v7

    if-ge v6, v7, :cond_12

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err doScene READ VIDEO["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] newOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OldtOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_1

    :cond_12
    iget-object v6, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i()I

    move-result v6

    if-eq v6, v2, :cond_13

    iget v6, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    const v7, 0xfa000

    if-lt v6, v7, :cond_13

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ VIDEO["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0xfa000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_1

    :cond_13
    iget-object v6, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i()I

    move-result v6

    if-ne v6, v2, :cond_14

    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->c:I

    const v6, 0x989680

    if-lt v2, v6, :cond_14

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ VIDEO["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x989680

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_1

    :cond_14
    iget v2, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    new-array v2, v2, [B

    iget-object v4, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->a:[B

    iget v1, v1, Lcom/tencent/mm/modelvideo/VideoInfoStorage$ReadRes;->b:I

    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v4, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v4, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v2}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    goto/16 :goto_4

    :cond_15
    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v2

    const/16 v5, 0x22

    if-ne v2, v5, :cond_1c

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v5, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v5, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "fileop is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    :goto_5
    if-eqz v3, :cond_9

    move v0, v4

    goto/16 :goto_0

    :cond_16
    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v5

    invoke-virtual {v2, v5, v1}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(II)Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "readRes is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    goto :goto_5

    :cond_17
    iget v2, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    if-gez v2, :cond_18

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err doScene READ file["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] read ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " readlen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v3, v4

    goto/16 :goto_5

    :cond_18
    iget v2, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v5

    if-lt v2, v5, :cond_19

    iget v2, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    sget v5, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a:I

    if-lt v2, v5, :cond_1a

    :cond_19
    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err doScene READ offseterror file["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] read ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " readlen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v3, v4

    goto/16 :goto_5

    :cond_1a
    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v2

    if-gtz v2, :cond_1b

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Err doScene READ datalen file["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] read totalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v3, v4

    goto/16 :goto_5

    :cond_1b
    iget v2, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    new-array v2, v2, [B

    iget-object v5, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->a:[B

    iget v1, v1, Lcom/tencent/mm/modelvoice/AmrFileOperator$ReadRes;->b:I

    invoke-static {v5, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v2}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    goto/16 :goto_5

    :cond_1c
    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1f

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "getFilename is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v3, v4

    :goto_6
    if-eqz v3, :cond_9

    move v0, v4

    goto/16 :goto_0

    :cond_1d
    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v5, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v5, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v5, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v2

    iget-object v6, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v6}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v6

    sub-int/2addr v2, v6

    if-le v2, v1, :cond_21

    :goto_7
    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v2

    invoke-static {v5, v2, v1}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene READ data["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v3, v4

    goto/16 :goto_6

    :cond_1e
    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v5, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v1, v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    goto/16 :goto_6

    :cond_1f
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    goto/16 :goto_2

    :cond_20
    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error msgtype:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    move v0, v4

    goto/16 :goto_0

    :cond_21
    move v1, v2

    goto/16 :goto_7
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->h:Z

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 10

    const/16 v9, 0x68

    const/16 v8, 0xc7

    const/16 v7, 0x67

    const/4 v6, 0x3

    const/4 v5, -0x1

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd  errtype:"

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

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->b(I)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd FAILED errtype:"

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

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    if-nez v0, :cond_3

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "ERR: onGYNetEnd Get INFO FAILED :"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    if-eq v0, v9, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    if-eq v0, v7, :cond_4

    const-string v0, "MicroMsg.NetSceneMasSend"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR: onGYNetEnd STATUS ERR: status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_4
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMMassSend$Resp;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMMassSend$Req;

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g()I

    move-result v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMMassSend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/MassSendResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/MassSendResponse;->e()I

    move-result v3

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v4

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_5

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "onGYNetEnd Err Thumb "

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v6, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d()I

    move-result v2

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/MassSendResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/MassSendResponse;->d()I

    move-result v0

    iget-object v3, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v3

    sub-int/2addr v0, v3

    if-eq v2, v0, :cond_6

    const-string v0, "MicroMsg.NetSceneMasSend"

    const-string v1, "onGYNetEnd Err Data "

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v6, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(J)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    if-ne v0, v7, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g()I

    move-result v2

    iget-object v1, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o()I

    move-result v1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d()I

    move-result v0

    if-eq v0, v8, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v6, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v9, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d()I

    move-result v2

    iget-object v1, v1, Lcom/tencent/mm/protocal/MMMassSend$Req;->a:Lcom/tencent/mm/protocal/protobuf/MassSendRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v1

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(I)V

    goto :goto_1

    :cond_a
    const-string v1, "MicroMsg.NetSceneMasSend"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd ERROR STATUS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit16 v0, v0, -0x2710

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->f:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const-string v1, "doScene failed"

    invoke-interface {v0, v6, v5, v1, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d:Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->e:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->e:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v0

    :goto_2
    const-string v2, "MicroMsg.NetSceneMasSend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!FIN: useTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x55

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x9c4

    return v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMMassSend$Resp;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMMassSend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/MassSendResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/MassSendResponse;->f()I

    move-result v0

    return v0
.end method

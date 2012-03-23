.class public Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# static fields
.field private static e:Lcom/tencent/mm/model/IOnNewMsgNotify;

.field private static f:Ljava/util/List;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->e:Lcom/tencent/mm/model/IOnNewMsgNotify;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->h:Z

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->i:Z

    new-instance v1, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v2, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice$1;-><init>(Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;)V

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneDownloadVoice:  file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;)Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->e:Lcom/tencent/mm/model/IOnNewMsgNotify;

    if-nez v0, :cond_0

    sput-object p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->e:Lcom/tencent/mm/model/IOnNewMsgNotify;

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;)Lcom/tencent/mm/modelbase/IOnSceneEnd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    return-object v0
.end method

.method public static b(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->e:Lcom/tencent/mm/model/IOnNewMsgNotify;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->e:Lcom/tencent/mm/model/IOnNewMsgNotify;

    invoke-interface {v0, v1}, Lcom/tencent/mm/model/IOnNewMsgNotify;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;

    invoke-interface {v0, v1}, Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    const-string v2, "doScene:  filename null!"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get info Failed file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    goto :goto_0

    :cond_2
    const-string v2, "MicroMsg.NetSceneDownloadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " netTimes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->r()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVoiceNetTimes Failed file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->m()I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_5

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    iput-boolean v5, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->i:Z

    const-string v2, "MicroMsg.NetSceneDownloadVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doScene file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Net:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Local:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->m()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->m()I

    move-result v1

    invoke-static {v2, v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;I)I

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iput v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->n()I

    move-result v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v3

    if-ne v0, v3, :cond_6

    iput-boolean v5, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->h:Z

    :cond_6
    new-instance v0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice$MMReqRespDownloadVoice;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice$MMReqRespDownloadVoice;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->c(I)Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->b(I)Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 2

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->c()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->e()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Req;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceRequest;->d()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->b(I)V

    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errtype:"

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

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;->f()I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelFlag = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->f(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const/16 v1, -0x16

    if-ne p3, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    const/16 v1, -0xd

    if-eq p3, v1, :cond_2

    const/4 v1, -0x6

    if-eq p3, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd  errType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;->b_()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_4
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Recv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileOff:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v1

    if-eqz v1, :cond_5

    array-length v2, v1

    if-nez v2, :cond_6

    :cond_5
    const-string v0, "MicroMsg.NetSceneDownloadVoice"

    const-string v1, "onGYNetEnd Recv Buf ZERO length "

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/AmrFileOperator;

    move-result-object v2

    array-length v3, v1

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMDownloadVoice$Resp;->a:Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/DownloadVoiceResponse;->c()I

    move-result v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a([BII)I

    move-result v0

    if-gez v0, :cond_7

    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd Write Failed File:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnRecvEnd : file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filesize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->b(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_8

    const-string v1, "MicroMsg.NetSceneDownloadVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "updateAfterRecv Ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v4, :cond_9

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g()V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_9
    const-wide/16 v0, 0x3e8

    iget-boolean v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->h:Z

    if-eqz v2, :cond_a

    const-wide/16 v0, 0x0

    :cond_a
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckError;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->i(Ljava/lang/String;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x16

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->g:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->d:Ljava/lang/String;

    return-object v0
.end method

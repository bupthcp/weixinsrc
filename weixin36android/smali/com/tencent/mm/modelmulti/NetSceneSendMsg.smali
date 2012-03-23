.class public Lcom/tencent/mm/modelmulti/NetSceneSendMsg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# static fields
.field private static final d:Ljava/util/List;

.field private static final g:Ljava/util/Set;

.field private static h:Ljava/util/List;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private final e:Ljava/util/List;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    const-string v0, "MicroMsg.NetSceneSendMsg"

    const-string v1, "empty msg sender created"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v1, p2}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {v1, p3}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.NetSceneSendMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new msg inserted to db , local id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->g:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->f:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    sget-object v1, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/model/IOnSendMsgFailNotify;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/tencent/mm/model/IOnSendMsgFailNotify;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/mm/model/IOnSendMsgFailNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lcom/tencent/mm/model/IOnSendMsgFailNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 12

    const/16 v7, 0xa

    const/4 v5, 0x4

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg$MMReqRespSendMsg;

    invoke-direct {v0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg$MMReqRespSendMsg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSendMsg$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneSendMsg"

    const-string v1, "no sending message"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_3

    sget-object v1, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    sget-object v4, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    if-le v3, v7, :cond_7

    add-int/lit8 v1, v3, -0xa

    :goto_1
    invoke-interface {v4, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    :cond_3
    sget-object v1, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    new-instance v3, Lcom/tencent/mm/modelbase/SceneInfo;

    invoke-direct {v3, v5}, Lcom/tencent/mm/modelbase/SceneInfo;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MicroMsg.NetSceneSendMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneInfo.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v3, v2

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_6

    new-instance v7, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->f:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->a(J)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->a(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v8

    sget-object v4, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->g:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_9

    :cond_4
    move v4, v2

    :cond_5
    :goto_4
    invoke-virtual {v7, v4}, Lcom/tencent/mm/protocal/MMSendMsg$Req$ReqCmd;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSendMsg$Req;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_7
    move v1, v2

    goto/16 :goto_1

    :cond_8
    move v4, v2

    goto :goto_3

    :cond_9
    invoke-static {v8}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    or-int/lit8 v4, v4, 0x2

    :cond_a
    invoke-static {v8}, Lcom/tencent/mm/platformtools/SmileyUtil;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    or-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->g()V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 10

    const/4 v3, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->g()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "sendmsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, v3, v3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSendMsg$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSendMsg$Resp;->b()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    move v2, v3

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->a()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MicroMsg.NetSceneSendMsg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send msg failed: item ret code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v2, 0x4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->a()I

    move-result v1

    invoke-interface {v0, v2, v1, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v5

    const-string v0, "MicroMsg.NetSceneSendMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg local id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", SvrId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->b()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sent successfully!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    const/16 v7, 0x4a

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->g()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_5
    const-string v0, "MicroMsg.NetSceneSendMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msgs sent successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->b(I)V

    goto/16 :goto_0

    :cond_6
    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public final k_()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->h:Ljava/util/List;

    return-object v0
.end method

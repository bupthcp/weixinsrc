.class public Lcom/tencent/mm/modelmulti/NetSceneSync;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# static fields
.field protected static a:I

.field private static n:Z

.field private static p:Ljava/util/List;

.field private static q:Ljava/util/HashMap;


# instance fields
.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

.field private final e:Lcom/tencent/mm/modelmulti/SyncRespHandler;

.field private final f:Lcom/tencent/mm/modelmulti/InitRespHandler;

.field private g:I

.field private final h:I

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    sput v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->p:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->q:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    const/16 v7, 0x2004

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->i:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->j:Z

    iput v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->k:I

    iput v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->m:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->o:Z

    iput p1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->h:I

    new-instance v0, Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;-><init>(Lcom/tencent/mm/modelmulti/NetSceneSync;)V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->e:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    new-instance v0, Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelmulti/InitRespHandler;-><init>(Lcom/tencent/mm/modelmulti/NetSceneSync;)V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->f:Lcom/tencent/mm/modelmulti/InitRespHandler;

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    sput-boolean v4, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0, v5, v6}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    sget v2, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    and-int/lit8 v0, v0, 0x5f

    sput v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    sget v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    sput-boolean v4, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    sget v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    sput-boolean v4, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    sget v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    sput-boolean v4, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    return-void
.end method

.method private a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;[B[B[BJ)I
    .locals 7

    iput-object p2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_a

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "do init"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespInit;

    invoke-direct {v2}, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespInit;-><init>()V

    if-eqz p3, :cond_1

    array-length v0, p3

    if-gtz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2005

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->o(Ljava/lang/String;)[B

    move-result-object p3

    :cond_2
    if-eqz p4, :cond_3

    array-length v0, p4

    if-gtz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2006

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->o(Ljava/lang/String;)[B

    move-result-object p4

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p3, :cond_5

    array-length v0, p3

    if-gtz v0, :cond_8

    :cond_5
    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMBase$Req;->k(I)V

    :goto_1
    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMInit$Req;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMInit$Req;->a([B)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMInit$Req;

    invoke-virtual {v0, p4}, Lcom/tencent/mm/protocal/MMInit$Req;->b([B)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMInit$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMInit$Req;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMInit$Req;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMInit$Req;->b(Ljava/lang/String;)V

    const-string v3, "MicroMsg.NetSceneSync"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "do init, initkey="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", username="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMInit$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMInit$Req;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", language="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->k_()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_6

    new-instance v2, Lcom/tencent/mm/modelbase/SceneInfo;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelbase/SceneInfo;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMBase$Req;->k(I)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMBase$Req;->k(I)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "do sync"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;

    iget v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->h:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_3
    invoke-direct {v2, v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;-><init>(Z)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$Req;

    invoke-virtual {v0, p6, p7}, Lcom/tencent/mm/protocal/MMSync$Req;->a(J)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$Req;

    if-eqz p5, :cond_b

    array-length v1, p5

    if-gtz v1, :cond_c

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v3, 0x2003

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->o(Ljava/lang/String;)[B

    move-result-object p5

    :cond_c
    invoke-virtual {v0, p5}, Lcom/tencent/mm/protocal/MMSync$Req;->a([B)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSync$Req;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage;->b()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x2013

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v3

    const-wide/16 v5, 0x12c

    cmp-long v0, v3, v5

    if-gez v0, :cond_e

    const-string v0, "MicroMsg.SyncBuilder"

    const-string v3, "scene cost report delay"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/tencent/mm/modelmulti/SyncBuilder;->a()V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$Req;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSync$Req;->a(Ljava/util/List;)V

    move-object v0, v2

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    new-instance v3, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-direct {v3, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;-><init>(Ljava/util/List;)V

    invoke-static {v3}, Lcom/tencent/mm/modelmulti/SyncBuilder;->a(Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;)Lcom/tencent/mm/protocal/MMSync$CmdItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x2013

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_4
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$Operation;

    const-string v3, "MicroMsg.NetSceneSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oplog id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/tencent/mm/storage/OpLogStorage$Operation;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/tencent/mm/storage/OpLogStorage$Operation;->a()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v3, "fromOpLogToCmd: not found cmd"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModContact;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->e(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->p()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->f(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->g(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->c(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->n(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->s()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->l(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_1
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpDelContact;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdDelContact;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdDelContact;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelContact;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdDelContact;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_2
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpInviteFriendOpen;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_3
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModTXNewsCategory;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->j()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->h(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, v8}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->a([B)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->e(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->o()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->s()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->n(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->l(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpDelChatContact;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdDelChatContact;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdDelChatContact;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelChatContact;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdDelChatContact;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_6
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->a(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpReport;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdReport;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdReport;-><init>()V

    new-instance v4, Lcom/tencent/mm/model/ErrLog$Error;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpReport;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpReport;->c()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpReport;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/tencent/mm/model/ErrLog$Error;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/model/ErrLog$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdReport;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpOpenQQMicroBlog;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdOpenQQMicroBlog;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdOpenQQMicroBlog;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpOpenQQMicroBlog;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdOpenQQMicroBlog;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_9
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpCloseMicroBlog;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdCloseMicroBlog;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdCloseMicroBlog;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpCloseMicroBlog;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdCloseMicroBlog;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModNotifyStatus;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModNotifyStatus;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModNotifyStatus;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModNotifyStatus;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModNotifyStatus;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModNotifyStatus;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModNotifyStatus;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->b()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->a(Z)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;->d()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModDisturbSetting;->c(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_c
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->g(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->c(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomMember;->j()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->e(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpQuitChatRoom;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdQuitChatRoom;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdQuitChatRoom;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpQuitChatRoom;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdQuitChatRoom;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpQuitChatRoom;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdQuitChatRoom;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_e
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpDelUserDomainEmail;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdDelUserDomainEmail;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdDelUserDomainEmail;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelUserDomainEmail;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdDelUserDomainEmail;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelUserDomainEmail;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdDelUserDomainEmail;->b(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_f
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomNotify;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomNotify;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomNotify;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomNotify;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomNotify;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_10
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomTopic;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomTopic;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomTopic;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModChatRoomTopic;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomTopic;->b(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_11
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdDeleteBottle;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdDeleteBottle;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdDeleteBottle;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdDeleteBottle;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_12
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;->c(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_13
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpUpdateStat;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdUpdateStat;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdUpdateStat;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpUpdateStat;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdUpdateStat;->b(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_14
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserImg;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserImg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9, v8}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserImg;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->b(I)V

    array-length v5, v4

    invoke-virtual {v3, v5}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->c(I)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->a([B)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserImg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_15
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpPsmStat;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdPsmStat;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdPsmStat;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpPsmStat;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdPsmStat;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpPsmStat;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdPsmStat;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_16
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/SyncBuilder;->a(Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;)Lcom/tencent/mm/protocal/MMSync$CmdItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_17
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpTheme;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdTheme;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdTheme;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpTheme;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdTheme;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpTheme;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdTheme;->a(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_18
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;

    invoke-direct {v3}, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdMediaNote;->c(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_19
    check-cast v0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;

    new-instance v3, Lcom/tencent/mm/protocal/MMSync$CmdCommProtoBuf;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->b()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/tencent/mm/protocal/MMSync$CmdCommProtoBuf;-><init>(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->c()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/protocal/MMSync$CmdCommProtoBuf;->a([B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_4
        0x6a -> :sswitch_5
        0x6b -> :sswitch_6
        0x6c -> :sswitch_7
        0x6d -> :sswitch_8
        0x6e -> :sswitch_9
        0x6f -> :sswitch_a
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_f
        0x73 -> :sswitch_e
        0x74 -> :sswitch_12
        0x75 -> :sswitch_13
        0x76 -> :sswitch_10
        0x77 -> :sswitch_b
        0x78 -> :sswitch_11
        0x79 -> :sswitch_14
        0x7a -> :sswitch_15
        0x7b -> :sswitch_16
        0x7c -> :sswitch_17
        0x7d -> :sswitch_2
        0x7f -> :sswitch_18
        0x80 -> :sswitch_3
        0x2710 -> :sswitch_19
    .end sparse-switch
.end method

.method public static a(I)V
    .locals 2

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->q:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(ILcom/tencent/mm/modelbase/IMessageExtension;)V
    .locals 2

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->q:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->p:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->p:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lcom/tencent/mm/model/IOnNewMsgNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->p:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic j()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method private static n()V
    .locals 4

    const/4 v3, 0x7

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync or init end: reset selector : now = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " default = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput v3, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 8

    sget-object v3, Lcom/tencent/mm/protocal/ConstantsProtocal;->d:[B

    sget-object v4, Lcom/tencent/mm/protocal/ConstantsProtocal;->e:[B

    sget-object v5, Lcom/tencent/mm/protocal/ConstantsProtocal;->c:[B

    sget v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    int-to-long v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;[B[B[BJ)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->e:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->f:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->a()V

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v9, 0x0

    if-nez p5, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "rr null, skip resp"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->o:Z

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->c()I

    move-result v0

    const/16 v3, 0x26

    if-ne v0, v3, :cond_e

    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->k_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/SceneInfo;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelbase/SceneInfo;->b(J)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMBase$Req;->z()J

    move-result-wide v3

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/protocal/MMBase$Resp;->I()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelbase/SceneInfo;->d(J)V

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v3

    if-nez p2, :cond_4

    if-nez p3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/OpLogStorage;->a(Z)V

    if-nez p2, :cond_3

    if-eqz p3, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->e:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    iget-object v0, v0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a:Lcom/tencent/mm/protocal/MMSync$Resp;

    if-eqz v0, :cond_5

    iput p2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->k:I

    iput p3, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->l:I

    iput-object p4, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->m:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v9

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_6
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$Resp;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMSync$Req;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSync$Req;->e()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSync$Resp;->e()[B

    move-result-object v1

    if-eqz v3, :cond_7

    array-length v4, v3

    if-gtz v4, :cond_9

    :cond_7
    const-string v2, "MicroMsg.NetSceneSync"

    const-string v3, "empty old key, use new key"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_8

    array-length v2, v1

    if-gtz v2, :cond_d

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSync$Resp;->e()[B

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "merge key failed, use server side instead"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eqz v1, :cond_a

    array-length v4, v1

    if-gtz v4, :cond_b

    :cond_a
    const-string v1, "MicroMsg.NetSceneSync"

    const-string v3, "newKey is null"

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    :cond_b
    new-instance v4, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v4}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    invoke-static {v3, v1, v4}, Lcom/tencent/mm/protocal/MMProtocalJni;->mergeSyncKey([B[BLcom/tencent/mm/pointers/PByteArray;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "MicroMsg.NetSceneSync"

    const-string v3, "merge key failed"

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    :cond_c
    iget-object v1, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    goto :goto_2

    :cond_d
    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSync$Resp;->a([B)V

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->e:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b(Lcom/tencent/mm/protocal/MMSync$Resp;)V

    goto/16 :goto_0

    :cond_e
    if-nez p2, :cond_f

    if-eqz p3, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->f:Lcom/tencent/mm/modelmulti/InitRespHandler;

    iget-object v0, v0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    if-eqz v0, :cond_10

    iput p2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->k:I

    iput p3, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->l:I

    iput-object p4, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->m:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_11
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/tencent/mm/protocal/MMInit$Resp;

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resp initkey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/MMInit$Resp;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maxInitKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/MMInit$Resp;->h()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->f:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/modelmulti/InitRespHandler;->b(Lcom/tencent/mm/protocal/MMInit$Resp;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v2, "init done"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->j:Z

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/MMInit$Resp;->g()[B

    move-result-object v3

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/MMInit$Resp;->h()[B

    move-result-object v4

    sget-object v5, Lcom/tencent/mm/protocal/ConstantsProtocal;->c:[B

    sget v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->a:I

    int-to-long v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;[B[B[BJ)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "parally processing init failed, mark resp as finished"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/tencent/mm/protocal/MMInit$Resp;->b(I)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/protocal/MMInit$Resp;)V
    .locals 8

    const/16 v7, 0x2006

    const/16 v6, 0x2005

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->g()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->h()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->d:Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->f()I

    move-result v3

    const/16 v4, 0x64

    invoke-interface {v2, v3, v4, p0}, Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;->a(IILcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->f:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-virtual {v2, p1}, Lcom/tencent/mm/modelmulti/InitRespHandler;->a(Lcom/tencent/mm/protocal/MMInit$Resp;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "waiting for next init resp"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "MicroMsg.NetSceneSync"

    const-string v3, "all resp handled"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->j:Z

    if-eqz v2, :cond_4

    const-string v2, "MicroMsg.NetSceneSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "set sync_selector equal last init selector :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->h()[B

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->h()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x2004

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x2003

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMInit$Resp;->h()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v6, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v7, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->i:Z

    invoke-static {}, Lcom/tencent/mm/modelmulti/NetSceneSync;->n()V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->k:I

    iget v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->l:I

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method protected final a(Lcom/tencent/mm/protocal/MMSync$Resp;)V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2003

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$Resp;->e()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->c([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2004

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$Resp;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->e:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a(Lcom/tencent/mm/protocal/MMSync$Resp;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "new notify pending, sync now"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelmulti/NetSceneSync;->n()V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->k:I

    iget v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->l:I

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->m:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0
.end method

.method protected final a(Lcom/tencent/mm/modelbase/NetSceneBase;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    iget-boolean v1, p1, Lcom/tencent/mm/modelmulti/NetSceneSync;->o:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/tencent/mm/modelmulti/NetSceneSync;->n:Z

    if-eqz v1, :cond_0

    iget-wide v1, p1, Lcom/tencent/mm/modelmulti/NetSceneSync;->b:J

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v1

    const-wide/32 v3, 0x3a980

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "old not busy and notified, maybe cancel old scene"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->i:Z

    return v0
.end method

.method protected final g()V
    .locals 2

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "resp canceled, synckey not set"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    :cond_0
    return-void
.end method

.method protected final h()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    return-void
.end method

.method public final h_()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->h_()Z

    move-result v0

    return v0
.end method

.method protected final i()V
    .locals 2

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "resp canceled, initkey not set"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    :cond_0
    return-void
.end method

.method protected final j_()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync;->g:I

    return-void
.end method

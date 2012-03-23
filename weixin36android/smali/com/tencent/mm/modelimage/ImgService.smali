.class public Lcom/tencent/mm/modelimage/ImgService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static a:Ljava/util/Set;


# instance fields
.field private b:Ljava/util/Queue;

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

.field private h:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    iput-boolean v2, p0, Lcom/tencent/mm/modelimage/ImgService;->c:Z

    iput v2, p0, Lcom/tencent/mm/modelimage/ImgService;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelimage/ImgService;->e:J

    iput-boolean v2, p0, Lcom/tencent/mm/modelimage/ImgService;->f:Z

    new-instance v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->g:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelimage/ImgService$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelimage/ImgService$1;-><init>(Lcom/tencent/mm/modelimage/ImgService;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->h:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelimage/ImgService;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelimage/ImgService;->c()V

    return-void
.end method

.method public static a(I)Z
    .locals 2

    sget-object v0, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(I)Z
    .locals 2

    sget-object v0, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/modelimage/ImgService;->e:J

    iget-boolean v0, p0, Lcom/tencent/mm/modelimage/ImgService;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/modelimage/ImgService;->f:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_7

    invoke-direct {p0}, Lcom/tencent/mm/modelimage/ImgService;->d()V

    const-string v0, "MicroMsg.ImgService"

    const-string v1, "No Data Any More , Stop Service"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelimage/ImgInfo;

    sget-object v3, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "MicroMsg.ImgService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File is Already running:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->e()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->g()I

    move-result v3

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->h()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->i()I

    move-result v4

    if-gt v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->a()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->d()I

    move-result v3

    add-int/lit16 v3, v3, 0x258

    int-to-long v3, v3

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v0}, Lcom/tencent/mm/modelimage/ImgService;->c(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    goto/16 :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/tencent/mm/modelimage/ImgService;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object v0, v1

    :cond_8
    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelimage/ImgInfo;

    sget-object v2, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v0, v1

    goto :goto_3

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/modelimage/ImgService;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    sget-object v1, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_1
.end method

.method public static c(I)V
    .locals 6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(I)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->b()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->h(I)V

    const/16 v1, 0x108

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->e()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->e()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelimage/ImgService;->c:Z

    const-string v0, "MicroMsg.ImgService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish service use time(ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelimage/ImgService;->g:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/ImgService;->e:J

    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/tencent/mm/modelimage/ImgService;->c:Z

    if-eqz v2, :cond_1

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "MicroMsg.ImgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: Try Run service runningFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/modelimage/ImgService;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeWait:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">=MAX_TIME_WAIT sending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/modelimage/ImgService;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelimage/ImgService;->c:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgService;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->g:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgService;->h:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 2

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p4, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelimage/ImgService;->f:Z

    check-cast p4, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;

    invoke-virtual {p4}, Lcom/tencent/mm/modelimage/NetSceneUploadMsgImg;->g()I

    move-result v0

    sget-object v1, Lcom/tencent/mm/modelimage/ImgService;->a:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgService;->d:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/modelimage/ImgService;->c()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/modelimage/ImgService;->d()V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgService;->d:I

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.class public Lcom/tencent/mm/modelvideo/VideoService$Service;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static k:I


# instance fields
.field private a:Ljava/util/Queue;

.field private b:Ljava/util/Queue;

.field private c:Ljava/util/Map;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J

.field private i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

.field private j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

.field private l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

.field private m:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    iput-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    iput-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

    iput v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->h:J

    iput-object v3, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    iput-object v3, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    new-instance v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelvideo/VideoService$Service$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvideo/VideoService$Service$1;-><init>(Lcom/tencent/mm/modelvideo/VideoService$Service;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/VideoService$Service;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->e()V

    return-void
.end method

.method private e()V
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->h:J

    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->f()V

    const-string v0, "MicroMsg.VideoService"

    const-string v1, "No Data Any More , Stop Service"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelvideo/VideoInfo;

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "MicroMsg.VideoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File is Already running:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v6, "MicroMsg.VideoService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " human:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " create:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->k()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/tencent/mm/platformtools/Util;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " last:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/tencent/mm/platformtools/Util;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->l()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v6

    const/16 v7, 0x70

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v6

    const/16 v7, 0x68

    if-eq v6, v7, :cond_8

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v6

    const/16 v7, 0x67

    if-ne v6, v7, :cond_5

    :cond_8
    iget-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_9
    const-string v0, "MicroMsg.VideoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetNeedRun procing:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " [recv:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",send:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MicroMsg.VideoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Recv :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    new-instance v4, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    const-string v4, "sceneDown should null"

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    if-nez v1, :cond_c

    move v1, v2

    :goto_3
    invoke-static {v4, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    new-instance v1, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_b
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MicroMsg.VideoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Send :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    new-instance v4, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    const-string v1, "sceneUp should null"

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    if-nez v4, :cond_d

    :goto_4
    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    new-instance v1, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_3

    :cond_d
    move v2, v3

    goto :goto_4
.end method

.method private f()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iput-boolean v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

    const-string v0, "MicroMsg.VideoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish service use time(ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

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
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->h:J

    sub-long/2addr v0, v2

    const-string v2, "MicroMsg.VideoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try Run service runningFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timeWait:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sending:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recving:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

    if-eqz v2, :cond_1

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v2, "MicroMsg.VideoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: Try Run service runningFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

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

    iget-boolean v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recving:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

    iput-boolean v5, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    iput-boolean v5, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    iput-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    iput-object v6, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->l:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->m:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    sget v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_3

    iput-boolean v7, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->i()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/mm/modelvideo/VideoService;->a:Ljava/lang/String;

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->g()I

    move-result v0

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    move v2, v0

    move-object v3, v1

    :goto_0
    const-wide/16 v0, 0x0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v0

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v4, "MicroMsg.VideoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSceneEnd SceneType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errtype:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " retCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " time:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    if-eqz v2, :cond_5

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    :cond_1
    :goto_1
    const-string v0, "MicroMsg.VideoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd  inCnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " running:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recving:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sending:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->e()V

    :cond_2
    :goto_2
    sget v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    :goto_3
    return-void

    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_4

    iput-boolean v7, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->f()Ljava/lang/String;

    move-result-object v1

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->g()I

    move-result v0

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    move v2, v0

    move-object v3, v1

    goto/16 :goto_0

    :cond_4
    const-string v0, "MicroMsg.VideoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd Error SceneType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/tencent/mm/modelvideo/VideoService$Service;->k:I

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_1

    iput v7, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    goto/16 :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->e:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->d:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->f()V

    goto :goto_2
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->g:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->h()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->h()V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->i:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->h()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->j:Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/NetSceneUploadVideo;->h()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoService$Service;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

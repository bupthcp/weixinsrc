.class public final Lcom/tencent/mm/modelbase/NetSceneQueue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static a:Lcom/tencent/mm/modelbase/NetSceneQueue;


# instance fields
.field private b:Lcom/tencent/mm/network/IDispatcher;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:[Ljava/util/List;

.field private final f:Landroid/os/Handler;

.field private final g:Ljava/util/Map;

.field private h:Z

.field private i:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final j:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneQueue;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/16 v4, 0x5a

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->h:Z

    new-instance v1, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v2, Lcom/tencent/mm/modelbase/NetSceneQueue$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue$1;-><init>(Lcom/tencent/mm/modelbase/NetSceneQueue;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->j:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->g:Ljava/util/Map;

    new-array v1, v4, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->e:[Ljava/util/List;

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->e:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneQueue$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue$3;-><init>(Lcom/tencent/mm/modelbase/NetSceneQueue;)V

    iput-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->f:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/tencent/mm/modelbase/NetSceneQueue;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneQueue;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-direct {v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelbase/NetSceneQueue;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneQueue;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/modelbase/NetSceneQueue;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelbase/NetSceneQueue;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->l()I

    move-result v2

    const/4 v1, 0x1

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->l()I

    move-result v0

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->l()I

    move-result v2

    move-object v3, v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitingQueue_size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->c(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_2
    return-void
.end method

.method private c(Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur_running_cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runningQueue_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->b:Lcom/tencent/mm/network/IDispatcher;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->b:Lcom/tencent/mm/network/IDispatcher;

    invoke-virtual {p1, v0, p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b(I)V

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doScene failed, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " runningQueue_size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/modelbase/NetSceneQueue$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/modelbase/NetSceneQueue$4;-><init>(Lcom/tencent/mm/modelbase/NetSceneQueue;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->k_()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    new-instance v1, Lcom/tencent/mm/modelbase/SceneInfo;

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelbase/SceneInfo;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/SceneInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelbase/SceneInfo;->a(J)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waited: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur_waiting_cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitingQueue_size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Lcom/tencent/mm/modelbase/NetSceneQueue;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelbase/NetSceneQueue;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneQueue$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue$2;-><init>(Lcom/tencent/mm/modelbase/NetSceneQueue;)V

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "r:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    const-string v3, "t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/tencent/mm/modelbase/NetSceneBase;->b:J

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "w:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    const-string v3, "t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", d="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/tencent/mm/modelbase/NetSceneBase;->b:J

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelbase/NetSceneQueue;)[Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->e:[Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(J)Ljava/util/List;
    .locals 8

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modelbase/SceneInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/tencent/mm/modelbase/SceneInfo;->c(J)V

    invoke-virtual {v1}, Lcom/tencent/mm/modelbase/SceneInfo;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "MicroMsg.NetSceneQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid scene info:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/tencent/mm/modelbase/SceneInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v5, "MicroMsg.NetSceneQueue"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add sceneInfo to KvStat:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/tencent/mm/modelbase/SceneInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;

    const/4 v6, 0x7

    invoke-virtual {v1}, Lcom/tencent/mm/modelbase/SceneInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object v2
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 8

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end: type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cur_running_cnt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cur_waiting_cnt="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->k_()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/SceneInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelbase/SceneInfo;->b(J)V

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/modelbase/SceneInfo;->a(II)V

    :cond_0
    :sswitch_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->j:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p4, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b(I)V

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runningQueue_size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->c()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->b:Lcom/tencent/mm/network/IDispatcher;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scene"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->b:Lcom/tencent/mm/network/IDispatcher;

    invoke-interface {v4}, Lcom/tencent/mm/network/IDispatcher;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/modelbase/NetSceneQueue$5;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelbase/NetSceneQueue$5;-><init>(Lcom/tencent/mm/modelbase/NetSceneQueue;IIILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->e:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->e:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method public final a(Lcom/tencent/mm/network/IDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->b:Lcom/tencent/mm/network/IDispatcher;

    return-void
.end method

.method public final a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->h:Z

    iget-boolean v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.NetSceneQueue"

    const-string v1, "the working process is ready to be killed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method public final b()V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    const-string v2, "MicroMsg.NetSceneQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset::cancel scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/modelbase/NetSceneBase;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    const-string v2, "MicroMsg.NetSceneQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset::cancel scene "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/modelbase/NetSceneBase;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->e:[Ljava/util/List;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->b:Lcom/tencent/mm/network/IDispatcher;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_9

    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v5

    if-ne v5, v3, :cond_2

    const-string v3, "MicroMsg.NetSceneQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forbid in running: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cur_running_cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->d()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forbid in running diagnostic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v5

    if-ne v5, v3, :cond_6

    const-string v3, "MicroMsg.NetSceneQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forbid in waiting: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cur_waiting_cnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->d()Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forbid in waiting diagnostic: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :cond_7
    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->d(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v3, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;

    invoke-direct {v3, p0, p1}, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;-><init>(Lcom/tencent/mm/modelbase/NetSceneQueue;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {v0, v3, v1}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/mm/modelbase/NetSceneBase;->g_()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->c(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
        0x18 -> :sswitch_0
        0x1d -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b()V

    return-void
.end method

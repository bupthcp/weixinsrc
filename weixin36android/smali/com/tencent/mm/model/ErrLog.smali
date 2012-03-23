.class public final Lcom/tencent/mm/model/ErrLog;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/tencent/mm/model/ErrLog;
    .locals 2

    new-instance v0, Lcom/tencent/mm/model/ErrLog;

    invoke-direct {v0}, Lcom/tencent/mm/model/ErrLog;-><init>()V

    new-instance v1, Lcom/tencent/mm/model/FromExceptionThread;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/mm/model/FromExceptionThread;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/tencent/mm/model/ErrLog;)V

    invoke-virtual {v1}, Lcom/tencent/mm/model/FromExceptionThread;->start()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    new-instance v2, Lcom/tencent/mm/model/ErrLog$Error;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/tencent/mm/model/ErrLog$Error;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()I
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lcom/tencent/mm/model/ErrLog$Error;
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/ErrLog;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/ErrLog$Error;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class final Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;-><init>(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadAmr in :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cnt :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v3, 0xc8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll byte null file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "ThreadAmr poll null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-static {v1, v3}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;I)I

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->e(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)I

    move-result v1

    if-gt v1, v6, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    const-string v1, "MicroMsg.MediaRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed up amrcodec queue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v4}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->e(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v1, v5}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;I)I

    :cond_3
    :goto_1
    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b()Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->a:I

    if-lt v1, v6, :cond_4

    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b()Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    move-result-object v1

    iget-wide v1, v1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->b:J

    const-wide/16 v3, 0xf0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v1, v5}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;I)I

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->f(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->e(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;I)I

    goto :goto_1

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->g(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->m()Z

    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish Thread :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :catch_1
    move-exception v0

    const-string v1, "MicroMsg.MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close amr file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.class Lcom/tencent/mm/modelvoice/MediaRecorder$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/MediaRecorder;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/MediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v1, p2, 0x2

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->l(Lcom/tencent/mm/modelvoice/MediaRecorder;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v2, v1}, Lcom/tencent/mm/modelvoice/MediaRecorder;->b(Lcom/tencent/mm/modelvoice/MediaRecorder;I)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->c(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_0

    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "recorder has been stopped"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->d(Lcom/tencent/mm/modelvoice/MediaRecorder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->e(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->e(Lcom/tencent/mm/modelvoice/MediaRecorder;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->e(Lcom/tencent/mm/modelvoice/MediaRecorder;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-string v2, "MicroMsg.MediaRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop now ! expire duration ms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i()Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->f(Lcom/tencent/mm/modelvoice/MediaRecorder;)I

    move-result v0

    new-array v0, v0, [B

    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->j()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->k()Landroid/media/AudioRecord;

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->k()Landroid/media/AudioRecord;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->f(Lcom/tencent/mm/modelvoice/MediaRecorder;)I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "MicroMsg.MediaRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->g(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " inPer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->h(Lcom/tencent/mm/modelvoice/MediaRecorder;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->c(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_3

    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "recorder has been stopped"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i()Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;->a()V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder;I)I

    invoke-direct {p0, v0, v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a([BI)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    new-instance v3, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-direct {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;-><init>()V

    invoke-static {v1, v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder;Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->j(Lcom/tencent/mm/modelvoice/MediaRecorder;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v4}, Lcom/tencent/mm/modelvoice/MediaRecorder;->k(Lcom/tencent/mm/modelvoice/MediaRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;ILjava/lang/String;)Z

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a([BI)V

    goto/16 :goto_0
.end method

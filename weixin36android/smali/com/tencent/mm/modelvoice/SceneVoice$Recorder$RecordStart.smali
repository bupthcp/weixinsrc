.class final Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;-><init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    const-string v1, "Stop Record Failed recorder == null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->g(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread Start Record  Error fileName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;J)J

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread Started Record fileName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v5}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->h(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class public Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:J

.field private f:J

.field private g:I

.field private h:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

.field private i:I

.field private j:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

.field private k:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

.field private l:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c:Z

    iput-boolean v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f:J

    iput v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->h:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iput v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$1;-><init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->l:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->j:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)I
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e:J

    return-wide v0
.end method

.method static synthetic i(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->j:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e:J

    if-nez p1, :cond_0

    const-string v1, "MicroMsg.SceneVoice.Recorder"

    const-string v2, "Start Record toUser null"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "_USER_FOR_THROWBOTTLE_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c:Z

    const-string v2, "medianote"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v2

    and-int/lit16 v2, v2, 0x4000

    if-nez v2, :cond_3

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->d:Z

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_2
    const-string v1, "MicroMsg.SceneVoice.Recorder"

    const-string v2, "Start Record DBError "

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->d:Z

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->d:Z

    if-eqz v2, :cond_5

    const-string v2, "medianote"

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v2, Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.tencent.mm_preferences"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "settings_voicerecorder_mode"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "settings_voicerecorder_mode"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    const-string v3, "settings_voicerecorder_mode"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    :goto_3
    invoke-direct {v2, v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;-><init>(Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;)V

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;-><init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a(Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;)V

    :cond_8
    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;-><init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->h:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->h:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->start()V

    iput v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->l:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start end time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_9
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop Record :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v1, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop synchronized Record :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b()Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->g(Ljava/lang/String;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    const-string v1, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by not onPart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    iget v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    int-to-long v1, v1

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-boolean v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    :cond_2
    const-string v1, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by voiceLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->g(Ljava/lang/String;)Z

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    :goto_1
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    iget v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Ljava/lang/String;I)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    const/4 v0, 0x1

    const-string v1, "MicroMsg.SceneVoice.Recorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop file success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final e()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b()Z

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    const-string v1, "Reset recorder.stopReocrd"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    iput-wide v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e:J

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->h:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i:I

    iput-wide v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f:J

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->j:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    iput-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g:I

    return v0
.end method

.method public final g()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->d()I

    move-result v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    const-string v0, "_USER_FOR_THROWBOTTLE_"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel Record :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop synchronized Record :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b()Z

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mark Canceled fileName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/AmrFileOperator;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g(I)V

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

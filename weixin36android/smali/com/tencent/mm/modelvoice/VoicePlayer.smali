.class public Lcom/tencent/mm/modelvoice/VoicePlayer;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;

.field private d:Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->c:Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->d:Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->d()V

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->e()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/VoicePlayer;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/VoicePlayer;)Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->c:Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;

    return-object v0
.end method

.method private a(ZI)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 6

    const/4 v2, 0x0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const-string v3, "VoicePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "START Mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    :goto_1
    return p1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;ZI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    if-eqz v2, :cond_0

    const-string v1, "VoicePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlay error status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2, p3}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(ZI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v1, "VoicePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPlay File["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/VoicePlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoice/VoicePlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelvoice/VoicePlayer;)Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->d:Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/tencent/mm/modelvoice/VoicePlayer$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoice/VoicePlayer$1;-><init>(Lcom/tencent/mm/modelvoice/VoicePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/tencent/mm/modelvoice/VoicePlayer$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoice/VoicePlayer$2;-><init>(Lcom/tencent/mm/modelvoice/VoicePlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    return v0
.end method

.method public final a(Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->c:Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->d:Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const-string v0, "VoicePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeakerOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->c()Z

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->d()V

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->e()V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Ljava/lang/String;ZI)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v1, "VoicePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop not STATUS_PLAYING or STATUS_PAUSE error status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "VoicePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop File["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ErrMsg["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer;->e:I

    goto :goto_0
.end method

.class public Lcom/tencent/mm/modelvoice/SceneVoice$Player;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/modelvoice/VoicePlayer;

.field private b:Z

.field private c:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;

.field private d:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b:Z

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->d:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->d:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    iput-boolean p2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b:Z

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Player$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player$2;-><init>(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;)V

    :cond_0
    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Player$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player$1;-><init>(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-static {p1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MicroMsg.SceneVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Record PlayError fileName["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->c()Z

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    goto :goto_0
.end method

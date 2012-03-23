.class Lcom/tencent/mm/modelvoice/VoicePlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/VoicePlayer;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/VoicePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoicePlayer$1;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer$1;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Lcom/tencent/mm/modelvoice/VoicePlayer;)Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer$1;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Lcom/tencent/mm/modelvoice/VoicePlayer;)Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer$OnCompletionListener;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer$1;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->b(Lcom/tencent/mm/modelvoice/VoicePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoicePlayer$1;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Lcom/tencent/mm/modelvoice/VoicePlayer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VoicePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCompletion File["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoicePlayer$1;->a:Lcom/tencent/mm/modelvoice/VoicePlayer;

    invoke-static {v3}, Lcom/tencent/mm/modelvoice/VoicePlayer;->c(Lcom/tencent/mm/modelvoice/VoicePlayer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ErrMsg["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

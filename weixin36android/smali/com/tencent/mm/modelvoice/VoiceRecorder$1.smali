.class Lcom/tencent/mm/modelvoice/VoiceRecorder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/VoiceRecorder;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/VoiceRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a(Lcom/tencent/mm/modelvoice/VoiceRecorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->a(Lcom/tencent/mm/modelvoice/VoiceRecorder;)Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->b(Lcom/tencent/mm/modelvoice/VoiceRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->h()V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c(Lcom/tencent/mm/modelvoice/VoiceRecorder;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VoiceRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setErrorListener File["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/VoiceRecorder$1;->a:Lcom/tencent/mm/modelvoice/VoiceRecorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceRecorder;->c()Ljava/lang/String;

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

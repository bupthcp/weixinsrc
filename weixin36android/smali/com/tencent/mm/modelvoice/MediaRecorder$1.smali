.class Lcom/tencent/mm/modelvoice/MediaRecorder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/MediaRecorder;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/MediaRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$1;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$1;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$1;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;->a()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$1;->a:Lcom/tencent/mm/modelvoice/MediaRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->b(Lcom/tencent/mm/modelvoice/MediaRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.MediaRecorder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

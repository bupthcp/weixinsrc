.class Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

.field private synthetic b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iput-object p2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iget-object v0, v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "MicroMsg.SceneVoice.Recorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On Part :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iget-object v0, v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iget-object v0, v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->d(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)I

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iget-object v0, v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart$1;->b:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;

    iget-object v0, v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$RecordStart;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;->a()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

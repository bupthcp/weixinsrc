.class Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoice/VoiceRecorder$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record Failed file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->g(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$2;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;->a()V

    :cond_0
    return-void
.end method

.class Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.VoiceLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSend null record : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    const-string v0, "MicroMsg.SceneVoice.Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Send fileName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-static {v2}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/VoiceInfo;->o()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h(I)V

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-static {v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;)Z

    goto :goto_0
.end method

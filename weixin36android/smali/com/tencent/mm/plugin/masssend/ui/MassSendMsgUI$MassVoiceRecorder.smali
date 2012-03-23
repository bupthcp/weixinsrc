.class Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;
.super Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i()Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->a:Ljava/lang/String;

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c()Z

    move-result v0

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e()V

    return v0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->c()Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->h(Ljava/lang/String;)Z

    return-void
.end method

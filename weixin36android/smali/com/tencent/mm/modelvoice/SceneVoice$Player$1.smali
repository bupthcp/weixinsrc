.class Lcom/tencent/mm/modelvoice/SceneVoice$Player$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoice/VoicePlayer$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/SceneVoice$Player;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/SceneVoice$Player$1;->a:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player;)Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;->m_()V

    :cond_0
    return-void
.end method

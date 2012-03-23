.class public Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/mm/ui/chatting/ChatFooter;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/app/ProgressDialog;

.field private h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

.field private i:J

.field private j:Landroid/widget/Toast;

.field private k:Landroid/os/Vibrator;

.field private l:Landroid/media/ToneGenerator;

.field private m:Z

.field private final n:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final o:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final p:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

.field private final q:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$1;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->n:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$2;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->o:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$3;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->p:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$4;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->q:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->j:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Lcom/tencent/mm/modelvideo/ImportVideo;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/ImportVideo;-><init>()V

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$25;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$25;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Lcom/tencent/mm/modelvideo/ImportVideo;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$26;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$26;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/tencent/mm/modelvideo/ImportVideo;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(I)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c(I)V

    new-instance v1, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;-><init>(Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a031d

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$20;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$20;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;)V

    invoke-static {v0, v2, v3, v5, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Lcom/tencent/mm/ui/chatting/ChatFooter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->j:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V
    .locals 6

    new-instance v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c(I)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d(I)V

    new-instance v1, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;-><init>(Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a031d

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$19;

    invoke-direct {v5, p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$19;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->n:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->o:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->l:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->k:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->q:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->p:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03006d

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.MassSendMsgUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_1

    sparse-switch p2, :sswitch_data_0

    const v0, 0x7f0a031f

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_0
    check-cast p4, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;

    invoke-virtual {p4}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;->d()I

    move-result v0

    const v1, 0x7f0a042c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$27;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$27;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0a0434

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x47 -> :sswitch_0
        -0x22 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const v7, 0x7f0a031d

    const/4 v6, 0x4

    const v4, 0x7f0a0010

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v0, "MicroMsg.MassSendMsgUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcvityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    const-string v0, "MicroMsg.MassSendMsgUI"

    const-string v1, "onActivityResult: not found this requestCode"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->d:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v6}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "CropImage_ImgPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;-><init>(Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$22;

    invoke-direct {v4, p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$22;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;)V

    invoke-static {v0, v2, v3, v5, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "art_smiley_slelct_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "VideoRecorder_FileName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoLength"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(I)V

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d(I)V

    const/16 v0, 0x2b

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c(I)V

    new-instance v0, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;

    iget-boolean v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    invoke-direct {v0, v2, v1}, Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;-><init>(Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$21;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$21;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Lcom/tencent/mm/plugin/masssend/model/NetSceneMasSend;)V

    invoke-static {v1, v2, v3, v5, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->g:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0a0331

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$23;

    invoke-direct {v1, p0, p3}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$23;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;Landroid/content/Intent;)V

    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$24;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$24;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-static {p0, v0, v4, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->r()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->q()V

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "VideoRecorder_NeedResult"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "VideoRecorder_ToUser"

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const v6, 0x7f070095

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x55

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mass_send_again"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->m:Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mass_send_contact_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->p:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->h:Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->q:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$MassVoiceRecorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;)V

    const v0, 0x7f0a042b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->d(I)V

    const v0, 0x7f07016a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->e:Landroid/widget/TextView;

    const v0, 0x7f070169

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->e:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->f:Landroid/widget/TextView;

    const v1, 0x7f0a0431

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x3c

    invoke-direct {v0, v5, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->l:Landroid/media/ToneGenerator;

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->k:Landroid/os/Vibrator;

    invoke-virtual {p0, v6}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChatFooter;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {p0, v6}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChatFooter;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    const v1, 0x7f070198

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$6;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$7;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$8;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$9;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$10;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$11;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$12;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$12;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$13;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$13;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$14;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$14;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$15;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$15;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$16;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$16;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$17;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$17;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$18;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$18;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;)V

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI$5;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->a:Ljava/util/List;

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x55

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->l:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->l()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->n()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;->c:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->e()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    return-void
.end method

.class public Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;
.implements Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;


# static fields
.field private static g:Lcom/tencent/mm/platformtools/SensorController;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

.field private c:Landroid/widget/Button;

.field private d:Lcom/tencent/mm/ui/MMPullDownView;

.field private e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

.field private f:Z

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)Lcom/tencent/mm/modelvoice/SceneVoice$Player;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0, v1}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :goto_1
    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-nez v3, :cond_2

    new-instance v3, Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-direct {v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;-><init>()V

    iput-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->f:Z

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->f:Z

    invoke-static {p0, v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;)V

    move v2, v1

    goto :goto_1

    :cond_3
    const v0, 0x7f0a0155

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)Lcom/tencent/mm/ui/MMPullDownView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->d:Lcom/tencent/mm/ui/MMPullDownView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030068

    return v0
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Z)V

    invoke-static {p0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->f:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Z)V

    invoke-static {p0, p1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iput-boolean p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->f:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public final l_()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b()V

    const v0, 0x7f0a000a

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final m_()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->c(Ljava/lang/String;)Z

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0426

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->d(I)V

    sget-object v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->g:Lcom/tencent/mm/platformtools/SensorController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/platformtools/SensorController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->g:Lcom/tencent/mm/platformtools/SensorController;

    :cond_0
    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    const v0, 0x7f070158

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMPullDownView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->d:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->d:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->d:Lcom/tencent/mm/ui/MMPullDownView;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$2;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->a(Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;)V

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$3;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$4;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$5;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->c:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$6;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$7;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$7;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0013

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$8;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->registerForContextMenu(Landroid/view/View;)V

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->e:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI$1;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    const-string v0, "MicroMsg.MassSendHistoryUI"

    const-string v1, "onCreateContextMenu"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0a013c

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->n()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    :try_start_0
    sget-object v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->g:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->g:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/SensorController;->a()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.MassSendHistoryUI"

    const-string v1, "sensor receiver has already unregistered"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a_(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->g:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;->g:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/platformtools/SensorController;->a(Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;)V

    return-void
.end method

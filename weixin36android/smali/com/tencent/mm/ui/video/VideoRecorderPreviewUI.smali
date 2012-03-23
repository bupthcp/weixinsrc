.class public Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;
.super Landroid/app/Activity;


# instance fields
.field private a:Z

.field private b:Lcom/tencent/mm/ui/video/VideoView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->e:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->i:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 4

    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$4;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$4;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    new-instance v3, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$5;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$5;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->f:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Lcom/tencent/mm/ui/video/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->requestWindowFeature(I)Z

    invoke-static {}, Lb/a/ad;->b()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0300fd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setContentView(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "VideoRecorder_ToUser"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "VideoRecorder_FileName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "VideoRecorder_NeedResult"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->k:Z

    const v0, 0x7f0702b0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->e:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$6;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0702a8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/video/VideoView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$7;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$8;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$9;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$10;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/video/VideoView;->b()V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/video/VideoView;->a(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->f:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->g:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$2;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->h:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0702b2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->d:Landroid/widget/TextView;

    const v0, 0x7f0702b1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "VideoRecorder_VideoSize"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setRequestedOrientation(I)V

    const v0, 0x7f0300fe

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setContentView(I)V

    goto/16 :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setRequestedOrientation(I)V

    goto :goto_0
.end method

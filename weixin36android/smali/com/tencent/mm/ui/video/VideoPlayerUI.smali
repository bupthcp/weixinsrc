.class public Lcom/tencent/mm/ui/video/VideoPlayerUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Lcom/tencent/mm/ui/video/VideoView;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b:Landroid/widget/ImageButton;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$8;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoView;->start()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoView;->pause()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Lcom/tencent/mm/ui/video/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoPlayerUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->g:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/video/VideoPlayerUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->f:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->i:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->c:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300ff

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0325

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "VideoPlayer_File_nam"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "VideoRecorder_VideoSize"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->f:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "VideoRecorder_VideoLength"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->g:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->h:Ljava/lang/String;

    const-string v0, "MicorMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0702b0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$1;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "MicorMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0702b3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/video/VideoView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$2;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$3;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string v0, "MicorMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoView;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "MicorMsg.VideoPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$4;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$5;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const v0, 0x7f0a0017

    new-instance v1, Lcom/tencent/mm/ui/video/VideoPlayerUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$6;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoPlayerUI$7;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI$7;-><init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0702b4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->c:Landroid/widget/TextView;

    const v0, 0x7f0702b5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->e:Landroid/widget/TextView;

    const v0, 0x7f0702b6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->d:Landroid/widget/TextView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoView;->b()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

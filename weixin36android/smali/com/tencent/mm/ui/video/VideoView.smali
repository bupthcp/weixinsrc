.class public Lcom/tencent/mm/ui/video/VideoView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Landroid/view/SurfaceHolder;

.field private e:Landroid/media/MediaPlayer;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/widget/MediaController;

.field private l:Landroid/media/MediaPlayer$OnCompletionListener;

.field private m:Landroid/media/MediaPlayer$OnPreparedListener;

.field private n:I

.field private o:Landroid/media/MediaPlayer$OnErrorListener;

.field private p:Z

.field private q:I

.field private r:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private s:Landroid/media/MediaPlayer$OnPreparedListener;

.field private t:Landroid/media/MediaPlayer$OnCompletionListener;

.field private u:Landroid/media/MediaPlayer$OnErrorListener;

.field private v:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private w:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/video/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->d:Landroid/view/SurfaceHolder;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoView$1;-><init>(Lcom/tencent/mm/ui/video/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->r:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoView$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoView$2;-><init>(Lcom/tencent/mm/ui/video/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoView$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoView$3;-><init>(Lcom/tencent/mm/ui/video/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoView$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoView$4;-><init>(Lcom/tencent/mm/ui/video/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->u:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoView$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoView$5;-><init>(Lcom/tencent/mm/ui/video/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->v:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v0, Lcom/tencent/mm/ui/video/VideoView$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoView$6;-><init>(Lcom/tencent/mm/ui/video/VideoView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->w:Landroid/view/SurfaceHolder$Callback;

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->g:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/video/VideoView;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->d:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->h:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/video/VideoView;->h:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/video/VideoView;->n:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/video/VideoView;->i:I

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->m:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->g:I

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->h:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->w:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/video/VideoView;->setFocusable(Z)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/video/VideoView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->requestFocus()Z

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoView;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/video/VideoView;->j:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->d:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    :cond_2
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->s:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->r:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    const-string v0, "MicroMsg.VideoView"

    const-string v1, "reset duration to -1 in openVideo"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->t:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->u:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->v:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->n:I

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->h:I

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->g:I

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-object v0, p0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/video/VideoView;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/video/VideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/video/VideoView;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->p:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/video/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->i:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/video/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->j:I

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/video/VideoView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->q:I

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/video/VideoView;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->q:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/video/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->l:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/video/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->o:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/video/VideoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/video/VideoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->e()V

    return-void
.end method

.method static synthetic q(Lcom/tencent/mm/ui/video/VideoView;)Landroid/media/MediaPlayer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/high16 v5, 0x3f80

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->a:Landroid/content/Context;

    const/high16 v1, 0x4360

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->a:Landroid/content/Context;

    const/high16 v1, 0x4390

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    const-string v0, "checked"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video size before:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "checked"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout size before:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getHeight()I

    move-result v0

    if-gtz v2, :cond_0

    move v2, v3

    :cond_0
    if-gtz v0, :cond_1

    move v0, v1

    :cond_1
    if-le v3, v2, :cond_2

    int-to-float v3, v3

    mul-float/2addr v3, v5

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    if-le v1, v0, :cond_5

    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float v3, v0

    div-float/2addr v1, v3

    int-to-float v3, v2

    div-float v1, v3, v1

    float-to-int v3, v1

    move v1, v0

    :cond_2
    :goto_0
    if-le v1, v0, :cond_4

    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float v4, v0

    div-float/2addr v1, v4

    int-to-float v3, v3

    div-float v1, v3, v1

    float-to-int v1, v1

    if-le v1, v2, :cond_3

    int-to-float v1, v1

    mul-float/2addr v1, v5

    int-to-float v3, v2

    div-float/2addr v1, v3

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v2

    :cond_3
    :goto_1
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/video/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->invalidate()V

    const-string v0, "checked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video size after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "checked"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout size after:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_1

    :cond_5
    move v3, v2

    goto/16 :goto_0
.end method

.method public final a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->l:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->o:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public final a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->m:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView;->b:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->p:Z

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->q:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->e()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->requestLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->invalidate()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->n:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->c:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->pause()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->start()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x56

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoView;->pause()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->f()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoView;->g:I

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/video/VideoView;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/video/VideoView;->h:I

    invoke-static {v1, p2}, Lcom/tencent/mm/ui/video/VideoView;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/video/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->f()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->k:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoView;->f()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->p:Z

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/mm/ui/video/VideoView;->q:I

    goto :goto_0
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->p:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoView;->p:Z

    goto :goto_0
.end method

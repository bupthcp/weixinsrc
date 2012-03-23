.class public Lcom/tencent/mm/modelvideo/SceneVideo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/modelvideo/vprotocal;

.field private b:Lcom/tencent/mm/modelvideo/RecordParams;

.field private c:Lcom/tencent/mm/modelvideo/YuvReocrder;

.field private d:Lcom/tencent/mm/modelvideo/PcmRecorder;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;

.field private i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

.field private j:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelvideo/SceneVideo$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvideo/SceneVideo$1;-><init>(Lcom/tencent/mm/modelvideo/SceneVideo;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/SceneVideo;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->g:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->h:Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->c:Lcom/tencent/mm/modelvideo/YuvReocrder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->d:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c()V

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Ljava/lang/String;Z)I
    .locals 6

    const/16 v5, 0x120

    const/16 v4, 0xe0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->f:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-direct {v2}, Lcom/tencent/mm/modelvideo/RecordParams;-><init>()V

    const/16 v3, 0xa

    iput v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    iput v1, v2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    iput v5, v2, Lcom/tencent/mm/modelvideo/RecordParams;->e:I

    iput v4, v2, Lcom/tencent/mm/modelvideo/RecordParams;->f:I

    iput v5, v2, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    iput v4, v2, Lcom/tencent/mm/modelvideo/RecordParams;->c:I

    iput v0, v2, Lcom/tencent/mm/modelvideo/RecordParams;->g:I

    const/4 v3, 0x4

    iput v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->h:I

    const-string v3, "/sdcard/1.yuv"

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->i:Ljava/lang/String;

    const-string v3, "/sdcard/1.mp4"

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->m:Ljava/lang/String;

    const-string v3, "/sdcard/1.pcm"

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->j:Ljava/lang/String;

    const-string v3, "/sdcard/1.x264"

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->l:Ljava/lang/String;

    iput v1, v2, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    iput v1, v2, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    iput v1, v2, Lcom/tencent/mm/modelvideo/RecordParams;->p:I

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-static {p1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.pcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.yuv"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp.vid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-static {}, Lb/a/ad;->a()I

    move-result v3

    iput v3, v2, Lcom/tencent/mm/modelvideo/RecordParams;->p:I

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    if-eqz p2, :cond_0

    :goto_0
    iput v0, v2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    new-instance v0, Lcom/tencent/mm/modelvideo/YuvReocrder;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/YuvReocrder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->c:Lcom/tencent/mm/modelvideo/YuvReocrder;

    new-instance v0, Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->d:Lcom/tencent/mm/modelvideo/PcmRecorder;

    new-instance v0, Lcom/tencent/mm/modelvideo/vprotocal;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/vprotocal;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->a:Lcom/tencent/mm/modelvideo/vprotocal;

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    invoke-static {v0, v1}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v3, 0x4360

    invoke-static {p1, v3}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v3

    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-static {v1, v3, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->c:Lcom/tencent/mm/modelvideo/YuvReocrder;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a(J)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->d:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b()I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/vprotocal;->b(Lcom/tencent/mm/modelvideo/RecordParams;)I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v1, v1, Lcom/tencent/mm/modelvideo/RecordParams;->f:I

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v2, v2, Lcom/tencent/mm/modelvideo/RecordParams;->e:I

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a(Ljava/lang/String;II)I

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;-><init>(Lcom/tencent/mm/modelvideo/SceneVideo;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->start()V

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->h:Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method public final a(Landroid/view/SurfaceHolder;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->c:Lcom/tencent/mm/modelvideo/YuvReocrder;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    invoke-virtual {v0, p1, v1, p2}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a(Landroid/view/SurfaceHolder;Lcom/tencent/mm/modelvideo/RecordParams;Z)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->d:Lcom/tencent/mm/modelvideo/PcmRecorder;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v1, v1, Lcom/tencent/mm/modelvideo/RecordParams;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->a(Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->c:I

    return v0
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v1, v1, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->c(Ljava/lang/String;)I

    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v1, v1, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->f:Ljava/lang/String;

    new-instance v3, Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-direct {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;-><init>()V

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->i(I)V

    invoke-virtual {v3, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(J)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->d(I)V

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->f(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Video size failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->e(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->f(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const-string v0, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Thumb size failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->g(I)V

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init record file:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " thumbsize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->i()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " videosize:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    goto/16 :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->g:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->d:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->a()I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->c:Lcom/tencent/mm/modelvideo/YuvReocrder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/YuvReocrder;->b()Z

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->b:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->c:Lcom/tencent/mm/modelvideo/YuvReocrder;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a(J)I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->d:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b()I

    return-void
.end method

.method public final l()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/modelvideo/vprotocal;->a()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->h:Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->j:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo;->i:Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

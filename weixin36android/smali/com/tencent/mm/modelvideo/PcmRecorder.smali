.class public Lcom/tencent/mm/modelvideo/PcmRecorder;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

.field private b:Landroid/media/AudioRecord;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/RandomAccessFile;

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->d:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->f:I

    const/16 v0, 0x3c0

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->g:I

    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->g:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->h:I

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->i:Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/PcmRecorder;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->f:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/modelvideo/PcmRecorder;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->f:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->e:[B

    return-object v0
.end method

.method private d()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const-string v2, "fmt "

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/16 v2, 0x1f40

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/16 v2, 0x3e80

    invoke-static {v2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelvideo/PcmRecorder;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->f:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    sget-object v1, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->i:Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->start()V

    sget-object v0, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->b:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 8

    const/16 v3, 0x1f40

    const/4 v7, 0x1

    const/4 v6, -0x5

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    sget-object v1, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->d:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->c:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    if-nez p1, :cond_1

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    invoke-static {v3, v2, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->h:I

    if-ge v1, v0, :cond_2

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->h:I

    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->h:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->g:I

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->h:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->g:I

    if-gtz v0, :cond_4

    :cond_3
    const/4 v0, -0x3

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->g:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->e:[B

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->h:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_5

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x4

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d()I

    move-result v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    move v0, v6

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;-><init>(Lcom/tencent/mm/modelvideo/PcmRecorder;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->i:Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;

    sget-object v0, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    sget-object v1, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->b:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->i:Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->a()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->i:Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->d:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    sget-object v1, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->b:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->b:Landroid/media/AudioRecord;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->d:Ljava/io/RandomAccessFile;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->c:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/tencent/mm/modelvideo/PcmRecorder$Status;->d:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder;->a:Lcom/tencent/mm/modelvideo/PcmRecorder$Status;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

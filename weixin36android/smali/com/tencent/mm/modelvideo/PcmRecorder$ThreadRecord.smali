.class Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/tencent/mm/modelvideo/PcmRecorder;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/modelvideo/PcmRecorder;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;-><init>(Lcom/tencent/mm/modelvideo/PcmRecorder;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/modelvideo/PcmRecorder;B)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->a:Z

    return-void
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->a(Lcom/tencent/mm/modelvideo/PcmRecorder;)I

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioRecord;->read([BII)I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v1

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->a(Lcom/tencent/mm/modelvideo/PcmRecorder;I)I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c(Lcom/tencent/mm/modelvideo/PcmRecorder;)[B

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->c()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->b(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->e(Lcom/tencent/mm/modelvideo/PcmRecorder;)I

    move-result v1

    add-int/lit8 v1, v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/PcmRecorder;->e(Lcom/tencent/mm/modelvideo/PcmRecorder;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->d(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->f(Lcom/tencent/mm/modelvideo/PcmRecorder;)Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->g(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/PcmRecorder$ThreadRecord;->b:Lcom/tencent/mm/modelvideo/PcmRecorder;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/PcmRecorder;->h(Lcom/tencent/mm/modelvideo/PcmRecorder;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

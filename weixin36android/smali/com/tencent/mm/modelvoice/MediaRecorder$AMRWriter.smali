.class Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;
.super Ljava/lang/Object;


# static fields
.field private static i:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;

.field private b:Z

.field private c:Ljava/io/FileOutputStream;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private j:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->i:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a:Ljava/util/concurrent/BlockingQueue;

    iput-boolean v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b:Z

    iput-boolean v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->f:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->g:I

    iput v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->j:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->h:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;I)V
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;->a:[B

    iget v1, p1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;->b:I

    iget-object v2, p1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;->a:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v0, p1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;->b:I

    new-array v0, v0, [B

    iget v1, p1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;->b:I

    invoke-static {v0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    new-instance v1, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v1}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    new-instance v2, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iget v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->e:I

    invoke-static {v3, v0, v1, p2}, Lcom/tencent/mm/modelvoice/MediaRecorder;->a(I[BLcom/tencent/mm/pointers/PByteArray;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "pcm2amr failed, native failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->i:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    iget-wide v4, v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->b:J

    iget v6, v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->a:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v4, v2

    iget v6, v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->a:I

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->b:J

    iget v4, v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->a:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->a:I

    :cond_3
    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "append2amrfile AmrTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " useFloat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nowqueue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " avg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->i:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    iget-wide v3, v3, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->i:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    iget v3, v3, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c:Ljava/io/FileOutputStream;

    iget-object v1, v1, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Write File Error file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    iput p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->e:I

    iput-object p2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c:Ljava/io/FileOutputStream;

    const-string v2, "#!AMR\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->l()Z

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.MediaRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init Amr out file Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;ILjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->g:I

    return p1
.end method

.method static synthetic b()Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->i:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$StatFloatTime;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->h:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->g:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Ljava/io/FileOutputStream;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->c:Ljava/io/FileOutputStream;

    return-object v0
.end method


# virtual methods
.method public final a([BI)V
    .locals 3

    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push into queue queueLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " buf:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->j:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;-><init>(Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->j:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->j:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->start()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;

    invoke-direct {v1, p1, p2}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ByteBuffer;-><init>([BI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "wait finish"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->j:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter$ThreadAmr;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

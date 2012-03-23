.class public Lcom/tencent/mm/modelvoice/MediaRecorder;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field private static h:Ljava/lang/Object;

.field private static i:Landroid/media/AudioRecord;


# instance fields
.field private b:Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

.field private f:J

.field private g:J

.field private j:Landroid/media/MediaRecorder;

.field private k:I

.field private l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

.field private m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

.field private r:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->a:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    return-void

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;)V
    .locals 8

    const/16 v5, 0x1f40

    const/4 v7, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->c:I

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->f:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->g:J

    iput v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    iput v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->o:I

    iput v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->p:I

    new-instance v0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->q:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    new-instance v0, Lcom/tencent/mm/modelvoice/MediaRecorder$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelvoice/MediaRecorder$2;-><init>(Lcom/tencent/mm/modelvoice/MediaRecorder;)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->r:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->k:I

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->c:I

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    const/16 v0, 0x3c0

    iput v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->o:I

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->o:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x8

    invoke-static {v5, v4, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    if-lt v0, v5, :cond_1

    move v5, v0

    :cond_1
    const-string v1, "MicroMsg.MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init bufferSize(2):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " framePeriod:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " forSystemBufSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    :try_start_0
    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!out mutex :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!in mutex :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    :cond_2
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v2, 0x1f40

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v7, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioRecord initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "MicroMsg.MediaRecorder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    :goto_2
    iput v7, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->k:I

    goto/16 :goto_0

    :cond_3
    :try_start_3
    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@@@@@@@@@!!in mutex :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->r:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    iget v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->o:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_4
    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "Unknown error occured while initializing recording"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->p:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder;Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;)Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

    return-object v0
.end method

.method static synthetic a(I[BLcom/tencent/mm/pointers/PByteArray;I)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/modelvoice/MediaRecorder;->native_pcm2amr(I[BLcom/tencent/mm/pointers/PByteArray;I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/MediaRecorder;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->c:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/modelvoice/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$State;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelvoice/MediaRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->g:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelvoice/MediaRecorder;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->f:J

    return-wide v0
.end method

.method static synthetic f(Lcom/tencent/mm/modelvoice/MediaRecorder;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/algorithm/CodeInfo$TestTime;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->q:Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/modelvoice/MediaRecorder;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->p:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/modelvoice/MediaRecorder;)Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/modelvoice/MediaRecorder;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->k:I

    return v0
.end method

.method static synthetic j()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k()Landroid/media/AudioRecord;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/modelvoice/MediaRecorder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/modelvoice/MediaRecorder;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->c:I

    return v0
.end method

.method static synthetic l()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->native_init(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic m()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/modelvoice/MediaRecorder;->native_release()Z

    move-result v0

    return v0
.end method

.method private static native native_init(Z)Z
.end method

.method private static native native_pcm2amr(I[BLcom/tencent/mm/pointers/PByteArray;I)Z
.end method

.method private static native native_release()Z
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    const v1, 0x11170

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x11170

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->f:J

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    new-instance v1, Lcom/tencent/mm/modelvoice/MediaRecorder$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoice/MediaRecorder$1;-><init>(Lcom/tencent/mm/modelvoice/MediaRecorder;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$OnErrorListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "MicroMsg.MediaRecorder"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    goto :goto_0

    :cond_3
    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "Unknown error occured while setting output path"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_2

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_0
.end method

.method public final e()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->c:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->c:I

    iput v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->c:I

    move v0, v1

    goto :goto_0
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_0

    :cond_1
    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start now  state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->g:J

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->c:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    new-array v0, v0, [B

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    sget-object v2, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MicroMsg.MediaRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in Start Read:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-string v0, "MicroMsg.MediaRecorder"

    const-string v1, "start() called on illegal state"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    goto :goto_0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->a:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->h()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->c:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/modelvoice/MediaRecorder;->i()Z

    :cond_2
    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()Z
    .locals 9

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->l:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    sget-object v3, Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;->b:Lcom/tencent/mm/modelvoice/MediaRecorder$RECMODE;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    iget-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    iput-object v4, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->j:Landroid/media/MediaRecorder;

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    const-string v3, "MicroMsg.MediaRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop now  state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    sget-object v4, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->c:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    if-eq v3, v4, :cond_2

    const-string v1, "MicroMsg.MediaRecorder"

    const-string v2, "stop() called on illegal state"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->d:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v1, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v3

    const-string v0, "MicroMsg.MediaRecorder"

    const-string v5, "stop clean data"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    new-array v0, v0, [B

    sget-object v5, Lcom/tencent/mm/modelvoice/MediaRecorder;->h:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    sget-object v6, Lcom/tencent/mm/modelvoice/MediaRecorder;->i:Landroid/media/AudioRecord;

    const/4 v7, 0x0

    iget v8, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->n:I

    invoke-virtual {v6, v0, v7, v8}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "MicroMsg.MediaRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stop clean data read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-virtual {v5, v0, v6}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a([BI)V

    if-gtz v6, :cond_3

    sget-object v0, Lcom/tencent/mm/modelvoice/MediaRecorder$State;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->m:Lcom/tencent/mm/modelvoice/MediaRecorder$State;

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v5

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/MediaRecorder;->e:Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/MediaRecorder$AMRWriter;->a()Z

    const-string v0, "MicroMsg.MediaRecorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wait Stop Time Media:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Read:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Thr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

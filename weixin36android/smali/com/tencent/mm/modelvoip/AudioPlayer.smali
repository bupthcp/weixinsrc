.class public Lcom/tencent/mm/modelvoip/AudioPlayer;
.super Ljava/lang/Thread;


# static fields
.field private static m:F


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:[B

.field private f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/media/AudioTrack;

.field private l:Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;

.field private n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelvoip/AudioPlayer;->m:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->b:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->c:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->g:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->h:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->i:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->j:I

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->l:Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->b:Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/content/Context;)I
    .locals 8

    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->n:Landroid/content/Context;

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->h:I

    if-ne v0, v4, :cond_1

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->c:I

    :goto_0
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->g:I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->c:I

    invoke-static {v0, v2, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_0
    move v6, v7

    :goto_1
    return v6

    :cond_1
    iput v4, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->c:I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->g:I

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->c:I

    iget v5, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    if-nez v0, :cond_4

    move v6, v7

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->j:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    if-nez v0, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    iput-boolean v7, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    iput-boolean v7, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->b:Z

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->l:Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;

    return-void
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->g:I

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->h:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->i:I

    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->g:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->i:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->j:I

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/AudioPlayer;->start()V

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/AudioPlayer;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    move v0, v1

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->a:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->l:Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->l:Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    invoke-interface {v2, v3}, Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;->a([B)I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->j:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    iget v4, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->j:I

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    const-string v3, "AudioPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioTrack.write :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    iget v4, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    sub-int/2addr v4, v0

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    iget-object v4, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/media/AudioTrack;->write([BII)I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    sub-int v0, v2, v0

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->j:I

    sub-int/2addr v2, v0

    move v6, v0

    move v0, v2

    move v2, v6

    :goto_1
    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->k:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    iget v5, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioTrack;->write([BII)I

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->d:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->f:[B

    iget-object v4, p0, Lcom/tencent/mm/modelvoip/AudioPlayer;->e:[B

    invoke-static {v3, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    return-void
.end method

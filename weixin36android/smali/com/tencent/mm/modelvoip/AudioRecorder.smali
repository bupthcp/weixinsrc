.class public Lcom/tencent/mm/modelvoip/AudioRecorder;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/media/AudioRecord;

.field b:Z

.field c:Z

.field d:Z

.field e:[B

.field f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:[B

.field private p:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->g:I

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->b:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->d:Z

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->j:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->k:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->l:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->m:I

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    iput-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->b:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->d:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelvoip/AudioRecorder;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->p:Landroid/content/Context;

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->k:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->g:I

    :goto_0
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->j:I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->g:I

    invoke-static {v0, v2, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_0
    move v1, v6

    :goto_1
    return v1

    :cond_1
    iput v4, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->g:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->j:I

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->g:I

    iget v5, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_3

    move v1, v6

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    if-nez v0, :cond_4

    move v1, v6

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    if-gtz v0, :cond_5

    move v1, v6

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    if-nez v0, :cond_6

    move v1, v6

    goto :goto_1

    :cond_6
    iput v6, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    iput v6, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->m:I

    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->b:Z

    iput-boolean v6, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    goto :goto_1
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x1f40

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->j:I

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->k:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->l:I

    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->j:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->l:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    goto :goto_0
.end method

.method public run()V
    .locals 8

    const/16 v7, 0x140

    const/4 v6, 0x0

    iput v6, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    iput v6, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->m:I

    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->c:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->d:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoip/AudioRecorder;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->i:I

    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    invoke-virtual {v0, v1, v6, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    new-array v1, v7, [B

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    invoke-static {v2, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    invoke-interface {v0, v1}, Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;->a([B)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->a:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v6, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->m:I

    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->m:I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    iget v4, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    iget v5, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    sub-int/2addr v4, v5

    invoke-static {v1, v6, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    invoke-interface {v1, v2}, Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;->a([B)I

    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    sub-int/2addr v1, v2

    sub-int v1, v0, v1

    iget v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    sub-int/2addr v0, v2

    :goto_1
    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    if-lt v1, v2, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    iget v4, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    invoke-static {v2, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->f:Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;

    iget-object v3, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    invoke-interface {v2, v3}, Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;->a([B)I

    :cond_4
    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->h:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_5
    iput v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    invoke-static {v1, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->e:[B

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->o:[B

    iget v3, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    invoke-static {v1, v6, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelvoip/AudioRecorder;->n:I

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.class public Lcom/tencent/mm/modelemoji/GifDecoder;
.super Ljava/lang/Thread;


# instance fields
.field private A:I

.field private B:Z

.field private C:I

.field private D:I

.field private E:[S

.field private F:[B

.field private G:[B

.field private H:[B

.field private I:Ljava/util/Vector;

.field private J:[B

.field private a:Ljava/io/InputStream;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:[I

.field private h:[I

.field private i:[I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:[B

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->x:[B

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->z:I

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->A:I

    iput-boolean v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->B:Z

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->C:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->J:[B

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->J:[B

    return-void
.end method

.method private a()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)[I
    .locals 9

    const/4 v1, 0x0

    mul-int/lit8 v3, p1, 0x3

    const/4 v0, 0x0

    new-array v4, v3, [B

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-ge v2, v3, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x100

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "GIF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->f:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->c:Z

    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->d:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->j:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->d:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->g:[I

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->g:[I

    iget v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->j:I

    aget v0, v0, v1

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->k:I

    goto :goto_1
.end method

.method private c()V
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v2

    :cond_0
    :goto_0
    :sswitch_0
    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iput v8, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->g()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    and-int/lit8 v3, v0, 0x1c

    shr-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->z:I

    iget v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->z:I

    if-nez v3, :cond_1

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->z:I

    :cond_1
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->B:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->C:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->D:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->j()I

    const-string v0, ""

    move-object v3, v0

    move v0, v2

    :goto_2
    const/16 v5, 0xb

    if-ge v0, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->x:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->f()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->g()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->p:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->q:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->r:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->i()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->s:I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->m:Z

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_9

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->n:Z

    const/4 v0, 0x2

    and-int/lit8 v3, v3, 0x7

    shl-int/2addr v0, v3

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->o:I

    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->m:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->o:I

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->h:[I

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->h:[I

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    :cond_5
    :goto_5
    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->B:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    iget v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->D:I

    aget v0, v0, v3

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->D:I

    aput v2, v3, v5

    :goto_6
    iget-object v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    if-nez v3, :cond_6

    iput v8, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    :cond_6
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->d()V

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->g()V

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    new-instance v5, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->e()Landroid/graphics/Bitmap;

    move-result-object v6

    iget v7, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->C:I

    invoke-direct {v5, p0, v6, v7}, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;-><init>(Lcom/tencent/mm/modelemoji/GifDecoder;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->B:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->D:I

    aput v0, v3, v5

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->z:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->A:I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->p:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->t:I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->q:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->u:I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->r:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->v:I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->s:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->w:I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->k:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->l:I

    iput v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->z:I

    iput-boolean v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->B:Z

    iput v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->C:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->h:[I

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->g:[I

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->j:I

    iget v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->D:I

    if-ne v0, v3, :cond_5

    iput v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->k:I

    goto :goto_5

    :sswitch_5
    move v4, v1

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    move v0, v2

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_1
        0x2c -> :sswitch_4
        0x3b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_2
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private d()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->r:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->s:I

    mul-int v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->H:[B

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->H:[B

    array-length v1, v1

    if-ge v1, v15, :cond_1

    :cond_0
    new-array v1, v15, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->H:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->E:[S

    if-nez v1, :cond_2

    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->E:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    if-nez v1, :cond_3

    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    if-nez v1, :cond_4

    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v16

    const/4 v1, 0x1

    shl-int v17, v1, v16

    add-int/lit8 v18, v17, 0x1

    add-int/lit8 v11, v17, 0x2

    const/4 v10, -0x1

    add-int/lit8 v3, v16, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v1, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->E:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    const/4 v1, 0x0

    move v5, v12

    move v6, v12

    move v7, v12

    move v14, v1

    move v2, v12

    move v8, v12

    move v1, v12

    :goto_1
    if-ge v14, v15, :cond_c

    if-nez v5, :cond_f

    if-ge v8, v3, :cond_7

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->j()I

    move-result v2

    if-lez v2, :cond_c

    const/4 v1, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->x:[B

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_7
    and-int v9, v7, v4

    shr-int/2addr v7, v3

    sub-int/2addr v8, v3

    if-gt v9, v11, :cond_c

    move/from16 v0, v18

    if-eq v9, v0, :cond_c

    move/from16 v0, v17

    if-ne v9, v0, :cond_8

    add-int/lit8 v3, v16, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v11, v17, 0x2

    const/4 v10, -0x1

    goto :goto_1

    :cond_8
    const/4 v13, -0x1

    if-ne v10, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    aget-byte v13, v13, v9

    aput-byte v13, v10, v5

    move v5, v6

    move v10, v9

    move v6, v9

    goto :goto_1

    :cond_9
    if-ne v9, v11, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    move-object/from16 v19, v0

    add-int/lit8 v13, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v19, v5

    move v6, v10

    :goto_2
    move/from16 v0, v17

    if-le v6, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    move-object/from16 v19, v0

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v6

    aput-byte v20, v19, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->E:[S

    aget-short v6, v13, v6

    move v13, v5

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    move-object/from16 v19, v0

    add-int/lit8 v5, v13, 0x1

    int-to-byte v0, v6

    move/from16 v20, v0

    aput-byte v20, v19, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->E:[S

    int-to-short v10, v10

    aput-short v10, v13, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->F:[B

    int-to-byte v13, v6

    aput-byte v13, v10, v11

    add-int/lit8 v10, v11, 0x1

    and-int v11, v10, v4

    if-nez v11, :cond_b

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_b

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v10

    :cond_b
    move/from16 v21, v5

    move v5, v7

    move v7, v9

    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v21

    :goto_3
    add-int/lit8 v11, v3, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->H:[B

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->G:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v11

    aput-byte v19, v13, v12

    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move v12, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v9

    move/from16 v21, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move/from16 v10, v21

    goto/16 :goto_1

    :cond_c
    move v1, v12

    :goto_4
    if-ge v1, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/mm/modelemoji/GifDecoder;->H:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_d
    return-void

    :cond_e
    move v13, v5

    move v6, v9

    goto/16 :goto_2

    :cond_f
    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v10

    move v10, v11

    goto :goto_3
.end method

.method private e()Landroid/graphics/Bitmap;
    .locals 14

    const/4 v3, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    iget v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->f:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    :goto_0
    iget v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->A:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->A:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v8, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    iget v6, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    iget v7, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->f:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->A:I

    if-ne v0, v10, :cond_3

    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->B:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->l:I

    :goto_2
    move v3, v2

    :goto_3
    iget v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->w:I

    if-ge v3, v4, :cond_3

    iget v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->u:I

    add-int/2addr v4, v3

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->t:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->v:I

    add-int/2addr v5, v4

    :goto_4
    if-ge v4, v5, :cond_2

    aput v0, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_1
    move-object v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    move v3, v0

    move v4, v8

    move v0, v2

    :goto_5
    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->s:I

    if-ge v2, v5, :cond_8

    iget-boolean v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->n:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->s:I

    if-lt v0, v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_0

    :cond_4
    :goto_6
    add-int v5, v0, v3

    move v13, v0

    move v0, v5

    move v5, v13

    :goto_7
    iget v6, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->q:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->f:I

    if-ge v5, v6, :cond_7

    iget v6, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    mul-int v7, v5, v6

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->p:I

    add-int v6, v7, v5

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->r:I

    add-int/2addr v5, v6

    iget v11, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    add-int/2addr v11, v7

    if-ge v11, v5, :cond_5

    iget v5, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    add-int/2addr v5, v7

    :cond_5
    iget v7, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->r:I

    mul-int/2addr v7, v2

    :goto_8
    if-ge v6, v5, :cond_7

    iget-object v12, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->H:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    iget-object v12, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->i:[I

    aget v7, v12, v7

    if-eqz v7, :cond_6

    aput v7, v1, v6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    move v7, v11

    goto :goto_8

    :pswitch_0
    move v0, v9

    goto :goto_6

    :pswitch_1
    move v0, v10

    move v3, v9

    goto :goto_6

    :pswitch_2
    move v0, v8

    move v3, v10

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->e:I

    iget v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->f:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_9
    move v5, v2

    goto :goto_7

    :cond_a
    move v0, v2

    goto/16 :goto_2

    :cond_b
    move-object v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->j()I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->j()I

    iget v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private h()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    goto :goto_0
.end method

.method private i()I
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private j()I
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->x:[B

    iget v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eq v1, v4, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->y:I

    if-ge v0, v1, :cond_1

    iput v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/util/Vector;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->I:Ljava/util/Vector;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->J:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->a:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->J:[B

    iput v1, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->b:I

    iput-object v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->g:[I

    iput-object v4, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->h:[I

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->b()V

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->c()V

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/modelemoji/GifDecoder;->a:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/GifDecoder;->a()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

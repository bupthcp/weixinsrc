.class public La/b/c;
.super La/e;


# instance fields
.field private a:[B

.field private final b:[I


# direct methods
.method public constructor <init>(La/o;)V
    .locals 1

    invoke-direct {p0, p1}, La/e;-><init>(La/o;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, La/b/c;->a:[B

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, La/b/c;->b:[I

    return-void
.end method


# virtual methods
.method public a()La/b/a;
    .locals 14

    const/4 v6, 0x0

    invoke-virtual {p0}, La/b/c;->b()La/o;

    move-result-object v8

    invoke-virtual {v8}, La/o;->c()I

    move-result v9

    invoke-virtual {v8}, La/o;->d()I

    move-result v10

    new-instance v11, La/b/a;

    invoke-direct {v11, v9, v10}, La/b/a;-><init>(II)V

    iget-object v0, p0, La/b/c;->a:[B

    array-length v0, v0

    if-ge v0, v9, :cond_0

    new-array v0, v9, [B

    iput-object v0, p0, La/b/c;->a:[B

    :cond_0
    move v0, v6

    :goto_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    iget-object v12, p0, La/b/c;->b:[I

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_2

    array-length v13, v12

    move v2, v6

    move v0, v6

    move v1, v6

    move v3, v6

    :goto_2
    if-lt v2, v13, :cond_4

    move v2, v6

    move v0, v6

    move v5, v6

    :goto_3
    if-lt v2, v13, :cond_7

    if-le v1, v0, :cond_e

    move v5, v1

    move v7, v0

    :goto_4
    sub-int v0, v5, v7

    shr-int/lit8 v1, v13, 0x4

    if-gt v0, v1, :cond_8

    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v1, p0, La/b/c;->b:[I

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    mul-int v0, v10, v1

    div-int/lit8 v0, v0, 0x5

    iget-object v2, p0, La/b/c;->a:[B

    invoke-virtual {v8, v0, v2}, La/o;->a(I[B)[B

    move-result-object v2

    shl-int/lit8 v0, v9, 0x2

    div-int/lit8 v3, v0, 0x5

    div-int/lit8 v0, v9, 0x5

    :goto_5
    if-lt v0, v3, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x3

    aget v5, v12, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v12, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    aget v4, v12, v2

    if-le v4, v0, :cond_5

    aget v0, v12, v2

    move v1, v2

    :cond_5
    aget v4, v12, v2

    if-le v4, v3, :cond_6

    aget v3, v12, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sub-int v4, v2, v1

    aget v7, v12, v2

    mul-int/2addr v7, v4

    mul-int/2addr v4, v7

    if-le v4, v5, :cond_f

    move v0, v2

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v5, -0x1

    const/4 v1, -0x1

    add-int/lit8 v2, v5, -0x1

    :goto_7
    if-gt v2, v7, :cond_9

    shl-int/lit8 v2, v4, 0x3

    invoke-virtual {v8}, La/o;->a()[B

    move-result-object v3

    move v1, v6

    :goto_8
    if-lt v1, v10, :cond_a

    return-object v11

    :cond_9
    sub-int v0, v2, v7

    mul-int/2addr v0, v0

    sub-int v13, v5, v2

    mul-int/2addr v0, v13

    aget v13, v12, v2

    sub-int v13, v3, v13

    mul-int/2addr v0, v13

    if-le v0, v1, :cond_d

    move v1, v2

    :goto_9
    add-int/lit8 v2, v2, -0x1

    move v4, v1

    move v1, v0

    goto :goto_7

    :cond_a
    mul-int v4, v1, v9

    move v0, v6

    :goto_a
    if-lt v0, v9, :cond_b

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_b
    add-int v5, v4, v0

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v2, :cond_c

    invoke-virtual {v11, v0, v1}, La/b/a;->b(II)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_d
    move v0, v1

    move v1, v4

    goto :goto_9

    :cond_e
    move v5, v0

    move v7, v1

    goto/16 :goto_4

    :cond_f
    move v4, v5

    goto :goto_6
.end method

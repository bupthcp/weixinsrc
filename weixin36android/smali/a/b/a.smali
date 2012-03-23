.class public final La/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, La/b/a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Both dimensions must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, La/b/a;->a:I

    iput p2, p0, La/b/a;->b:I

    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    iput v0, p0, La/b/a;->c:I

    iget v0, p0, La/b/a;->c:I

    mul-int/2addr v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, La/b/a;->d:[I

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 9

    if-ltz p2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Left and top must be nonnegative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lez p4, :cond_2

    if-gtz p3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height and width must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v1, p1, p3

    add-int v2, p2, p4

    iget v0, p0, La/b/a;->b:I

    if-gt v2, v0, :cond_4

    iget v0, p0, La/b/a;->a:I

    if-le v1, v0, :cond_6

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The region must fit inside the matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, La/b/a;->c:I

    mul-int v3, p2, v0

    move v0, p1

    :goto_0
    if-lt v0, v1, :cond_7

    add-int/lit8 p2, p2, 0x1

    :cond_6
    if-lt p2, v2, :cond_5

    return-void

    :cond_7
    iget-object v4, p0, La/b/a;->d:[I

    shr-int/lit8 v5, v0, 0x5

    add-int/2addr v5, v3

    aget v6, v4, v5

    const/4 v7, 0x1

    and-int/lit8 v8, v0, 0x1f

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 2

    iget v0, p0, La/b/a;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, La/b/a;->d:[I

    aget v0, v1, v0

    and-int/lit8 v1, p1, 0x1f

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()[I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, La/b/a;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, La/b/a;->d:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, La/b/a;->d:[I

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v2, p0, La/b/a;->c:I

    div-int v2, v0, v2

    iget v3, p0, La/b/a;->c:I

    rem-int v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    iget-object v4, p0, La/b/a;->d:[I

    aget v4, v4, v0

    move v0, v1

    :goto_2
    rsub-int/lit8 v5, v0, 0x1f

    shl-int v5, v4, v5

    if-eqz v5, :cond_3

    add-int/2addr v3, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final b(II)V
    .locals 5

    iget v0, p0, La/b/a;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, La/b/a;->d:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public final b()[I
    .locals 5

    iget-object v0, p0, La/b/a;->d:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, La/b/a;->d:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget v1, p0, La/b/a;->c:I

    div-int v1, v0, v1

    iget v2, p0, La/b/a;->c:I

    rem-int v2, v0, v2

    shl-int/lit8 v2, v2, 0x5

    iget-object v3, p0, La/b/a;->d:[I

    aget v3, v3, v0

    const/16 v0, 0x1f

    :goto_2
    ushr-int v4, v3, v0

    if-eqz v4, :cond_3

    add-int/2addr v2, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/b/a;->a:I

    return v0
.end method

.method public final c(II)V
    .locals 5

    iget v0, p0, La/b/a;->c:I

    mul-int/2addr v0, p2

    shr-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    iget-object v1, p0, La/b/a;->d:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    aput v2, v1, v0

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, La/b/a;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v0, p1, La/b/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, La/b/a;

    iget v0, p0, La/b/a;->a:I

    iget v2, p1, La/b/a;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, La/b/a;->b:I

    iget v2, p1, La/b/a;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p0, La/b/a;->c:I

    iget v2, p1, La/b/a;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, La/b/a;->d:[I

    array-length v0, v0

    iget-object v2, p1, La/b/a;->d:[I

    array-length v2, v2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_1
    iget-object v2, p0, La/b/a;->d:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, La/b/a;->d:[I

    aget v2, v2, v0

    iget-object v3, p1, La/b/a;->d:[I

    aget v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, La/b/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/b/a;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/b/a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/b/a;->c:I

    add-int/2addr v1, v0

    iget-object v2, p0, La/b/a;->d:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return v1

    :cond_0
    aget v4, v2, v0

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, p0, La/b/a;->b:I

    iget v2, p0, La/b/a;->a:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v0, v2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    :goto_0
    iget v2, p0, La/b/a;->b:I

    if-lt v0, v2, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v1

    :goto_1
    iget v3, p0, La/b/a;->a:I

    if-lt v2, v3, :cond_1

    const/16 v2, 0xa

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0}, La/b/a;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "X "

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "  "

    goto :goto_2
.end method

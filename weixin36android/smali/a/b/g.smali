.class public final La/b/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/g;->a:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, La/b/g;->a:[B

    array-length v0, v0

    iget v1, p0, La/b/g;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, La/b/g;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(I)I
    .locals 8

    const/16 v7, 0xff

    const/16 v6, 0x8

    const/4 v2, 0x0

    if-lez p1, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, La/b/g;->c:I

    if-lez v0, :cond_6

    iget v0, p0, La/b/g;->c:I

    rsub-int/lit8 v1, v0, 0x8

    if-ge p1, v1, :cond_4

    move v0, p1

    :goto_0
    sub-int/2addr v1, v0

    rsub-int/lit8 v3, v0, 0x8

    shr-int v3, v7, v3

    shl-int/2addr v3, v1

    iget-object v4, p0, La/b/g;->a:[B

    iget v5, p0, La/b/g;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shr-int v1, v3, v1

    sub-int/2addr p1, v0

    iget v3, p0, La/b/g;->c:I

    add-int/2addr v0, v3

    iput v0, p0, La/b/g;->c:I

    iget v0, p0, La/b/g;->c:I

    if-ne v0, v6, :cond_2

    iput v2, p0, La/b/g;->c:I

    iget v0, p0, La/b/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/b/g;->b:I

    :cond_2
    move v0, v1

    move v1, p1

    :goto_1
    if-lez v1, :cond_3

    :goto_2
    if-ge v1, v6, :cond_5

    if-lez v1, :cond_3

    rsub-int/lit8 v2, v1, 0x8

    shr-int v3, v7, v2

    shl-int/2addr v3, v2

    shl-int/2addr v0, v1

    iget-object v4, p0, La/b/g;->a:[B

    iget v5, p0, La/b/g;->b:I

    aget-byte v4, v4, v5

    and-int/2addr v3, v4

    shr-int v2, v3, v2

    or-int/2addr v0, v2

    iget v2, p0, La/b/g;->c:I

    add-int/2addr v1, v2

    iput v1, p0, La/b/g;->c:I

    :cond_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    shl-int/lit8 v0, v0, 0x8

    iget-object v2, p0, La/b/g;->a:[B

    iget v3, p0, La/b/g;->b:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    iget v2, p0, La/b/g;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, La/b/g;->b:I

    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    :cond_6
    move v0, v2

    move v1, p1

    goto :goto_1
.end method

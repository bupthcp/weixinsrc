.class public final Lc/a/a/a/b/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/a/b/a;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/a/b/a;->c:I

    add-int/lit8 v0, p2, 0x0

    iput v0, p0, Lc/a/a/a/b/a;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc/a/a/a/a;->a(II)I

    move-result v0

    invoke-static {v0}, Lc/a/a/a/b/a;->b(I)I

    move-result v0

    return v0
.end method

.method public static a([B)Lc/a/a/a/b/a;
    .locals 2

    array-length v0, p0

    new-instance v1, Lc/a/a/a/b/a;

    invoke-direct {v1, p0, v0}, Lc/a/a/a/b/a;-><init>([BI)V

    return-object v1
.end method

.method private a(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->c(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->c(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x20

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x1000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static b(IJ)I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v1

    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const-wide/16 v2, -0x4000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v2, -0x200000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v2, -0x10000000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v2, -0x800000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v2, -0x40000000000L

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v2, -0x2

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v2, -0x100

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v2, -0x8000

    and-long/2addr v2, p1

    cmp-long v0, v2, v4

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v1

    array-length v2, v0

    invoke-static {v2}, Lc/a/a/a/b/a;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UTF-8 not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b([B)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    if-eqz p1, :cond_0

    iget v1, p0, Lc/a/a/a/b/a;->b:I

    iget v2, p0, Lc/a/a/a/b/a;->c:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_2

    iget-object v1, p0, Lc/a/a/a/b/a;->a:[B

    iget v2, p0, Lc/a/a/a/b/a;->c:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lc/a/a/a/b/a;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/a/a/b/a;->c:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lc/a/a/a/b/a;->b:I

    iget v2, p0, Lc/a/a/a/b/a;->c:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lc/a/a/a/b/a;->a:[B

    iget v3, p0, Lc/a/a/a/b/a;->c:I

    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v1, 0x0

    sub-int/2addr v0, v1

    iget v1, p0, Lc/a/a/a/b/a;->b:I

    iput v1, p0, Lc/a/a/a/b/a;->c:I

    iget v1, p0, Lc/a/a/a/b/a;->b:I

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lc/a/a/a/b/a;->a:[B

    invoke-static {p1, v2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lc/a/a/a/b/a;->c:I

    goto :goto_0
.end method

.method private c(I)V
    .locals 4

    int-to-byte v0, p1

    iget-object v1, p0, Lc/a/a/a/b/a;->a:[B

    iget v2, p0, Lc/a/a/a/b/a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc/a/a/a/b/a;->c:I

    aput-byte v0, v1, v2

    return-void
.end method

.method private c(II)V
    .locals 1

    invoke-static {p1, p2}, Lc/a/a/a/a;->a(II)I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lc/a/a/a/b/a;->c(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->c(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method


# virtual methods
.method public final a(ID)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    long-to-int v2, v0

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x8

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x10

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x18

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x28

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x30

    shr-long v2, v0, v2

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    invoke-direct {p0, v2}, Lc/a/a/a/b/a;->c(I)V

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->c(I)V

    return-void
.end method

.method public final a(IF)V
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lc/a/a/a/b/a;->c(I)V

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lc/a/a/a/b/a;->c(I)V

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-direct {p0, v1}, Lc/a/a/a/b/a;->c(I)V

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->c(I)V

    return-void
.end method

.method public final a(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    if-ltz p2, :cond_0

    invoke-direct {p0, p2}, Lc/a/a/a/b/a;->d(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lc/a/a/a/b/a;->a(J)V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    invoke-direct {p0, p2, p3}, Lc/a/a/a/b/a;->a(J)V

    return-void
.end method

.method public final a(ILcom/tencent/mm/protobuf/ByteString;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    invoke-virtual {p2}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Lc/a/a/a/b/a;->d(I)V

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->b([B)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Lc/a/a/a/b/a;->d(I)V

    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->b([B)V

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lc/a/a/a/b/a;->c(I)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lc/a/a/a/b/a;->c(II)V

    invoke-direct {p0, p2}, Lc/a/a/a/b/a;->d(I)V

    return-void
.end method

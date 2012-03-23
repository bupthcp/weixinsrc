.class public Lcom/tencent/mm/algorithm/DES;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/pointers/PByteArray;[B[B)I
    .locals 8

    const/4 v0, 0x2

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v7, v0

    :goto_0
    return v7

    :cond_1
    array-length v1, p1

    if-ltz v1, :cond_2

    array-length v1, p2

    if-gtz v1, :cond_3

    :cond_2
    move v7, v0

    goto :goto_0

    :cond_3
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/16 v0, 0x8

    move v6, v0

    :goto_1
    array-length v0, p1

    add-int/2addr v0, v6

    new-array v1, v0, [B

    move v0, v7

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v7

    :goto_3
    if-ge v0, v6, :cond_5

    array-length v2, p1

    add-int/2addr v2, v0

    int-to-byte v3, v6

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    array-length v0, p1

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iget-object v0, p0, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    array-length v2, v1

    int-to-long v2, v2

    array-length v4, p2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/algorithm/MyDES;->a([B[BJI[B)C

    move-result v0

    if-nez v0, :cond_6

    const/16 v7, 0xb

    goto :goto_0

    :cond_6
    array-length v0, p1

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    move v0, v7

    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iput-object v1, p0, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    goto :goto_0

    :cond_8
    move v6, v0

    goto :goto_1
.end method

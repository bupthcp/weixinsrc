.class public Lcom/tencent/qqpim/utils/XxteaCryptor;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static EndianSwap(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/high16 v1, 0xff

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static MakePassword([B)[B
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static decrypt([B[B)[B
    .locals 13

    invoke-static {p1}, Lcom/tencent/qqpim/utils/XxteaCryptor;->MakePassword([B)[B

    move-result-object v2

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    new-array v4, v0, [I

    invoke-static {p0, v4}, Lcom/tencent/qqpim/utils/XxteaCryptor;->toIntArray([B[I)V

    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    new-array v5, v0, [I

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v0, :cond_7

    invoke-static {v2, v5}, Lcom/tencent/qqpim/utils/XxteaCryptor;->toIntArray([B[I)V

    array-length v0, v4

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    aget v2, v4, v0

    const/16 v0, 0x34

    add-int/lit8 v3, v1, 0x1

    div-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    const v3, -0x61c88647

    mul-int/2addr v0, v3

    move v3, v0

    move v0, v2

    :goto_3
    if-nez v3, :cond_8

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v0, v4, v0

    if-ltz v0, :cond_5

    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_a

    :cond_5
    const/4 p0, 0x0

    goto :goto_0

    :cond_6
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    ushr-int/lit8 v2, v3, 0x2

    and-int/lit8 v6, v2, 0x3

    move v2, v0

    move v0, v1

    :goto_4
    if-gtz v0, :cond_9

    aget v7, v4, v1

    const/4 v8, 0x0

    aget v9, v4, v8

    ushr-int/lit8 v10, v7, 0x5

    shl-int/lit8 v11, v2, 0x2

    xor-int/2addr v10, v11

    ushr-int/lit8 v11, v2, 0x3

    shl-int/lit8 v12, v7, 0x4

    xor-int/2addr v11, v12

    add-int/2addr v10, v11

    xor-int/2addr v2, v3

    and-int/lit8 v0, v0, 0x3

    xor-int/2addr v0, v6

    aget v0, v5, v0

    xor-int/2addr v0, v7

    add-int/2addr v0, v2

    xor-int/2addr v0, v10

    sub-int v2, v9, v0

    aput v2, v4, v8

    const v0, -0x61c88647

    sub-int v0, v3, v0

    move v3, v0

    move v0, v2

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v0, -0x1

    aget v7, v4, v7

    aget v8, v4, v0

    ushr-int/lit8 v9, v7, 0x5

    shl-int/lit8 v10, v2, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v2, 0x3

    shl-int/lit8 v11, v7, 0x4

    xor-int/2addr v10, v11

    add-int/2addr v9, v10

    xor-int/2addr v2, v3

    and-int/lit8 v10, v0, 0x3

    xor-int/2addr v10, v6

    aget v10, v5, v10

    xor-int/2addr v7, v10

    add-int/2addr v2, v7

    xor-int/2addr v2, v9

    sub-int v2, v8, v2

    aput v2, v4, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_a
    new-array p0, v0, [B

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v4, v0, p0}, Lcom/tencent/qqpim/utils/XxteaCryptor;->toByteArray([II[B)V

    goto/16 :goto_0
.end method

.method public static encrypt([B[B)[B
    .locals 14

    const/4 v1, 0x4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/tencent/qqpim/utils/XxteaCryptor;->MakePassword([B)[B

    move-result-object v2

    if-eqz p0, :cond_0

    if-eqz v2, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    new-array v5, v0, [I

    invoke-static {p0, v5}, Lcom/tencent/qqpim/utils/XxteaCryptor;->toIntArray([B[I)V

    add-int/lit8 v0, v0, -0x1

    array-length v4, p0

    aput v4, v5, v0

    array-length v0, v2

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    :goto_2
    if-ge v0, v1, :cond_2

    move v0, v1

    :cond_2
    new-array v6, v0, [I

    move v1, v3

    :goto_3
    if-lt v1, v0, :cond_5

    invoke-static {v2, v6}, Lcom/tencent/qqpim/utils/XxteaCryptor;->toIntArray([B[I)V

    array-length v0, v5

    add-int/lit8 v7, v0, -0x1

    aget v1, v5, v7

    const/16 v0, 0x34

    add-int/lit8 v2, v7, 0x1

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x6

    move v2, v3

    move v4, v1

    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_6

    array-length v0, v5

    shl-int/lit8 v0, v0, 0x2

    new-array p0, v0, [B

    array-length v0, v5

    invoke-static {v5, v0, p0}, Lcom/tencent/qqpim/utils/XxteaCryptor;->toByteArray([II[B)V

    goto :goto_0

    :cond_3
    array-length v0, p0

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_4
    array-length v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    aput v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const v0, -0x61c88647

    add-int/2addr v0, v2

    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v8, v2, 0x3

    move v2, v3

    :goto_5
    if-lt v2, v7, :cond_7

    aget v9, v5, v3

    aget v10, v5, v7

    ushr-int/lit8 v11, v4, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v4, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v0

    and-int/lit8 v2, v2, 0x3

    xor-int/2addr v2, v8

    aget v2, v6, v2

    xor-int/2addr v2, v4

    add-int/2addr v2, v9

    xor-int/2addr v2, v11

    add-int/2addr v2, v10

    aput v2, v5, v7

    move v4, v2

    move v2, v0

    move v0, v1

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v2, 0x1

    aget v9, v5, v9

    aget v10, v5, v2

    ushr-int/lit8 v11, v4, 0x5

    shl-int/lit8 v12, v9, 0x2

    xor-int/2addr v11, v12

    ushr-int/lit8 v12, v9, 0x3

    shl-int/lit8 v13, v4, 0x4

    xor-int/2addr v12, v13

    add-int/2addr v11, v12

    xor-int/2addr v9, v0

    and-int/lit8 v12, v2, 0x3

    xor-int/2addr v12, v8

    aget v12, v6, v12

    xor-int/2addr v4, v12

    add-int/2addr v4, v9

    xor-int/2addr v4, v11

    add-int/2addr v4, v10

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private static toByteArray([II[B)V
    .locals 5

    const/4 v1, 0x0

    array-length v0, p2

    shr-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_0

    move v0, p1

    :cond_0
    move v3, v1

    :goto_0
    if-lt v3, v0, :cond_2

    if-le p1, v0, :cond_1

    array-length v0, p2

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/16 v1, 0x8

    move v2, v1

    :goto_1
    const/16 v1, 0x18

    if-gt v2, v1, :cond_1

    array-length v1, p2

    if-lt v0, v1, :cond_3

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v1, v2, 0x1

    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v1

    add-int/lit8 v1, v2, 0x1

    aget v4, p0, v3

    ushr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    aget v4, p0, v3

    ushr-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v0

    add-int/lit8 v0, v2, 0x8

    move v2, v0

    move v0, v1

    goto :goto_1
.end method

.method private static toIntArray([B[I)V
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    shr-int/lit8 v3, v1, 0x2

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    const/16 v0, 0x8

    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_2

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    aget v0, p1, v2

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, p1, v2

    aget v0, p1, v2

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    aput v0, p1, v2

    aget v4, p1, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v4

    aput v1, p1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    aget v3, p1, v2

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v0

    or-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

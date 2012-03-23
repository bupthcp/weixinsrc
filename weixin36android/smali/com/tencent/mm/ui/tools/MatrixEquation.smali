.class public Lcom/tencent/mm/ui/tools/MatrixEquation;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([[F[F)[F
    .locals 8

    const/4 v1, 0x0

    array-length v4, p1

    new-array v5, v4, [F

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_0

    aget-object v6, p0, v3

    aget v6, v6, v0

    aget v7, p1, v0

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aput v2, v5, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public static a([[F)[[F
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x3

    filled-new-array {v10, v10}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v5, v3

    :goto_0
    if-ge v5, v10, :cond_2

    move v4, v3

    :goto_1
    if-ge v4, v10, :cond_1

    aget-object v6, v0, v5

    if-ne v5, v4, :cond_0

    const/high16 v1, 0x3f80

    :goto_2
    aput v1, v6, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_3
    if-ge v5, v10, :cond_9

    aget-object v1, p0, v5

    aget v1, v1, v5

    cmpl-float v4, v1, v2

    if-nez v4, :cond_5

    add-int/lit8 v1, v5, 0x1

    move v4, v1

    :goto_4
    if-ge v4, v10, :cond_4

    aget-object v1, p0, v4

    aget v1, v1, v5

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    move v1, v3

    :goto_5
    if-ge v1, v10, :cond_4

    aget-object v6, p0, v4

    aget v6, v6, v1

    aget-object v7, p0, v4

    aget-object v8, p0, v5

    aget v8, v8, v1

    aput v8, v7, v1

    aget-object v7, p0, v5

    aput v6, v7, v1

    aget-object v6, v0, v4

    aget v6, v6, v1

    aget-object v7, v0, v4

    aget-object v8, v0, v5

    aget v8, v8, v1

    aput v8, v7, v1

    aget-object v7, v0, v5

    aput v6, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_4
    aget-object v1, p0, v5

    aget v1, v1, v5

    :cond_5
    move v4, v3

    :goto_6
    if-ge v4, v10, :cond_6

    aget-object v6, p0, v5

    aget-object v7, p0, v5

    aget v7, v7, v4

    div-float/2addr v7, v1

    aput v7, v6, v4

    aget-object v6, v0, v5

    aget-object v7, v0, v5

    aget v7, v7, v4

    div-float/2addr v7, v1

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_7
    if-ge v4, v10, :cond_8

    if-eq v4, v5, :cond_7

    aget-object v1, p0, v4

    aget v6, v1, v5

    move v1, v3

    :goto_8
    if-ge v1, v10, :cond_7

    aget-object v7, p0, v4

    aget-object v8, p0, v4

    aget v8, v8, v1

    aget-object v9, p0, v5

    aget v9, v9, v1

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    aput v8, v7, v1

    aget-object v7, v0, v4

    aget-object v8, v0, v4

    aget v8, v8, v1

    aget-object v9, v0, v5

    aget v9, v9, v1

    mul-float/2addr v9, v6

    sub-float/2addr v8, v9

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_3

    :cond_9
    return-object v0
.end method

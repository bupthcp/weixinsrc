.class public La/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La/f;->a:F

    iput p2, p0, La/f;->b:F

    return-void
.end method

.method public static a(La/f;La/f;)F
    .locals 3

    iget v0, p0, La/f;->a:F

    iget v1, p1, La/f;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, La/f;->b:F

    iget v2, p1, La/f;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a([La/f;)V
    .locals 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    aget-object v0, p0, v7

    aget-object v1, p0, v8

    invoke-static {v0, v1}, La/f;->a(La/f;La/f;)F

    move-result v0

    aget-object v1, p0, v8

    aget-object v2, p0, v9

    invoke-static {v1, v2}, La/f;->a(La/f;La/f;)F

    move-result v1

    aget-object v2, p0, v7

    aget-object v3, p0, v9

    invoke-static {v2, v3}, La/f;->a(La/f;La/f;)F

    move-result v2

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_0

    aget-object v1, p0, v7

    aget-object v2, p0, v8

    aget-object v0, p0, v9

    :goto_0
    iget v3, v1, La/f;->a:F

    iget v4, v1, La/f;->b:F

    iget v5, v0, La/f;->a:F

    sub-float/2addr v5, v3

    iget v6, v2, La/f;->b:F

    sub-float/2addr v6, v4

    mul-float/2addr v5, v6

    iget v6, v0, La/f;->b:F

    sub-float v4, v6, v4

    iget v6, v2, La/f;->a:F

    sub-float v3, v6, v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    :goto_1
    aput-object v0, p0, v7

    aput-object v1, p0, v8

    aput-object v2, p0, v9

    return-void

    :cond_0
    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    aget-object v1, p0, v8

    aget-object v2, p0, v7

    aget-object v0, p0, v9

    goto :goto_0

    :cond_1
    aget-object v1, p0, v9

    aget-object v2, p0, v7

    aget-object v0, p0, v8

    goto :goto_0

    :cond_2
    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    goto :goto_1
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, La/f;->a:F

    return v0
.end method

.method public final b()F
    .locals 1

    iget v0, p0, La/f;->b:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, La/f;

    if-eqz v1, :cond_0

    check-cast p1, La/f;

    iget v1, p0, La/f;->a:F

    iget v2, p1, La/f;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, La/f;->b:F

    iget v2, p1, La/f;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, La/f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, La/f;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, La/f;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, La/f;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

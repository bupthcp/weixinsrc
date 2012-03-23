.class public final La/a/a/e;
.super La/f;


# instance fields
.field private final a:F

.field private b:I


# direct methods
.method constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, La/a/a/e;-><init>(FFFI)V

    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/f;-><init>(FF)V

    iput p3, p0, La/a/a/e;->a:F

    iput p4, p0, La/a/a/e;->b:I

    return-void
.end method


# virtual methods
.method final a(FFF)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, La/a/a/e;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, La/a/a/e;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget v1, p0, La/a/a/e;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-lez v2, :cond_1

    iget v2, p0, La/a/a/e;->a:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(FFF)La/a/a/e;
    .locals 5

    iget v0, p0, La/a/a/e;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/a/a/e;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, La/a/a/e;->a()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iget v2, p0, La/a/a/e;->b:I

    int-to-float v2, v2

    invoke-virtual {p0}, La/a/a/e;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, La/a/a/e;->b:I

    int-to-float v3, v3

    iget v4, p0, La/a/a/e;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p3

    int-to-float v4, v0

    div-float/2addr v3, v4

    new-instance v4, La/a/a/e;

    invoke-direct {v4, v1, v2, v3, v0}, La/a/a/e;-><init>(FFFI)V

    return-object v4
.end method

.method public final c()F
    .locals 1

    iget v0, p0, La/a/a/e;->a:F

    return v0
.end method

.method final d()I
    .locals 1

    iget v0, p0, La/a/a/e;->b:I

    return v0
.end method

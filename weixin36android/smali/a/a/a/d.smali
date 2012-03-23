.class public final La/a/a/d;
.super La/f;


# instance fields
.field private final a:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/f;-><init>(FF)V

    iput p3, p0, La/a/a/d;->a:F

    return-void
.end method


# virtual methods
.method final a(FFF)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, La/a/a/d;->b()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    invoke-virtual {p0}, La/a/a/d;->a()F

    move-result v1

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget v1, p0, La/a/a/d;->a:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f80

    cmpg-float v2, v1, v2

    if-lez v2, :cond_1

    iget v2, p0, La/a/a/d;->a:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(FFF)La/a/a/d;
    .locals 4

    const/high16 v3, 0x4000

    invoke-virtual {p0}, La/a/a/d;->a()F

    move-result v0

    add-float/2addr v0, p2

    div-float/2addr v0, v3

    invoke-virtual {p0}, La/a/a/d;->b()F

    move-result v1

    add-float/2addr v1, p1

    div-float/2addr v1, v3

    iget v2, p0, La/a/a/d;->a:F

    add-float/2addr v2, p3

    div-float/2addr v2, v3

    new-instance v3, La/a/a/d;

    invoke-direct {v3, v0, v1, v2}, La/a/a/d;-><init>(FFF)V

    return-object v3
.end method

.class Lcom/tencent/mm/ui/bottle/BallonImageView$1;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private synthetic m:Lcom/tencent/mm/ui/bottle/BallonImageView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BallonImageView;)V
    .locals 3

    const/high16 v2, 0x3f80

    const v1, 0x3dcccccd

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->m:Lcom/tencent/mm/ui/bottle/BallonImageView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->c:F

    const v0, 0x3f4ccccd

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->d:F

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->e:F

    const v0, 0x3e99999a

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->f:F

    iput v2, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->g:F

    const v0, 0x3f333333

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->h:F

    return-void
.end method

.method private static a(FF)F
    .locals 2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->c:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->i:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->d:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->j:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->e:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->k:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->f:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->b:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->l:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    const/high16 v5, 0x3f80

    const v4, 0x3dcccccd

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->i:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->k:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->i:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->j:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->i:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->j:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->i:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->k:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->l:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->k:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->l:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->k:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->g:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->h:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->g:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    cmpl-float v0, p1, v5

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->d:F

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->c:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->f:F

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->e:F

    const v0, 0x3f4ccccd

    invoke-static {v4, v0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->d:F

    const v0, 0x3e99999a

    invoke-static {v4, v0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->f:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->h:F

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->g:F

    const v0, 0x3f333333

    invoke-static {v0, v5}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->h:F

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a()V

    :cond_2
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iput p3, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a:I

    iput p4, p0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->b:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;->a()V

    return-void
.end method

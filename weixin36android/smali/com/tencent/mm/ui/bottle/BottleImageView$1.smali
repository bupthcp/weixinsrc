.class Lcom/tencent/mm/ui/bottle/BottleImageView$1;
.super Landroid/view/animation/Animation;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private synthetic q:Lcom/tencent/mm/ui/bottle/BottleImageView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleImageView;)V
    .locals 3

    const/high16 v2, 0x3f80

    const/high16 v1, -0x4080

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->h:Z

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->j:F

    iput v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->k:F

    const v0, 0x3dcccccd

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->l:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->m:F

    const v0, -0x3bab8000

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->n:F

    iput v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->o:F

    const v0, 0x3e99999a

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->p:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    const/high16 v3, 0x40a0

    const/high16 v4, -0x4080

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->c(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->d(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->e(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->f(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->j:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->c:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->d:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->c:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->j:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->g(Lcom/tencent/mm/ui/bottle/BottleImageView;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4286

    invoke-static {v1, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->e:F

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->d:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->j:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->g(Lcom/tencent/mm/ui/bottle/BottleImageView;)Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x4254

    invoke-static {v1, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->f:F

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->o:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->p:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->o:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->k:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->l:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->k:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/BottleImageView;->a(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v3}, Lcom/tencent/mm/ui/bottle/BottleImageView;->b(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->m:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->n:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->m:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/BottleImageView;->a(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->q:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-static {v3}, Lcom/tencent/mm/ui/bottle/BottleImageView;->b(Lcom/tencent/mm/ui/bottle/BottleImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    iget v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->c:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float v0, v1, v0

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->c:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->e:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    add-float/2addr v0, v2

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->g:F

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iput v4, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->a:F

    iput v4, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iput v4, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->i:F

    iput v4, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->h:Z

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->d:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->h:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->h:Z

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->g:F

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->e:F

    :cond_3
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->c:F

    sub-float v0, v1, v0

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->d:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->c:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->f:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->e:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->e:F

    add-float/2addr v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->d:F

    sub-float v0, v1, v0

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->b:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->d:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->j:F

    iget v3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->f:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;->f:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

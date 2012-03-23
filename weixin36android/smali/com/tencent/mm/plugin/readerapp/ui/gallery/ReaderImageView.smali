.class public Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;
.super Landroid/widget/ImageView;


# instance fields
.field protected a:Landroid/os/Handler;

.field b:F

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Matrix;

.field private final e:Landroid/graphics/Matrix;

.field private final f:[F

.field private g:Landroid/graphics/Bitmap;

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->c:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->e:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->g:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->h:I

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->i:I

    const/high16 v0, 0x4040

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->j:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->q:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->b:F

    iput p3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->m:I

    iput p2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->l:I

    invoke-direct {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "dktest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init screenWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenHeight :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private f()Landroid/graphics/Matrix;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->e:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->n:F

    return v0
.end method

.method public final a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected final a(FFF)V
    .locals 6

    const/high16 v5, 0x4000

    const/4 v1, 0x0

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->j:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iget p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->j:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v0

    div-float v0, p1, v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v4, v4

    sub-float v0, v4, v0

    div-float/2addr v0, v5

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v4

    :goto_1
    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_6

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v1, v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v3

    :cond_1
    :goto_2
    const-string v3, "dktest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deltaX: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deltaY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FF)V

    invoke-direct {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const-string v2, "dktest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "center  w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->k:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->k:F

    goto/16 :goto_0

    :cond_4
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    goto :goto_1

    :cond_5
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_8

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v0, v0

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v4

    goto/16 :goto_1

    :cond_6
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v1

    if-lez v3, :cond_7

    iget v1, v2, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    goto/16 :goto_2

    :cond_7
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->l:I

    return v0
.end method

.method protected final b(FFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x4348

    div-float v5, v0, v1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;

    move-object v1, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;JFFFF)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->m:I

    return v0
.end method

.method protected final d()F
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->k:F

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lb/a/w;->a(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lb/a/w;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lb/a/w;->c(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->d()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FFF)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x4000

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    const-string v0, "MicroMsg.ReaderImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReaderImageView width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->q:Z

    invoke-direct {p0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->e()V

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v0, v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->l:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v1, v1

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->m:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->n:F

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->n:F

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->o:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->p:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->a(FFF)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->g:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->q:Z

    return-void
.end method

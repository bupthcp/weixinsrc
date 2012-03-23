.class Lcom/tencent/mm/ui/tools/CropImageUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/CropImageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/high16 v7, 0x4120

    const/4 v5, 0x0

    const/high16 v6, -0x3ee0

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Lcom/tencent/mm/ui/tools/CropImageUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->c(Lcom/tencent/mm/ui/tools/CropImageUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->c(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->d(Lcom/tencent/mm/ui/tools/CropImageUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->d(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->e(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/tools/CropImageUI;->e(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/tools/CropImageUI;->c(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->f(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;J)J

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->g(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->d(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/tools/CropImageUI;->c(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->d(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Lcom/tencent/mm/ui/tools/CropImageUI;F)F

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->g(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;Z)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->d(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/tools/CropImageUI;->c(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->d(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->h(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->i(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->h(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->i(Lcom/tencent/mm/ui/tools/CropImageUI;)F

    move-result v3

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v6

    if-gez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->f(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->j(Lcom/tencent/mm/ui/tools/CropImageUI;)J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->j(Lcom/tencent/mm/ui/tools/CropImageUI;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->j(Lcom/tencent/mm/ui/tools/CropImageUI;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->k(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$1;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0, v8, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Lcom/tencent/mm/ui/tools/CropImageUI;J)J

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

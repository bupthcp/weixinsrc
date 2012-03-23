.class public Lcom/tencent/mm/ui/MMFlipper;
.super Landroid/view/ViewGroup;


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:Landroid/view/VelocityTracker;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:Z

.field private j:Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;

.field private k:Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;

.field private l:Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/MMFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMFlipper;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->d:I

    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMFlipper;->i:Z

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMFlipper;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;

    invoke-direct {v0}, Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->l:Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMFlipper;->l:Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->d:I

    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->f:I

    return-void
.end method

.method private b(I)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getWidth()I

    move-result v1

    mul-int/2addr v1, v6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getWidth()I

    move-result v0

    mul-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    if-eq v0, v6, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMFlipper;->i:Z

    :cond_0
    iput v6, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->invalidate()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->d:I

    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    return-void
.end method

.method public final a(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMFlipper;->i:Z

    iget-object v1, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/MMFlipper;->j:Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/MMFlipper;->j:Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;->a(I)V

    :cond_1
    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/MMFlipper;->scrollTo(II)V

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMFlipper;->k:Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMFlipper;->j:Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    return v0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMFlipper;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMFlipper;->i:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->j:Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->j:Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;

    iget v1, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;->a(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->g:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/tencent/mm/ui/MMFlipper;->f:I

    if-le v0, v3, :cond_2

    iput v2, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    goto :goto_1

    :pswitch_1
    iput v3, p0, Lcom/tencent/mm/ui/MMFlipper;->g:F

    iput v4, p0, Lcom/tencent/mm/ui/MMFlipper;->h:F

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :pswitch_2
    iput v1, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    const/4 v2, 0x0

    const-string v0, "MicroMsg.MMFlipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flipper onLayout changed:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Left,Top,Right,Bottom:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    const-string v6, "MicroMsg.MMFlipper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "flipper onLayout childWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->k:Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->k:Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;->a(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getChildCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "MicroMsg.MMFlipper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flipper onMeasure:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " childCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    mul-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->scrollTo(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    iput v1, p0, Lcom/tencent/mm/ui/MMFlipper;->g:F

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->g:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v1, p0, Lcom/tencent/mm/ui/MMFlipper;->g:F

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/MMFlipper;->scrollBy(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x258

    if-le v0, v1, :cond_3

    iget v1, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    if-lez v1, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MMFlipper;->b(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMFlipper;->b:Landroid/view/VelocityTracker;

    :cond_2
    iput v3, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    goto :goto_0

    :cond_3
    const/16 v1, -0x258

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/tencent/mm/ui/MMFlipper;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MMFlipper;->b(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMFlipper;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MMFlipper;->b(I)V

    goto :goto_1

    :pswitch_3
    iput v3, p0, Lcom/tencent/mm/ui/MMFlipper;->e:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

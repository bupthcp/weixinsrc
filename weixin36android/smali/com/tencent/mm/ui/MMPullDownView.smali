.class public Lcom/tencent/mm/ui/MMPullDownView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static q:I


# instance fields
.field private a:Landroid/widget/Scroller;

.field private b:I

.field private c:I

.field private d:Landroid/widget/ListView;

.field private e:Landroid/view/View;

.field private f:Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;

.field private g:I

.field private h:Z

.field private i:F

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Landroid/view/GestureDetector;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x190

    sput v0, Lcom/tencent/mm/ui/MMPullDownView;->q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/MMPullDownView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/tencent/mm/ui/MMPullDownView;->c:I

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->h:Z

    const/high16 v0, -0x3d38

    iput v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->i:F

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->j:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->k:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->l:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMPullDownView;->m:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->n:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->o:Z

    new-instance v0, Lcom/tencent/mm/ui/MMPullDownView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MMPullDownView$1;-><init>(Lcom/tencent/mm/ui/MMPullDownView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->r:Landroid/os/Handler;

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->c:I

    iput v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->b:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->p:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMPullDownView;)Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->f:Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMPullDownView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MMPullDownView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->m:Z

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    return v0
.end method

.method public final a(Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPullDownView;->d:Landroid/widget/ListView;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPullDownView;->f:Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/MMPullDownView;->o:Z

    return-void
.end method

.method public computeScroll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->l:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/tencent/mm/ui/MMPullDownView;->l:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->r:Landroid/os/Handler;

    sget v1, Lcom/tencent/mm/ui/MMPullDownView;->q:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v5, 0xc8

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->m:Z

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMPullDownView;->d:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v6, p0, Lcom/tencent/mm/ui/MMPullDownView;->h:Z

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->e:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v6

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->h:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_5

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v0

    iget v2, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    sub-int/2addr v0, v2

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->o:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    add-int/2addr v4, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->postInvalidate()V

    :cond_4
    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->j:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->k:Z

    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v3

    neg-int v4, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput-boolean v6, p0, Lcom/tencent/mm/ui/MMPullDownView;->l:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->m:Z

    goto :goto_3
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->j:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getChildCount()I

    move-result v3

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMPullDownView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v7, v0, v5

    invoke-virtual {v4, v2, v0, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MMPullDownView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MMPullDownView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->e:Landroid/view/View;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->n:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->n:Z

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/MMPullDownView;->scrollTo(II)V

    :cond_2
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const-wide/high16 v5, 0x3fe0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPullDownView;->k:Z

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->j:Z

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMPullDownView;->k:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->k:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v0

    iget v3, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->h:Z

    if-eqz v0, :cond_4

    float-to-double v3, p4

    mul-double/2addr v3, v5

    double-to-int v0, v3

    if-nez v0, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    if-le v3, v4, :cond_3

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/MMPullDownView;->scrollBy(II)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->j:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->k:Z

    if-nez v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->h:Z

    if-nez v0, :cond_7

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    float-to-double v3, p4

    mul-double/2addr v3, v5

    double-to-int v0, v3

    if-nez v0, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v0

    iget v4, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    if-le v3, v4, :cond_9

    iget v0, p0, Lcom/tencent/mm/ui/MMPullDownView;->g:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPullDownView;->getScrollY()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_9
    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/MMPullDownView;->scrollBy(II)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

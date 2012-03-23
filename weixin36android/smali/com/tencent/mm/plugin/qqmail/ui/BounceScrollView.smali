.class public Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;
.super Landroid/widget/ScrollView;


# instance fields
.field private a:Landroid/view/View;

.field private b:F

.field private c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->b:F

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    if-eqz v1, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->scrollBy(II)V

    iput v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->b:F

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->getScrollY()I

    move-result v4

    if-eqz v4, :cond_3

    if-ne v4, v3, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/plugin/qqmail/ui/BounceScrollView;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int v2, v5, v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/tencent/mm/ui/bottle/PickedBottleImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->c:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->c:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->b:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f02003d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->b:Landroid/view/View;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f070078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->b:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->b:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x320

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const v0, 0x7f02003e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f02003c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

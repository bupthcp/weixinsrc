.class public Lcom/tencent/mm/ui/bottle/SprayLayout;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:Landroid/view/animation/AnimationSet;

.field b:Landroid/view/animation/AnimationSet;

.field c:Landroid/view/animation/AnimationSet;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/os/Handler;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f19999a

    const v2, 0x3f4ccccd

    const v3, 0x3f19999a

    const v4, 0x3f4ccccd

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->g:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->h:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f4ccccd

    const v2, 0x3fa28f5c

    const v3, 0x3f4ccccd

    const v4, 0x3fa28f5c

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->i:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x3f00

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->j:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f4ccccd

    const/high16 v2, 0x3f80

    const v3, 0x3f4ccccd

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->k:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->b:Landroid/view/animation/AnimationSet;

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->c:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->g:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->h:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->i:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->j:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->b:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->b:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->b:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->c:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->c:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->c:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->m:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->o:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->p:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->s:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/SprayLayout$1;-><init>(Lcom/tencent/mm/ui/bottle/SprayLayout;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->t:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/SprayLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->l:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/SprayLayout;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->l:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/SprayLayout;)I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->n:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/SprayLayout;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->o:I

    if-ne v2, v4, :cond_0

    iget v2, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->p:I

    if-eq v2, v4, :cond_1

    :cond_0
    iget v2, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->o:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->p:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    iget v6, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->q:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    mul-int/2addr v2, v6

    iget v6, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->q:I

    iget v7, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->q:I

    mul-int/2addr v6, v7

    mul-int v7, v2, v2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->r:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->r:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->q:I

    iget v8, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->q:I

    mul-int/2addr v7, v8

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v3

    :cond_2
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    mul-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    mul-int/lit16 v1, v1, 0x12c

    div-int/lit16 v1, v1, 0x320

    add-int/2addr v1, v3

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/bottle/SprayLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->n:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/bottle/SprayLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->m:I

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/bottle/SprayLayout;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/bottle/SprayLayout;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->l:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->setVisibility(I)V

    return-void
.end method

.method public final a(III)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput v2, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->l:I

    iput p1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->m:I

    iput v2, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->n:I

    iput p2, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->o:I

    iput p3, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->p:I

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->d:Landroid/widget/ImageView;

    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->e:Landroid/widget/ImageView;

    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x23

    div-int/lit8 v1, v1, 0x60

    iput v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->q:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->r:I

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/bottle/SprayLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout;->t:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class public Lcom/tencent/mm/ui/bottle/BottleImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;

.field private h:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleImageView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleImageView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleImageView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottleImageView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->e:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/BottleImageView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->f:I

    return v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->e:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->f:I

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/BottleImageView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->a:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/BottleImageView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->b:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/bottle/BottleImageView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->c:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/bottle/BottleImageView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->d:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/bottle/BottleImageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->g:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    return-void
.end method

.method public final a(IIIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 3

    iput p1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->a:I

    iput p2, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->b:I

    iput p3, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->c:I

    iput p4, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->d:I

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, p5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->g:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleImageView;->h:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

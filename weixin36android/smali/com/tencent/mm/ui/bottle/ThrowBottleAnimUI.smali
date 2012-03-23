.class public Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

.field private b:Lcom/tencent/mm/ui/bottle/SprayLayout;

.field private c:Lcom/tencent/mm/ui/bottle/BottleImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/animation/AnimationSet;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

.field private n:Z

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->o:Landroid/os/Handler;

    check-cast p1, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->o:Landroid/os/Handler;

    check-cast p1, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;Lcom/tencent/mm/ui/bottle/SprayLayout;)Lcom/tencent/mm/ui/bottle/SprayLayout;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    return-object p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f030022

    invoke-static {v0, v1, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/BottleImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i:I

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/BottleImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    return-object v0
.end method

.method private c()V
    .locals 7

    const/4 v6, -0x2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/high16 v3, 0x4220

    invoke-static {v2, v3}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v5, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h:I

    add-int/2addr v0, v2

    sub-int v0, v5, v0

    iget v5, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i:I

    add-int/2addr v1, v2

    sub-int v1, v5, v1

    invoke-direct {v4, v6, v6, v0, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    return-object v0
.end method

.method private d()V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/high16 v1, 0x4220

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v5, 0x7f020062

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v1, v7, v7, v6, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    iget v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h:I

    add-int v5, v2, v3

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    iget v5, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i:I

    add-int/2addr v3, v4

    sub-int v3, v5, v3

    iget v5, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->g:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v5, v4

    new-instance v5, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/ui/bottle/BottleImageView;->a(IIIILandroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v5, 0x7f020061

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->f:I

    iget v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i:I

    mul-int/lit16 v0, v0, 0x1cc

    div-int/lit16 v0, v0, 0x320

    iput v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->g:I

    const-string v0, "MicroMsg.ThrowBottleAnimView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  bottle ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->f:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->g:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->m:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleImageView;->a()V

    :cond_0
    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->m:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->m:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->n:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d()V

    return-void
.end method

.method public final a(ZIII)V
    .locals 11

    iput-boolean p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->n:Z

    iput p2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->j:I

    iput p3, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->k:I

    iput p4, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->l:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v2, 0x7f02023c

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    const/16 v1, 0x78

    const/high16 v0, 0x3f80

    move v9, v0

    move v10, v1

    :goto_0
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/content/Context;I)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/4 v2, 0x0

    int-to-float v3, v10

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/high16 v7, 0x3f80

    move v5, v9

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c:Lcom/tencent/mm/ui/bottle/BottleImageView;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/bottle/BottleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/high16 v5, 0x4220

    invoke-static {v4, v5}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v4

    const-string v5, "MicroMsg.ThrowBottleAnimView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tran from ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->j:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->k:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i:I

    sub-int/2addr v7, v4

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v6, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->j:I

    int-to-float v6, v6

    iget v7, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h:I

    sub-int/2addr v7, v4

    sub-int v2, v7, v2

    int-to-float v2, v2

    iget v7, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->k:I

    int-to-float v7, v7

    iget v8, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i:I

    sub-int v4, v8, v4

    sub-int v3, v4, v3

    int-to-float v3, v3

    invoke-direct {v5, v6, v2, v7, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v5, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$1;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x19

    const/high16 v0, 0x3f00

    move v9, v0

    move v10, v1

    goto/16 :goto_0
.end method

.method public isInEditMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

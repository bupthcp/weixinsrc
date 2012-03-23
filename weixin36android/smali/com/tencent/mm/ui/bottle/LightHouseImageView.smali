.class public Lcom/tencent/mm/ui/bottle/LightHouseImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/graphics/drawable/AnimationDrawable;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->b:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/LightHouseImageView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    const/16 v4, 0x15

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x6

    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    if-lt p1, v4, :cond_2

    const/16 v2, 0x17

    if-gt p1, v2, :cond_2

    :cond_1
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xfa

    div-int/lit16 v3, v3, 0x320

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7b

    div-int/lit16 v1, v1, 0x1e0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    if-ltz p1, :cond_3

    if-le p1, v3, :cond_4

    :cond_3
    if-lt p1, v4, :cond_5

    const/16 v2, 0x1d

    if-gt p1, v2, :cond_5

    :cond_4
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xf5

    div-int/lit16 v3, v3, 0x320

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x82

    div-int/lit16 v1, v1, 0x1e0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_5
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    mul-int/lit16 v3, v3, 0xf5

    div-int/lit16 v3, v3, 0x320

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7d

    div-int/lit16 v1, v1, 0x1e0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->getWidth()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/LightHouseImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/LightHouseImageView;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/LightHouseImageView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    :try_start_0
    const-class v0, Landroid/graphics/drawable/AnimationDrawable;

    const-string v1, "mCurFrame"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a(I)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->b:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/LightHouseImageView;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

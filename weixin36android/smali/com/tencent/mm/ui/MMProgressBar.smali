.class public Lcom/tencent/mm/ui/MMProgressBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/tencent/mm/ui/MMActivity;

.field private f:Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;

.field private g:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->a:I

    iput v2, p0, Lcom/tencent/mm/ui/MMProgressBar;->b:I

    iput v2, p0, Lcom/tencent/mm/ui/MMProgressBar;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/MMProgressBar$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MMProgressBar$1;-><init>(Lcom/tencent/mm/ui/MMProgressBar;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/MMProgressBar;->e:Lcom/tencent/mm/ui/MMActivity;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->e:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0201a6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMProgressBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMProgressBar;->e:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0201a5

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMProgressBar;->b()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMProgressBar;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->c:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMProgressBar;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->b:I

    return v0
.end method

.method private b()I
    .locals 3

    const/high16 v2, 0x4170

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMProgressBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/MMProgressBar;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/ui/MMProgressBar;->a:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/MMProgressBar;->e:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v1, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->e:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMProgressBar;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->b:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMProgressBar;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMProgressBar;->b()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMProgressBar;->invalidate()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->f:Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->f:Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;

    invoke-interface {v0, p0, p1}, Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;->a(Lcom/tencent/mm/ui/MMProgressBar;I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MMProgressBar;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->a:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/MMProgressBar;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->a:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/tencent/mm/ui/MMProgressBar;->a:I

    :cond_0
    iput p1, p0, Lcom/tencent/mm/ui/MMProgressBar;->c:I

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMProgressBar;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMProgressBar;->f:Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;

    return-void
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    goto :goto_0
.end method

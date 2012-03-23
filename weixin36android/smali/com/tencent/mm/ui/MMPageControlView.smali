.class public Lcom/tencent/mm/ui/MMPageControlView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/Map;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPageControlView;->a:Landroid/content/Context;

    return-void
.end method

.method private c(I)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x7f07018d

    const v5, 0x7f030096

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPageControlView;->removeAllViews()V

    iget v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->b:I

    if-le p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/tencent/mm/ui/MMPageControlView;->b:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->a:Landroid/content/Context;

    invoke-static {v0, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    const v3, 0x7f0201f8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMPageControlView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->a:Landroid/content/Context;

    invoke-static {v0, v5, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPageControlView;->d:Landroid/widget/ImageView;

    const v3, 0x7f0201f9

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/tencent/mm/ui/MMPageControlView;->b:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MMPageControlView;->c(I)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMPageControlView;->c(I)V

    return-void
.end method

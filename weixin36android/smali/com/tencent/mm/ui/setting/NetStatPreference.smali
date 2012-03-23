.class public Lcom/tencent/mm/ui/setting/NetStatPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/setting/NetStatPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/setting/NetStatPreference;->a:Z

    sget-object v0, Lcom/tencent/mm/R$styleable;->b:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/NetStatPreference;->a:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v0, 0x7f0a021d

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/NetStatPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/setting/NetStatPreference;->a:Z

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070172

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v2, v1

    const/16 v1, 0xf

    :goto_0
    if-lez v1, :cond_0

    new-instance v3, Lcom/tencent/mm/ui/setting/NetStatGroup;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/NetStatPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tencent/mm/ui/setting/NetStatGroup;-><init>(Landroid/content/Context;)V

    sub-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iget-boolean v5, p0, Lcom/tencent/mm/ui/setting/NetStatPreference;->a:Z

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/setting/NetStatGroup;->a(IZ)V

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    add-int/lit8 v1, v1, -0x5

    goto :goto_0

    :cond_0
    const v0, 0x7f07017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Lcom/tencent/mm/ui/setting/NetStatGroup;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/NetStatPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/setting/NetStatGroup;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/setting/NetStatPreference;->a:Z

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/NetStatGroup;->a(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/NetStatPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030082

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v1
.end method

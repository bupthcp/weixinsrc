.class public final Lcom/tencent/mm/ui/IconPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/IconPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/IconPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/IconPreference;->b:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/ui/IconPreference;->c:I

    iput v2, p0, Lcom/tencent/mm/ui/IconPreference;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/IconPreference;->e:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/ui/IconPreference;->f:I

    iput v2, p0, Lcom/tencent/mm/ui/IconPreference;->g:I

    iput v1, p0, Lcom/tencent/mm/ui/IconPreference;->h:I

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/IconPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/IconPreference;->setLayoutResource(I)V

    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/IconPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/IconPreference;->d:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/IconPreference;->e:Ljava/lang/String;

    const v0, 0x7f02019a

    iput v0, p0, Lcom/tencent/mm/ui/IconPreference;->f:I

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/IconPreference;->b:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mm/ui/IconPreference;->c:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/IconPreference;->g:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/IconPreference;->h:I

    return-void
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/IconPreference;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f070179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/tencent/mm/ui/IconPreference;->h:I

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/IconPreference;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_1
    const v0, 0x7f07017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/tencent/mm/ui/IconPreference;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/IconPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/tencent/mm/ui/IconPreference;->c:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/IconPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    iget v2, p0, Lcom/tencent/mm/ui/IconPreference;->c:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v0, 0x7f07017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/tencent/mm/ui/IconPreference;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/IconPreference;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/tencent/mm/ui/IconPreference;->f:I

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/IconPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    iget v2, p0, Lcom/tencent/mm/ui/IconPreference;->f:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/IconPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030080

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v1
.end method

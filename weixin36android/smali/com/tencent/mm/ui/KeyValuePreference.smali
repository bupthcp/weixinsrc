.class public Lcom/tencent/mm/ui/KeyValuePreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/KeyValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->b:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->c:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->d:Z

    iput-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->f:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->g:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/KeyValuePreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->d:Z

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->c:Z

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->a:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/KeyValuePreference;->setWidgetLayoutResource(I)V

    :cond_0
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const v0, 0x7f07017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/KeyValuePreference;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/KeyValuePreference;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/KeyValuePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f070117

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v3, 0x7f030081

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v2
.end method

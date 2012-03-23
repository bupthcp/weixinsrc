.class public Lcom/tencent/mm/ui/contact/DomainMailListPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->a:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->c:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->a:Z

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.DomainMailPreference"

    const-string v1, "initView : unbind view"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->c:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    array-length v1, v0

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->e:Landroid/widget/TextView;

    aget-object v2, v0, v4

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    array-length v1, v0

    if-le v1, v5, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->f:Landroid/widget/TextView;

    aget-object v2, v0, v5

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    array-length v1, v0

    if-le v1, v6, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->g:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->b()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->d:Landroid/widget/TextView;

    const v0, 0x7f070173

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->e:Landroid/widget/TextView;

    const v0, 0x7f070174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->f:Landroid/widget/TextView;

    const v0, 0x7f070175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->g:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->a:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->b()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->getContext()Landroid/content/Context;

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

    const v3, 0x7f03007c

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v2
.end method

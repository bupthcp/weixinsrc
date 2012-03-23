.class public Lcom/tencent/mm/ui/tools/CountryCodeAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->c()V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CountryCode;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CountryCode;->c()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CountryCode;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CountryCode;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CountryCode;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CountryCode;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CountryCode;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->c()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public final a()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CountryCode;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->c:Landroid/content/Context;

    const v2, 0x7f030045

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0700fc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v1, 0x7f0700ff

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f070102

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    add-int/lit8 v3, p1, -0x1

    aget v1, v1, v3

    :goto_1
    if-nez p1, :cond_2

    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    aget v3, v3, p1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CountryCode;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CountryCode;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    aget v3, v3, p1

    if-eq v3, v1, :cond_3

    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->e:[I

    aget v3, v3, p1

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v1, v2, Lcom/tencent/mm/ui/tools/CountryCodeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

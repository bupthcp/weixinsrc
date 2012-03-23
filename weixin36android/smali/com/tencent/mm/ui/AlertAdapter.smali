.class Lcom/tencent/mm/ui/AlertAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/util/List;

.field private b:[I

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->c:Z

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->b:[I

    iput-object p1, p0, Lcom/tencent/mm/ui/AlertAdapter;->d:Landroid/content/Context;

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->b:[I

    aput v2, v0, v1

    iput-boolean v2, p0, Lcom/tencent/mm/ui/AlertAdapter;->c:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->b:[I

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p5, :cond_3

    const-string v0, ""

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->b:[I

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/AlertAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->b:[I

    aget v3, v1, p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;

    iget v1, v1, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;->b:I

    if-eq v1, v3, :cond_5

    :cond_0
    new-instance v2, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;-><init>()V

    const/4 v1, 0x3

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->d:Landroid/content/Context;

    const v4, 0x7f030012

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    :goto_0
    const v1, 0x7f07003c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iput v3, v2, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;->b:I

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_1
    iget-object v1, v1, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_2
    if-nez v3, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->d:Landroid/content/Context;

    const v4, 0x7f030011

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->d:Landroid/content/Context;

    const v4, 0x7f030014

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v3, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/AlertAdapter;->d:Landroid/content/Context;

    const v4, 0x7f030013

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AlertAdapter$ViewHolder;

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/AlertAdapter;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

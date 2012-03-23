.class Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/CitySelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CitySelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->b(Lcom/tencent/mm/ui/tools/CitySelectUI;)[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p4, :cond_0

    new-instance v1, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;-><init>(Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    const v2, 0x7f03003b

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    const v0, 0x7f0700c2

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/CitySelectUI;->b(Lcom/tencent/mm/ui/tools/CitySelectUI;)[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p4

    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->b(Lcom/tencent/mm/ui/tools/CitySelectUI;)[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(Lcom/tencent/mm/ui/tools/CitySelectUI;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(Lcom/tencent/mm/ui/tools/CitySelectUI;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p3, :cond_0

    new-instance v1, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;-><init>(Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    const v2, 0x7f03003c

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0700c3

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const v0, 0x7f0700c4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    const v3, 0x7f0201b1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(Lcom/tencent/mm/ui/tools/CitySelectUI;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    const v3, 0x7f0201b0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

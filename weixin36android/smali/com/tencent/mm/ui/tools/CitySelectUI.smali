.class public Lcom/tencent/mm/ui/tools/CitySelectUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ExpandableListView;

.field private c:Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;

.field private d:[Ljava/lang/String;

.field private e:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CitySelectUI;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/CitySelectUI;)[[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->e:[[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03003a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a03b6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->d(I)V

    const v0, 0x7f0a0355

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->d:[Ljava/lang/String;

    array-length v0, v2

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->e:[[Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->d:[Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->e:[[Ljava/lang/String;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f0700c1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->b:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;-><init>(Lcom/tencent/mm/ui/tools/CitySelectUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->c:Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->b:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->c:Lcom/tencent/mm/ui/tools/CitySelectUI$CityExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI;->b:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/tencent/mm/ui/tools/CitySelectUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CitySelectUI$1;-><init>(Lcom/tencent/mm/ui/tools/CitySelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    const v0, 0x7f0a0015

    new-instance v1, Lcom/tencent/mm/ui/tools/CitySelectUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CitySelectUI$2;-><init>(Lcom/tencent/mm/ui/tools/CitySelectUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/CitySelectUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

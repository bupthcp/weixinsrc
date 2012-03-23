.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:[I

.field private final b:Landroid/content/Context;

.field private c:I

.field private d:[Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->d:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->b:Landroid/content/Context;

    iput p2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    const v0, 0x7f0a049e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->d:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->b(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
    .end array-data
.end method

.method private b(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    aget v2, v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    return v0
.end method

.method public final a(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    aget v3, v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    aget v3, v3, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    if-gez v2, :cond_0

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->notifyDataSetChanged()V

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    aget v2, v2, p1

    or-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    array-length v2, v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    array-length v1, v1

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->e:I

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->d:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->b:Landroid/content/Context;

    const v2, 0x7f0300bd

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701f7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->d:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->c:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter;->a:[I

    aget v2, v2, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppSubscribeUI$SubscribeAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

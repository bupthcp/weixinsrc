.class Lcom/tencent/mm/ui/DialogListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:[Ljava/lang/CharSequence;

.field protected b:[Ljava/lang/CharSequence;

.field protected c:I

.field protected d:Ljava/lang/String;

.field protected final e:Ljava/util/HashMap;

.field private final f:Landroid/content/Context;

.field private final g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->c:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->e:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/tencent/mm/ui/DialogListAdapter;->f:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->g:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->a:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->a:[Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    :cond_1
    const-string v2, "entries count different"

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v3, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/tencent/mm/ui/DialogItem;

    iget-object v2, p0, Lcom/tencent/mm/ui/DialogListAdapter;->a:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const/high16 v3, 0x10

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Lcom/tencent/mm/ui/DialogItem;-><init>(Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/DialogListAdapter;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogListAdapter;->f:Landroid/content/Context;

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;-><init>()V

    const v0, 0x7f070181

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f070182

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    const v0, 0x7f070183

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/DialogListAdapter;->a:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/tencent/mm/ui/DialogListAdapter;->g:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_0
    return-object p2

    :pswitch_0
    iget-object v1, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/tencent/mm/ui/DialogListAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v1, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter$ViewHolder;->b:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/tencent/mm/ui/DialogListAdapter;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

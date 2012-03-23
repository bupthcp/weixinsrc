.class public Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private a:Ljava/util/List;

.field private final b:Ljava/lang/Object;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->c:Z

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->e:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->f:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->f:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->f:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v0

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

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->d:Landroid/content/Context;

    const v1, 0x7f0300ae

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)V

    const v0, 0x7f0701c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;->b:Landroid/widget/TextView;

    const v0, 0x7f0701c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$Holder;->c:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v0, -0xc0c0d

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object p2

    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->c:Z

    return-void
.end method

.class Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/Map;

.field private synthetic c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->a:Landroid/content/Context;

    return-void
.end method

.method private b(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final a(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/plugin/qqmail/model/MailAddr;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0300ab

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0701c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->b:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

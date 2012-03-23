.class Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;
.super Landroid/widget/Filter;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->b(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->c(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->b(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-object v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_5

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iput-object v6, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v2, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter$ArrayFilter;->a:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$MailAddressAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private f:I

.field private synthetic g:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->g:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {p0, p2, p3}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->a:Landroid/content/Context;

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->f:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->g:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->a(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->f:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->g:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->a(II)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->f:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    return v0
.end method

.method public final e()I
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->b:I

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->f:I

    if-gt v0, v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->f:I

    rem-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->a:Landroid/content/Context;

    const v2, 0x7f0300b7

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$ViewHolder;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$ViewHolder;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a(J)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI$ViewHolder;

    goto :goto_0
.end method

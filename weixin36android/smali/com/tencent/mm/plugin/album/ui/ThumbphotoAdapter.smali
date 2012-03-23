.class public Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-direct {p1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;-><init>()V

    const-string v0, "MicroMsg.ThumbphotoAdapter"

    const-string v1, "new AlbumInfo"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;->getItem(I)Ljava/lang/Object;

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/ThumbphotoAdapter;->d:Landroid/content/Context;

    const v1, 0x7f0300f4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x7f070295

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    return-object p2
.end method

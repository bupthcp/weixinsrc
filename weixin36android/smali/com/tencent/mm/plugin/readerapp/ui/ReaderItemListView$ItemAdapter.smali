.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_4

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/high16 v7, 0x3fc0

    const v5, 0x7f0701e8

    const/16 v6, 0x8

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->getItemViewType(I)I

    move-result v1

    if-nez p2, :cond_4

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v3, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v4}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a049d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e()I

    move-result v0

    invoke-virtual {v3, v4, v0, p1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0, v7}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    :goto_4
    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e()I

    move-result v0

    invoke-virtual {v3, v4, v0, p1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v7}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_5
    return-object p2

    :pswitch_0
    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300b5

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701ea

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300b4

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701e9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300b3

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f0701e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->g:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300b8

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->c:Landroid/widget/ImageView;

    const v0, 0x7f0701e7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f0701ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f0701ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f0701ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0300b9

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f0701ef

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f0701ed

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f0701ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;

    move-object v1, v0

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

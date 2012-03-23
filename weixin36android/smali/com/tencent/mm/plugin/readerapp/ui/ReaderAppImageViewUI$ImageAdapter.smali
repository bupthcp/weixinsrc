.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    const-string v0, "MicroMsg.ReaderAppImageViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lstpicurl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, -0x1

    if-nez p2, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    const v2, 0x7f0300bb

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->a:Landroid/widget/ProgressBar;

    const v0, 0x7f0701f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)I

    move-result v3

    invoke-virtual {v2, v0, v3, p1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v2

    invoke-static {v0, v2}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lb/a/w;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p2, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p2, v1, v2, v3}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;-><init>(Landroid/content/Context;II)V

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v0}, Lcom/tencent/mm/plugin/readerapp/ui/gallery/ReaderImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$ImageAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

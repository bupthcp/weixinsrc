.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const-string v0, "MicroMsg.PhotoAlbumUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getCount()I

    move-result v0

    if-ne p3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->c()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b004b

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Landroid/app/Dialog;)Landroid/app/Dialog;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5$1;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    const v2, 0x7f0702ba

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->h(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->i(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->j(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->k(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    new-instance v2, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;)Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0
.end method

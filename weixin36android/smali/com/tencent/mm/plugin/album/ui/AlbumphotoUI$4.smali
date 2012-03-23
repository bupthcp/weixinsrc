.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->b(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->c(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->d(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->e(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListNP;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$4;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListNP;-><init>(Ljava/lang/String;Lcom/tencent/mm/plugin/album/model/AlbumInfo;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP;

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/album/model/NetSceneGetTLPhotoListNP;-><init>(Lcom/tencent/mm/plugin/album/model/AlbumInfo;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_1
.end method

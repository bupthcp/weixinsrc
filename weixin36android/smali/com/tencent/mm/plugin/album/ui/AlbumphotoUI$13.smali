.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    new-instance v1, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->k(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;)Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$13;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->l(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Lcom/tencent/mm/plugin/album/model/NetSceneDownloadAlbumPhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

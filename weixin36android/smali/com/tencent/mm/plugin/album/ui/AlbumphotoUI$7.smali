.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$7;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$7;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->f(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;

.field private synthetic b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11$1;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11$1;->a:Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

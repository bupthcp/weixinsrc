.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->n(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;-><init>(Ljava/lang/String;Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Upload "

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11$1;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$11;Lcom/tencent/mm/plugin/album/model/NetSceneUploadAlbumPhoto;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->a(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method

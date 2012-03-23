.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    iput p2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->o(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;->b:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    const v3, 0x7f0a0027

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$12;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

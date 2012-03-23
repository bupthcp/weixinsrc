.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->m(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    if-ne p2, v5, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    sget-object v1, Lcom/tencent/mm/storage/ConstantsStorage;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "microMsg."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$10;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

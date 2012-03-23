.class Lcom/tencent/mm/ui/tools/CropImageUI$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/CropImageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const-string v0, "MicroMsg.CropImageUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->q(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->q(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->r(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->s(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->f(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->t(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->u(Lcom/tencent/mm/ui/tools/CropImageUI;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CropImage_ImgPath"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$10;->a:Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/mm/storage/ConstantsStorage;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mmexport"

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

    sget-object v3, Lcom/tencent/mm/storage/ConstantsStorage;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmexport"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-static {v1, v7, v8}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v1

    invoke-static {v3, v4, v5, v1}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    const v1, 0x7f0a0317

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

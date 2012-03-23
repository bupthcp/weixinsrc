.class Lcom/tencent/mm/ui/QQSyncUI$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/mm/ui/QQSyncUI$15;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI$15;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    iput-object p2, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Lcom/tencent/mm/ui/QQSyncUI$15;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/SecurityImage;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a00be

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/QQSyncUI$15$1$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/QQSyncUI$15$1$1;-><init>(Lcom/tencent/mm/ui/QQSyncUI$15$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Lcom/tencent/mm/ui/QQSyncUI$15;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/SecurityImage;->c()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->b(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI$15;->a(Lcom/tencent/mm/ui/QQSyncUI$15;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/SecurityImage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/ILoginModel;->inputVerifyCode(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "autologin"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->k(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$15$1;->b:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v1, v1, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->k(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

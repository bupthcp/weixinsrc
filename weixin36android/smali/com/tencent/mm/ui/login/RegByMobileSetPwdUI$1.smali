.class Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const v4, 0x7f0a0102

    const v3, 0x7f0a00ae

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->a(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->b(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    const v1, 0x7f0a0103

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    const v1, 0x7f0a0104

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    const v1, 0x7f0a00bc

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    const v1, 0x7f0a00bd

    invoke-static {v0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->n()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bindmcontact_mobile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "regbymobile_ticket"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "is_sync_addr"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "MicroMsg.RegByMobileSetPwdUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ticket:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MicroMsg.RegByMobileSetPwdUI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSync "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "regbymobile_pwd"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "bindmcontact_mobile"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_sync_addr"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "regbymobile_ticket"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    const-class v2, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->a(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;Ljava/lang/Class;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->finish()V

    goto/16 :goto_0
.end method

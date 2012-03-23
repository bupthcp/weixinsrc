.class Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->a(Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    const v1, 0x7f0a00b7

    const v2, 0x7f0a0102

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "regbymobile_pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "regbymobile_ticket"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneReg;

    const-string v1, ""

    const/4 v4, 0x0

    const-string v5, ""

    iget-object v6, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    invoke-static {v6}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->b(Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v0 .. v10}, Lcom/tencent/mm/modelsimple/NetSceneReg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;->a:Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;

    const v5, 0x7f0a00f5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1$1;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1$1;-><init>(Lcom/tencent/mm/ui/login/RegByMobileSetNickUI$1;Lcom/tencent/mm/modelsimple/NetSceneReg;)V

    invoke-static {v2, v3, v4, v10, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;->a(Lcom/tencent/mm/ui/login/RegByMobileSetNickUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method

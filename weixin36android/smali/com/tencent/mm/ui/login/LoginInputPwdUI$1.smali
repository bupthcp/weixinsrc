.class Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v2, 0x7f0a011c

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    const v1, 0x7f0a00ba

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    const v1, 0x7f0a00b9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->n()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->b:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelsimple/NetSceneAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;->b:Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1$1;-><init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;Lcom/tencent/mm/modelsimple/NetSceneAuth;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method

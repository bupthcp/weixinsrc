.class Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v4, 0x7f0a0010

    iget-object v0, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->c(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->d(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->a(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->e(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/o;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->d(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    const v1, 0x7f0a02b4

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->n()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneResetPwd;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->e(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/NetSceneResetPwd;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2$1;-><init>(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$2;Lcom/tencent/mm/modelsimple/NetSceneResetPwd;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->a(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method

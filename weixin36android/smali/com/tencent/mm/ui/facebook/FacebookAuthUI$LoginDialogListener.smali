.class final Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;-><init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MicroMsg.FacebookAuthUI"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "MicroMsg.FacebookAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->d(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const v2, 0x7f0a048b

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v3, v0, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->d(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;)Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/facebook/sdk/DialogError;)V
    .locals 4

    const-string v0, "MicroMsg.FacebookAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/ui/facebook/sdk/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/facebook/sdk/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const v3, 0x7f0a0481

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V
    .locals 4

    const-string v0, "MicroMsg.FacebookAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFacebookError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const v3, 0x7f0a0481

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    return-void
.end method

.class Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const v2, 0x7f0a048c

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;)Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

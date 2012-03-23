.class Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelbase/NetSceneBase;

.field private synthetic b:Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;->b:Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "regbymobile_ticket"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_sync_addr"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "bindmcontact_mobile"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;->b:Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;->b(Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;->b:Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;

    const-class v2, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-static {v0, v2, v1}, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;->a(Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;Ljava/lang/Class;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI$5;->b:Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;->finish()V

    return-void
.end method

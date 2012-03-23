.class Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$1;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$1;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    const-class v2, Lcom/tencent/mm/ui/tools/CountryCodeUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "country_name"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$1;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->a(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "couttry_code"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$1;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->b(Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI$1;->a:Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/ui/login/ForgetPwdMobileUI;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

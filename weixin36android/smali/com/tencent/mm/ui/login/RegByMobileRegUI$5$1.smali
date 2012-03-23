.class Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v0, v0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    const v1, 0x7f0a02c9

    const v2, 0x7f0a0010

    const v3, 0x7f0a0016

    const v4, 0x7f0a0015

    new-instance v5, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$1;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;)V

    new-instance v6, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$2;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1$2;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;)V

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IIIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v0, v0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "login_mobilephone"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    const-class v2, Lcom/tencent/mm/ui/login/LoginInputPwdUI;

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Ljava/lang/Class;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v0, v0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5$1;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    const v2, 0x7f0a007a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

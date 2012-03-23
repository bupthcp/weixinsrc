.class Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

.field private synthetic b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->a:Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->d(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    const-class v2, Lcom/tencent/mm/ui/login/LoginUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->b:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;->a:Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-static {v1, v4, v0, v4, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

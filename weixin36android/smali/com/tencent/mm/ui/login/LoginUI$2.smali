.class Lcom/tencent/mm/ui/login/LoginUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

.field private synthetic b:Lcom/tencent/mm/ui/login/LoginUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginUI;Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->b:Lcom/tencent/mm/ui/login/LoginUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->b:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/LoginUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->b:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/LoginUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->b:Lcom/tencent/mm/ui/login/LoginUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/login/LoginUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->b:Lcom/tencent/mm/ui/login/LoginUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginUI$2;->a:Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-static {v1, v4, v0, v4, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    return-void
.end method

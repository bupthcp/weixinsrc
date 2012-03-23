.class Lcom/tencent/mm/ui/bindqq/BindQQUI$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bindqq/BindQQUI$3;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindqq/BindQQUI$3;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/BindQQUI$3$1;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/BindQQUI$3$1;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindqq/BindQQUI$3;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindqq/BindQQUI$3$1;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI$3;

    iget-object v2, v2, Lcom/tencent/mm/ui/bindqq/BindQQUI$3;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI;

    const-class v3, Lcom/tencent/mm/ui/bindqq/VerifyQQUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

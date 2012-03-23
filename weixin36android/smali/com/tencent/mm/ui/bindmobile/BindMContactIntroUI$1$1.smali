.class Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;

    iget-object v2, v2, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    const-class v3, Lcom/tencent/mm/ui/bindmobile/BindMContactUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

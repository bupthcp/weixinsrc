.class Lcom/tencent/mm/ui/setting/SettingsNetStatUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getParent()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a01f0

    const v3, 0x7f0a01ed

    new-instance v4, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$3;

    invoke-direct {v4, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    new-instance v5, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$4;

    invoke-direct {v5, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$4;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

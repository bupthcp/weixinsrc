.class Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0215

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

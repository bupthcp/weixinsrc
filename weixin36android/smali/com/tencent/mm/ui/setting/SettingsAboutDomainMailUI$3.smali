.class Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    const-class v2, Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_GroupFilter_Type"

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/GroupInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_GroupFilter_Str"

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/GroupInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_GroupFilter_DisplayName"

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/GroupInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->b(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->c(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/DomainEmailLogic;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method

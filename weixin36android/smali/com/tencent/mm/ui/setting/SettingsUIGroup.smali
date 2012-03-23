.class public Lcom/tencent/mm/ui/setting/SettingsUIGroup;
.super Lcom/tencent/mm/ui/MMUIGroup;


# static fields
.field public static a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMUIGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMUIGroup;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lcom/tencent/mm/ui/setting/SettingsUI;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-virtual {v0, p1, p3}, Lcom/tencent/mm/ui/setting/SettingsUI;->a(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;

    invoke-virtual {v0, p1, p3}, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;->a(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMUIGroup;->onDestroy()V

    const-string v0, "MicroMsg.SettingsUIGroup"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMUIGroup;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMUIGroup;->onResume()V

    return-void
.end method

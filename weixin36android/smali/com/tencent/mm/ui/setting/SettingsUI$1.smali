.class Lcom/tencent/mm/ui/setting/SettingsUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUI;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsUI;

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsPersonalInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

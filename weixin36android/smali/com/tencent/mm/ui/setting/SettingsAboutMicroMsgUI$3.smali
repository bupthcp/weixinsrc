.class Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/Updater$IOnUpdateEnd;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->finish()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

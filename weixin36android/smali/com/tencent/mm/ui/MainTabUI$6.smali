.class Lcom/tencent/mm/ui/MainTabUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MainTabUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MainTabUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainTabUI$6;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "welcome_page_show"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$6;->a:Lcom/tencent/mm/ui/MainTabUI;

    const-string v1, "com.tencent.mm_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/MainTabUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/AccountStorage;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$6;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$6;->a:Lcom/tencent/mm/ui/MainTabUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

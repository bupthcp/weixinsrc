.class public Lcom/tencent/mm/ui/LauncherUI;
.super Landroid/app/Activity;


# static fields
.field private static a:Lcom/tencent/mm/booter/Debugger;


# instance fields
.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    return-void
.end method

.method private a(II)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/LauncherUI$1;

    invoke-direct {v1, p0, p2}, Lcom/tencent/mm/ui/LauncherUI$1;-><init>(Lcom/tencent/mm/ui/LauncherUI;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Landroid/content/Intent;II)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/LauncherUI$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/tencent/mm/ui/LauncherUI$2;-><init>(Lcom/tencent/mm/ui/LauncherUI;ILandroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/LauncherUI;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v4}, Lcom/tencent/mm/ui/LauncherUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login_user_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/ui/LauncherUI;->a:Lcom/tencent/mm/booter/Debugger;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/mm/booter/Debugger;

    invoke-direct {v2, p0}, Lcom/tencent/mm/booter/Debugger;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/mm/ui/LauncherUI;->a:Lcom/tencent/mm/booter/Debugger;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/booter/Debugger;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Intro_Switch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "MicroMsg.LauncherUI"

    const-string v2, "[Launching Application]"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/LocalAccInfo;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Y()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->y()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->z()V

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/login/LoginSelectorUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/LauncherUI;I)V
    .locals 1

    const/16 v0, 0xc8

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/LauncherUI;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/LauncherUI;Landroid/content/Intent;I)V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/mm/ui/LauncherUI;->a(Landroid/content/Intent;II)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on activity result"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on activity from WelcomeUI"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/high16 v2, 0x4320

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "noop"

    invoke-static {v0, v1}, Lcom/tencent/mm/booter/CoreServiceHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {p0, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/tencent/mm/ui/MMActivity;->a(F)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a()V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "crash_record_file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MicroMsg.LauncherUI"

    const-string v2, "last time crash!!"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    const-string v1, "absolutely_exit"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "exit absolutely!!!"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    const-string v1, "exit_and_view"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const-string v1, "MicroMsg.LauncherUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jump to exit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/LauncherUI;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->f()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    const-string v1, "can_finish"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "exit obviously"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.tencent.mm_preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->a(Landroid/content/Context;)V

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->b(Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/LauncherUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.tencent.mm_preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.tencent.mm:push"

    invoke-static {p0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "settings_fully_exit"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    const-string v0, "welcome_page_show"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    const-string v1, "nofification_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "new_msg_nofification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "update_nofification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    invoke-direct {p0, v0, v3, v3}, Lcom/tencent/mm/ui/LauncherUI;->a(Landroid/content/Intent;II)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/LauncherUI;->b:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    const-string v0, "welcome_page_show"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/WelcomeUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v4}, Lcom/tencent/mm/ui/LauncherUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v3, v3}, Lcom/tencent/mm/ui/LauncherUI;->a(II)V

    goto :goto_1
.end method

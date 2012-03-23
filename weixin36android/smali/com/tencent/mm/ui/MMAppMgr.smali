.class public final Lcom/tencent/mm/ui/MMAppMgr;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/ui/MMAppMgr;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:I


# instance fields
.field private b:Z

.field private c:Z

.field private final g:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/MMAppMgr;->a:Lcom/tencent/mm/ui/MMAppMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMAppMgr;->b:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMAppMgr;->c:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/MMAppMgr$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MMAppMgr$1;-><init>(Lcom/tencent/mm/ui/MMAppMgr;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/MMAppMgr;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/tencent/mm/ui/MMAppMgr;->f:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "show_whatsnew"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const-string v0, "network_doctor_shown"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0a0075

    const v1, 0x7f0a0010

    new-instance v2, Lcom/tencent/mm/ui/MMAppMgr$3;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/MMAppMgr$3;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "absolutely_exit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "exit_and_view"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->r()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "wap_reporter_shown"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0a0074

    const v1, 0x7f0a0010

    new-instance v2, Lcom/tencent/mm/ui/MMAppMgr$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/mm/ui/MMAppMgr$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/mm/ui/MMAppMgr;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->g()Lcom/tencent/mm/ui/MMAppMgr;

    move-result-object v0

    iput-boolean p0, v0, Lcom/tencent/mm/ui/MMAppMgr;->b:Z

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->g()Lcom/tencent/mm/ui/MMAppMgr;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/MMAppMgr;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMAppMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/MMAppMgr;->c:Z

    return p1
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/MMAppMgr;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Main_ShortCut"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a012f

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/MMAppMgr$4;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/MMAppMgr$4;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Main_ShortCut"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v1, "http://w.mail.qq.com/cgi-bin/mmfeedback?t=mmfeedback&f=xhtml"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/Base64;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/Base64;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/Base64;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&autologin=n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.MMAppMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload error to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/tencent/mm/ui/MMAppMgr;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMAppMgr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMAppMgr;->b:Z

    return v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/tencent/mm/ui/MMAppMgr;->f:I

    return v0
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->g()Lcom/tencent/mm/ui/MMAppMgr;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/ui/MMAppMgr;->c:Z

    return v0
.end method

.method public static e()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->p()Lcom/tencent/mm/booter/MMNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/booter/MMNotification;->a()V

    return-void
.end method

.method public static f()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->a(Landroid/content/Context;)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private static g()Lcom/tencent/mm/ui/MMAppMgr;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/MMAppMgr;->a:Lcom/tencent/mm/ui/MMAppMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/MMAppMgr;

    invoke-direct {v0}, Lcom/tencent/mm/ui/MMAppMgr;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/MMAppMgr;->a:Lcom/tencent/mm/ui/MMAppMgr;

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/MMAppMgr;->a:Lcom/tencent/mm/ui/MMAppMgr;

    return-object v0
.end method

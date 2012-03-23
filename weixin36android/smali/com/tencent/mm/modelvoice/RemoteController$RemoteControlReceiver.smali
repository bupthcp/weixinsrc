.class public Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private static b:Lcom/tencent/mm/modelvoice/RemoteController$CallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->b:Lcom/tencent/mm/modelvoice/RemoteController$CallBack;

    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    sput-object v1, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    :cond_0
    return-void
.end method

.method static synthetic b()Lcom/tencent/mm/modelvoice/RemoteController$CallBack;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->b:Lcom/tencent/mm/modelvoice/RemoteController$CallBack;

    return-object v0
.end method

.method static synthetic c()Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.RemoteControlReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown action, ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->b:Lcom/tencent/mm/modelvoice/RemoteController$CallBack;

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.RemoteControlReceiver"

    const-string v1, "got remote key event down"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->b:Lcom/tencent/mm/modelvoice/RemoteController$CallBack;

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/RemoteController$CallBack;->c()V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver$1;-><init>(Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    sput-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    :cond_2
    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

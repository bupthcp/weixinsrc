.class public Lcom/tencent/mm/booter/CoreService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetNotify;
.implements Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;


# instance fields
.field private a:Lcom/tencent/mm/network/MMAutoAuth;

.field private b:Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;

.field private final c:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

.field private d:Lcom/tencent/mm/modelstat/NetStatWatchDog;

.field private e:Lcom/tencent/mm/platformtools/MMWakerLock;

.field private f:Lcom/tencent/mm/platformtools/FrequencyLimiter;

.field private g:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/tencent/mm/booter/CoreService$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/CoreService$1;-><init>(Lcom/tencent/mm/booter/CoreService;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreService;->c:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatWatchDog;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatWatchDog;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreService;->d:Lcom/tencent/mm/modelstat/NetStatWatchDog;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreService;->e:Lcom/tencent/mm/platformtools/MMWakerLock;

    new-instance v0, Lcom/tencent/mm/platformtools/FrequencyLimiter;

    invoke-direct {v0}, Lcom/tencent/mm/platformtools/FrequencyLimiter;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreService;->f:Lcom/tencent/mm/platformtools/FrequencyLimiter;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/booter/CoreService$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/booter/CoreService$3;-><init>(Lcom/tencent/mm/booter/CoreService;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/booter/CoreService;)Lcom/tencent/mm/platformtools/FrequencyLimiter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->f:Lcom/tencent/mm/platformtools/FrequencyLimiter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/booter/CoreService;)Lcom/tencent/mm/network/MMAutoAuth;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    return-object v0
.end method


# virtual methods
.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/booter/CoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->d:Lcom/tencent/mm/modelstat/NetStatWatchDog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net_changed, on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/modelstat/NetStatWatchDog;->a(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    const-string v0, "MicroMsg.CoreService"

    const-string v1, "[NETWORK LOST]"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v0

    iput-boolean v5, v0, Lcom/tencent/mm/network/NetService;->a:Z

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.CoreService"

    const-string v1, "[NETWORK CONNECTED]"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v0

    iput-boolean v4, v0, Lcom/tencent/mm/network/NetService;->a:Z

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->e:Lcom/tencent/mm/platformtools/MMWakerLock;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-virtual {p0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/platformtools/MMWakerLock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreService;->e:Lcom/tencent/mm/platformtools/MMWakerLock;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->e:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->e:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->a()V

    :cond_2
    const-string v0, "MicroMsg.CoreService"

    const-string v1, "checking ready, start in 7000ms"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x1b58

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;I[B)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "com.tencent.mm_preferences"

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/booter/CoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "settings_fully_exit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MicroMsg.CoreService"

    const-string v2, "fully exited, no need to notify worker"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/booter/NotifyReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notify_option_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notify_uin"

    iget-object v2, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-virtual {v2}, Lcom/tencent/mm/network/MMAutoAuth;->g()Lcom/tencent/mm/network/AccInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notify_respType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notify_respBuf"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "MicroMsg.CoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify broadcast:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->e()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/booter/CoreService$2;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/booter/CoreService$2;-><init>(Lcom/tencent/mm/booter/CoreService;Landroid/content/Intent;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "MicroMsg.CoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind~~~ threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "MicroMsg.CoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate~~~threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/tencent/mm/booter/Debugger;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/Debugger;-><init>(Landroid/content/Context;)V

    const-string v1, ".com.tencent.mm.debug.log.level"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->a(IZ)V

    const-string v1, ".com.tencent.mm.debug.test.display_errcode"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->a:Z

    const-string v1, ".com.tencent.mm.debug.test.display_msgstate"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->b:Z

    const-string v1, ".com.tencent.mm.debug.test.network.simulate_fault"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->c:Z

    const-string v1, ".com.tencent.mm.debug.test.network.force_touch"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->d:Z

    const-string v1, ".com.tencent.mm.debug.test.outputToSdCardlog"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->e:Z

    const-string v1, ".com.tencent.mm.debug.test.crashIsExit"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->f:Z

    const-string v1, ".com.tencent.mm.debug.test.uploadLog"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->d(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    sput-boolean v1, Lcom/tencent/mm/test/Test;->g:Z

    :try_start_0
    const-string v1, "MicroMsg.Debugger"

    const-string v2, "try set test protocal version"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ".com.tencent.mm.debug.log.setversion"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/protocal/ConstantsProtocal;->a(I)V

    const-string v2, "MicroMsg.Debugger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set up test protocal version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-boolean v1, Lcom/tencent/mm/test/Test;->g:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/tencent/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/tencent/"

    const-string v3, "push.log"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v1, "/sdcard/tencent/push.log"

    const-string v2, "push.log"

    const-string v3, "(null)"

    sget v4, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->c:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;)V

    invoke-virtual {p0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/network/MMPushCore;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/tencent/mm/network/NetService;

    invoke-direct {v1}, Lcom/tencent/mm/network/NetService;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/network/MMPushCore;->a(Lcom/tencent/mm/network/NetService;)V

    new-instance v1, Lcom/tencent/mm/network/NetworkEvent;

    invoke-direct {v1}, Lcom/tencent/mm/network/NetworkEvent;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/network/MMPushCore;->a(Lcom/tencent/mm/network/NetworkEvent;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/network/MMPushCore;->a(Landroid/os/Handler;)V

    invoke-static {p0}, Lcom/tencent/mm/network/MMPushCore;->a(Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;)V

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->d:Lcom/tencent/mm/modelstat/NetStatWatchDog;

    invoke-static {v1}, Lcom/tencent/mm/network/MMPushCore;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->g()Lcom/tencent/mm/network/MMAutoAuth;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    if-nez v1, :cond_3

    const-string v1, "MicroMsg.CoreService"

    const-string v2, "autoAuth is null and new one"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/network/MMAutoAuth;

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->e()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/network/MMAutoAuth;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-static {v1}, Lcom/tencent/mm/network/MMPushCore;->a(Lcom/tencent/mm/network/MMAutoAuth;)V

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/network/MMAutoAuth;->a(Lcom/tencent/mm/network/IOnGYNetNotify;)V

    new-instance v1, Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;

    iget-object v2, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-virtual {v2}, Lcom/tencent/mm/network/MMAutoAuth;->g()Lcom/tencent/mm/network/AccInfo;

    move-result-object v2

    const-string v3, "net_push"

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;-><init>(Lcom/tencent/mm/network/IAccInfo;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/booter/CoreService;->b:Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;

    const-string v1, ".com.tencent.mm.debug.server.host.http"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/Debugger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".com.tencent.mm.debug.server.ports.http"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/booter/Debugger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".com.tencent.mm.debug.server.host.socket"

    invoke-virtual {v0, v3}, Lcom/tencent/mm/booter/Debugger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".com.tencent.mm.debug.server.ports.socket"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/booter/Debugger;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/tencent/mm/network/MMAutoAuth;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->c(Landroid/content/Context;)V

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/booter/CoreService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_4

    :cond_2
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v2

    iput-boolean v5, v2, Lcom/tencent/mm/network/NetService;->a:Z

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/booter/CoreService;->d:Lcom/tencent/mm/modelstat/NetStatWatchDog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startup, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_5

    const-string v1, "empty"

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", bd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Lcom/tencent/mm/modelstat/NetStatWatchDog;->a(Ljava/lang/String;Z)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/booter/CoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_service_running"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :catch_0
    move-exception v1

    const-string v1, "MicroMsg.Debugger"

    const-string v2, "no debugger was got"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "MicroMsg.CoreService"

    const-string v2, "autoAuth is not null and reset"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService;->a:Lcom/tencent/mm/network/MMAutoAuth;

    invoke-virtual {v1}, Lcom/tencent/mm/network/MMAutoAuth;->b()V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v2

    iput-boolean v6, v2, Lcom/tencent/mm/network/NetService;->a:Z

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->c()Lcom/tencent/mm/network/NetworkEvent;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/tencent/mm/network/NetworkEvent;->a(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.CoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy~~~ threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/booter/CoreService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "push_service_running"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService;->d:Lcom/tencent/mm/modelstat/NetStatWatchDog;

    const-string v1, "stopped"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelstat/NetStatWatchDog;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mm/modelstat/NetStatWatchDog;->b()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "MicroMsg.CoreService"

    const-string v1, "[COMPLETE EXIT]"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->d(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->b(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "MicroMsg.CoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRebind~~~ threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3

    const-string v0, "MicroMsg.CoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart~~~threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "MicroMsg.CoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind~~~ threadID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->b()Lcom/tencent/mm/network/NetService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/network/NetService;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

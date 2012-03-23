.class final Lcom/tencent/mm/booter/CoreServiceHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/booter/CoreServiceHelper$1$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/booter/CoreServiceHelper$1$1;-><init>(Lcom/tencent/mm/booter/CoreServiceHelper$1;)V

    iput-object v0, p0, Lcom/tencent/mm/booter/CoreServiceHelper$1;->a:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "MicroMsg.CoreServiceHelper"

    const-string v1, "onServiceConnected "

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/booter/CoreServiceHelper;->a:Z

    new-instance v0, Lcom/tencent/mm/modelbase/RDispatcher;

    invoke-static {p2}, Lcom/tencent/mm/network/IDispatcher_AIDL$Stub;->a(Landroid/os/IBinder;)Lcom/tencent/mm/network/IDispatcher_AIDL;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/booter/CoreServiceHelper$1;->a:Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbase/RDispatcher;-><init>(Lcom/tencent/mm/network/IDispatcher_AIDL;Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;)V

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/network/IDispatcher;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MicroMsg.CoreServiceHelper"

    const-string v1, "onServiceDisconnected "

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/booter/CoreServiceHelper;->a:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v0, v1}, Lcom/tencent/mm/booter/CoreServiceHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

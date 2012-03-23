.class public Lcom/tencent/mm/platformtools/MMWakerLock;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x10000001

    const-string v2, "MicroMsg.MMWakerLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/platformtools/MMWakerLock;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/platformtools/MMWakerLock$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/platformtools/MMWakerLock$1;-><init>(Lcom/tencent/mm/platformtools/MMWakerLock;)V

    const-wide/16 v2, 0x36b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock;->a:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

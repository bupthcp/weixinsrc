.class Lcom/tencent/mm/platformtools/MMWakerLock$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/platformtools/MMWakerLock;


# direct methods
.method constructor <init>(Lcom/tencent/mm/platformtools/MMWakerLock;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/platformtools/MMWakerLock$1;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock$1;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->a(Lcom/tencent/mm/platformtools/MMWakerLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock$1;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->a(Lcom/tencent/mm/platformtools/MMWakerLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MMWakerLock$1;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->a(Lcom/tencent/mm/platformtools/MMWakerLock;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

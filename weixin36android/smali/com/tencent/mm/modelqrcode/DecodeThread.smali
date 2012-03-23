.class public final Lcom/tencent/mm/modelqrcode/DecodeThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Handler;

.field private c:La/b;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private e:Lcom/tencent/mm/modelqrcode/CameraManager;

.field private f:Lcom/tencent/mm/modelqrcode/ScreenManager;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelqrcode/CameraManager;Lcom/tencent/mm/modelqrcode/ScreenManager;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->c:La/b;

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    iput-object p2, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->f:Lcom/tencent/mm/modelqrcode/ScreenManager;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->a:Landroid/os/Handler;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/tencent/mm/modelqrcode/DecodeHandler;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    iget-object v2, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->f:Lcom/tencent/mm/modelqrcode/ScreenManager;

    iget-object v3, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->c:La/b;

    iget-object v4, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelqrcode/DecodeHandler;-><init>(Lcom/tencent/mm/modelqrcode/CameraManager;Lcom/tencent/mm/modelqrcode/ScreenManager;La/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeThread;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

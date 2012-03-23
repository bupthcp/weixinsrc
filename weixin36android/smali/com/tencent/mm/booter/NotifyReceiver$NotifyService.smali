.class public Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;
.super Landroid/app/Service;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService$1;-><init>(Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;)V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->a(I)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->a(I)V

    return-void
.end method

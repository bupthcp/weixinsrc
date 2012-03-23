.class Lcom/tencent/mm/booter/NotifyReceiver$NotifyService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService$1;->a:Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/booter/NotifyReceiver;

    invoke-direct {v0}, Lcom/tencent/mm/booter/NotifyReceiver;-><init>()V

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService$1;->a:Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;->a(Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;)V

    goto :goto_0
.end method

.class Lcom/tencent/mm/booter/CoreService$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/booter/CoreService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/CoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/CoreService$3;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService$3;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreService;->a(Lcom/tencent/mm/booter/CoreService;)Lcom/tencent/mm/platformtools/FrequencyLimiter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/FrequencyLimiter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.CoreService"

    const-string v1, "checker frequency limited"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService$3;->a:Lcom/tencent/mm/booter/CoreService;

    const-class v2, Lcom/tencent/mm/booter/NotifyReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notify_option_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "notify_uin"

    iget-object v2, p0, Lcom/tencent/mm/booter/CoreService$3;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-static {v2}, Lcom/tencent/mm/booter/CoreService;->b(Lcom/tencent/mm/booter/CoreService;)Lcom/tencent/mm/network/MMAutoAuth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/network/MMAutoAuth;->g()Lcom/tencent/mm/network/AccInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/network/AccInfo;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService$3;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/booter/CoreService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class Lcom/tencent/mm/booter/CoreService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/tencent/mm/booter/CoreService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/CoreService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/CoreService$2;->b:Lcom/tencent/mm/booter/CoreService;

    iput-object p2, p0, Lcom/tencent/mm/booter/CoreService$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService$2;->b:Lcom/tencent/mm/booter/CoreService;

    iget-object v1, p0, Lcom/tencent/mm/booter/CoreService$2;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/CoreService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.class Lcom/tencent/mm/booter/CoreService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;


# instance fields
.field private synthetic a:Lcom/tencent/mm/booter/CoreService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/CoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/CoreService$1;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService$1;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/booter/CoreService$1;->a:Lcom/tencent/mm/booter/CoreService;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->b(Landroid/content/Context;)V

    return-void
.end method

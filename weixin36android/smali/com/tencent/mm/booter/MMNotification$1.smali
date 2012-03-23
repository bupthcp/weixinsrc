.class Lcom/tencent/mm/booter/MMNotification$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/booter/MMNotification;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/MMNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/MMNotification$1;->a:Lcom/tencent/mm/booter/MMNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/tencent/mm/booter/MMNotification$1;->a:Lcom/tencent/mm/booter/MMNotification;

    iget-object v1, p0, Lcom/tencent/mm/booter/MMNotification$1;->a:Lcom/tencent/mm/booter/MMNotification;

    invoke-static {v1}, Lcom/tencent/mm/booter/MMNotification;->a(Lcom/tencent/mm/booter/MMNotification;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/booter/MMNotification$1;->a:Lcom/tencent/mm/booter/MMNotification;

    invoke-static {v2}, Lcom/tencent/mm/booter/MMNotification;->b(Lcom/tencent/mm/booter/MMNotification;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/booter/MMNotification$1;->a:Lcom/tencent/mm/booter/MMNotification;

    invoke-static {v3}, Lcom/tencent/mm/booter/MMNotification;->c(Lcom/tencent/mm/booter/MMNotification;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/booter/MMNotification;->a(Lcom/tencent/mm/booter/MMNotification;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.class Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.LocationServer"

    const-string v1, "try to get location"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;

    :try_start_0
    iget-wide v1, v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->a:D

    iget-wide v3, v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->b:D

    iget-object v5, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v5}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/location/MapUtil;->a(DDLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v1, v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->d:Ljava/lang/String;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v2, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v1}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {v1}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->e(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/util/Set;

    move-result-object v1

    iget-wide v2, v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.LocationServer"

    const-string v1, "try to get location interrup"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    return-void

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

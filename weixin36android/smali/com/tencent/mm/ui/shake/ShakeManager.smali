.class public Lcom/tencent/mm/ui/shake/ShakeManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->a:Landroid/hardware/SensorManager;

    return-void
.end method

.method private e()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->a:Landroid/hardware/SensorManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeManager;->c()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/shake/ShakeSensorListener;-><init>(Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.ShakeManager"

    const-string v1, "no sensor found for shake detection"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeManager;->b:Lcom/tencent/mm/ui/shake/ShakeSensorListener;

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/tencent/mm/platformtools/SensorController;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static a:F

.field private static d:F


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:F

.field private e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

.field private f:Landroid/hardware/Sensor;

.field private final g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x4f80

    sput v0, Lcom/tencent/mm/platformtools/SensorController;->a:F

    const/high16 v0, 0x3f00

    sput v0, Lcom/tencent/mm/platformtools/SensorController;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/mm/platformtools/SensorController;->h:Z

    iput-boolean v1, p0, Lcom/tencent/mm/platformtools/SensorController;->i:Z

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->b:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->f:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->f:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/platformtools/SensorController;->g:Z

    sget v0, Lcom/tencent/mm/platformtools/SensorController;->d:F

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/platformtools/SensorController;->c:F

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MicroMsg.SensorController"

    const-string v1, "sensor callback removed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SensorController;->f:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->b:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/platformtools/SensorController;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

    return-void
.end method

.method public final a(Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;)V
    .locals 3

    const-string v0, "MicroMsg.SensorController"

    const-string v1, "sensor callback set"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/platformtools/SensorController;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/SensorController;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SensorController;->f:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/platformtools/SensorController;->i:Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/platformtools/SensorController;->e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-boolean v3, p0, Lcom/tencent/mm/platformtools/SensorController;->h:Z

    :cond_0
    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/tencent/mm/platformtools/SensorController;->h:Z

    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/platformtools/SensorController;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget v1, Lcom/tencent/mm/platformtools/SensorController;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    sput v0, Lcom/tencent/mm/platformtools/SensorController;->a:F

    const/high16 v1, 0x3f00

    add-float/2addr v1, v0

    sput v1, Lcom/tencent/mm/platformtools/SensorController;->d:F

    :cond_1
    iget v1, p0, Lcom/tencent/mm/platformtools/SensorController;->c:F

    sget v2, Lcom/tencent/mm/platformtools/SensorController;->d:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    sget v1, Lcom/tencent/mm/platformtools/SensorController;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SensorController;->e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

    if-eqz v1, :cond_2

    const-string v1, "MicroMsg.SensorController"

    const-string v2, "sensor event false"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SensorController;->e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

    invoke-interface {v1, v3}, Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;->a(Z)V

    :cond_2
    :goto_1
    iput v0, p0, Lcom/tencent/mm/platformtools/SensorController;->c:F

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/tencent/mm/platformtools/SensorController;->c:F

    sget v2, Lcom/tencent/mm/platformtools/SensorController;->d:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    sget v1, Lcom/tencent/mm/platformtools/SensorController;->d:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SensorController;->e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

    if-eqz v1, :cond_2

    const-string v1, "MicroMsg.SensorController"

    const-string v2, "sensor event true"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/platformtools/SensorController;->e:Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;->a(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/tencent/mm/ui/shake/ShakeSensorListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorListener;


# static fields
.field private static d:I


# instance fields
.field private a:Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;

.field private final b:[F

.field private c:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->b:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->c:[F

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->a:Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x20t 0x40t
        0x0t 0x0t 0x0t 0x3ft
    .end array-data
.end method

.method public static a()V
    .locals 2

    const-string v0, "MicroMsg.ShakeSensorListener"

    const-string v1, "reset threadHold"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    sput v0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(II)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(I[F)V
    .locals 12

    const/16 v11, 0x9

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    new-array v4, v10, [F

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v10, :cond_4

    iget-object v5, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->b:[F

    aget v5, v5, v2

    aget v6, p2, v2

    iget-object v7, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->c:[F

    aget v7, v7, v2

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    const v6, 0x3ee66666

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v2

    aget v5, v4, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x4080

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_0

    const-string v6, "MicroMsg.ShakeSensorListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget v6, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    if-ge v6, v11, :cond_1

    const/high16 v6, 0x4160

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_3

    sput v11, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    :cond_1
    :goto_1
    sget v6, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    move v0, v1

    :cond_2
    iget-object v5, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->c:[F

    aget v6, p2, v2

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    float-to-int v6, v5

    sget v7, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    add-int/lit8 v8, v6, -0x4

    if-ge v7, v8, :cond_1

    add-int/lit8 v6, v6, -0x4

    sput v6, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->d:I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "MicroMsg.ShakeSensorListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sensorChanged "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v5, p2, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v5, p2, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v5, p2, v9

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " diff("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v4, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v4, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeSensorListener;->a:Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;

    invoke-interface {v0}, Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;->a()V

    :cond_5
    return-void
.end method

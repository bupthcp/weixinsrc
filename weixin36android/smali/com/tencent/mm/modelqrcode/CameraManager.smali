.class public final Lcom/tencent/mm/modelqrcode/CameraManager;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/util/regex/Pattern;


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Z

.field private final c:Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;

.field private final d:Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;

.field private f:Landroid/graphics/Point;

.field private g:Landroid/graphics/Point;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/modelqrcode/CameraManager;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->f:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->g:Landroid/graphics/Point;

    new-instance v0, Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;

    invoke-direct {v0}, Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->c:Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;

    new-instance v0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;

    invoke-direct {v0}, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->d:Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->g:Landroid/graphics/Point;

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .locals 9

    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/mm/modelqrcode/CameraManager;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    const-wide/high16 v7, 0x4024

    mul-double/2addr v7, v5

    double-to-int v0, v7

    int-to-double v7, p1

    sub-double v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    sub-int v7, p1, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_2
    return p1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 10

    const/4 v0, 0x0

    const v1, 0x7fffffff

    sget-object v2, Lcom/tencent/mm/modelqrcode/CameraManager;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v6, v0

    move v2, v0

    move v4, v0

    move v0, v1

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v1, v7, v6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x78

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    const-string v3, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad preview-size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    move v2, v4

    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v4, v2

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v1, v9

    if-nez v1, :cond_1

    :goto_2
    if-lez v5, :cond_2

    if-lez v3, :cond_2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_3
    return-object v0

    :catch_0
    move-exception v3

    const-string v3, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad preview-size: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_1
    if-ge v1, v0, :cond_3

    move v0, v1

    move v2, v5

    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_4
    move v3, v2

    move v5, v4

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    :cond_1
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->c:Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->c:Lcom/tencent/mm/modelqrcode/CameraManager$PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/SurfaceHolder;)V
    .locals 10

    const/16 v2, 0x1b

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/high16 v8, 0x4024

    iget-boolean v3, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    iput-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/modelqrcode/CameraManager;->a()V

    :cond_1
    invoke-static {v0}, Lb/a/ad;->a(I)Lb/a/u;

    move-result-object v3

    iget v4, v3, Lb/a/u;->b:I

    rem-int/lit16 v4, v4, 0xb4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->h:Z

    iget-object v0, v3, Lb/a/u;->a:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->g:Landroid/graphics/Point;

    const-string v0, "preview-size-values"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "preview-size-value"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v3, :cond_4

    const-string v0, "CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preview-size-values parameter: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/tencent/mm/modelqrcode/CameraManager;->a(Ljava/lang/CharSequence;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Point;

    iget v3, v5, Landroid/graphics/Point;->x:I

    shr-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    iget v5, v5, Landroid/graphics/Point;->y:I

    shr-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x3

    invoke-direct {v0, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    :cond_5
    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->f:Landroid/graphics/Point;

    const-string v0, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraResolution: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->g:Landroid/graphics/Point;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " camera:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->f:Landroid/graphics/Point;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->f:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->f:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v0, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const-string v0, "zoom-supported"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_6
    const-string v0, "max-zoom"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    mul-double/2addr v5, v8

    double-to-int v0, v5

    if-le v2, v0, :cond_e

    :goto_1
    move v2, v0

    :cond_7
    :goto_2
    const-string v0, "taking-picture-zoom-max"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-le v2, v0, :cond_8

    move v2, v0

    :cond_8
    :goto_3
    const-string v0, "mot-zoom-values"

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0, v2}, Lcom/tencent/mm/modelqrcode/CameraManager;->a(Ljava/lang/CharSequence;I)I

    move-result v2

    :cond_9
    const-string v6, "mot-zoom-step"

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    if-le v6, v1, :cond_a

    rem-int v6, v2, v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    sub-int/2addr v2, v6

    :cond_a
    :goto_4
    if-nez v3, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    const-string v0, "zoom"

    int-to-double v6, v2

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v5, :cond_d

    const-string v0, "taking-picture-zoom"

    invoke-virtual {v4, v0, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :cond_d
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iput-boolean v1, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    return-void

    :catch_0
    move-exception v0

    const-string v0, "CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad max-zoom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v0, "CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad taking-picture-zoom-max: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_1

    :cond_f
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public final b(Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->b:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->d:Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->d:Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->h:Z

    return v0
.end method

.method public final c()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager;->f:Landroid/graphics/Point;

    return-object v0
.end method

.class Lb/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/k;


# static fields
.field private static final a:I = 0x168


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public a(I)Lb/a/u;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lb/a/u;

    invoke-direct {v1}, Lb/a/u;-><init>()V

    iput-object v0, v1, Lb/a/u;->a:Landroid/hardware/Camera;

    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, v1, Lb/a/u;->a:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_0
    iget-object v3, v1, Lb/a/u;->a:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v0, v1, Lb/a/u;->b:I

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget v0, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

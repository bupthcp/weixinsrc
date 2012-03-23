.class Lb/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/k;


# static fields
.field private static final a:I = 0x1bb5


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "M9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Lb/a/u;
    .locals 3

    new-instance v0, Lb/a/u;

    invoke-direct {v0}, Lb/a/u;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, v0, Lb/a/u;->a:Landroid/hardware/Camera;

    const/4 v1, 0x0

    iput v1, v0, Lb/a/u;->b:I

    invoke-static {}, Lb/a/c;->b()I

    move-result v1

    const/16 v2, 0x1bb5

    if-lt v1, v2, :cond_0

    const/16 v1, 0x5a

    iput v1, v0, Lb/a/u;->b:I

    iget-object v1, v0, Lb/a/u;->a:Landroid/hardware/Camera;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_0
    return-object v0
.end method

.method public a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

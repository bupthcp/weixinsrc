.class Lb/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/k;


# static fields
.field private static final a:I = 0x5a


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    const/16 v1, 0x5a

    iput v1, v0, Lb/a/u;->b:I

    iget-object v1, v0, Lb/a/u;->a:Landroid/hardware/Camera;

    iget v2, v0, Lb/a/u;->b:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-object v0
.end method

.method public a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.class public final Lb/a/ad;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x8

.field private static final b:I = 0x9

.field private static final c:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/a/f;

    invoke-direct {v0}, Lb/a/f;-><init>()V

    invoke-virtual {v0}, Lb/a/f;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(I)Lb/a/u;
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb/a/c;

    invoke-direct {v0}, Lb/a/c;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/c;->a(I)Lb/a/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    invoke-static {}, Lb/a/ad;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lb/a/f;

    invoke-direct {v0}, Lb/a/f;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/f;->a(I)Lb/a/u;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    new-instance v0, Lb/a/g;

    invoke-direct {v0}, Lb/a/g;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/g;->a(I)Lb/a/u;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lb/a/h;

    invoke-direct {v0}, Lb/a/h;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/h;->a(I)Lb/a/u;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/a/f;

    invoke-direct {v0}, Lb/a/f;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/f;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "M9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

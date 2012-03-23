.class public final Lb/a/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x4

.field private static final b:I = 0xb


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0}, Lb/a/ak;->a()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0}, Lb/a/ag;->a()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ak;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ag;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ak;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ag;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ak;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ag;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "+86"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "+86"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    :cond_2
    const-string v1, "+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpace(C)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ak;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ag;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ak;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ag;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ak;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/ag;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ak;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ag;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ak;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ag;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    new-instance v0, Lb/a/ak;

    invoke-direct {v0}, Lb/a/ak;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ak;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ag;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

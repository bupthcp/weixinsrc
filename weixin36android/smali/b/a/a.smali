.class public final Lb/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/a/i;

    invoke-direct {v0}, Lb/a/i;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/i;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/n;

    invoke-direct {v0}, Lb/a/n;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/n;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

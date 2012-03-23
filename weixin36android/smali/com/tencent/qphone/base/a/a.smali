.class public final Lcom/tencent/qphone/base/a/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/ClassLoader;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qphone/base/a/a;->b:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qphone/base/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/ClassLoader;
    .locals 1

    sget-object v0, Lcom/tencent/qphone/base/a/a;->b:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/tencent/qphone/base/a/a;->b:Ljava/lang/ClassLoader;

    return-void
.end method

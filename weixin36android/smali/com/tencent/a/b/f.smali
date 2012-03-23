.class public final Lcom/tencent/a/b/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/a/b/f;


# instance fields
.field private b:Lcom/tencent/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/a/b/f;->a:Lcom/tencent/a/b/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/tencent/a/b/c;

    invoke-direct {v0}, Lcom/tencent/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/b/f;->b:Lcom/tencent/a/b/d;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/a/b/b;

    invoke-direct {v0}, Lcom/tencent/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/b/f;->b:Lcom/tencent/a/b/d;

    goto :goto_0
.end method

.method public static a()Lcom/tencent/a/b/f;
    .locals 1

    sget-object v0, Lcom/tencent/a/b/f;->a:Lcom/tencent/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/a/b/f;

    invoke-direct {v0}, Lcom/tencent/a/b/f;-><init>()V

    sput-object v0, Lcom/tencent/a/b/f;->a:Lcom/tencent/a/b/f;

    :cond_0
    sget-object v0, Lcom/tencent/a/b/f;->a:Lcom/tencent/a/b/f;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/a/b/f;->b:Lcom/tencent/a/b/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

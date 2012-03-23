.class final Lcom/tencent/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/a/a/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone"

    iput-object v0, p0, Lcom/tencent/a/a/a;->a:Ljava/lang/String;

    const-string v0, "network"

    iput-object v0, p0, Lcom/tencent/a/a/a;->b:Ljava/lang/String;

    const-string v0, "mode"

    iput-object v0, p0, Lcom/tencent/a/a/a;->c:Ljava/lang/String;

    const-string v0, "2"

    iput-object v0, p0, Lcom/tencent/a/a/a;->d:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/tencent/a/a/a;->e:Ljava/lang/String;

    const-string v0, "GSM"

    iput-object v0, p0, Lcom/tencent/a/a/a;->f:Ljava/lang/String;

    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/tencent/a/a/a;->g:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/tencent/a/a/a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)Lcom/android/internal/telephony/ITelephony;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/tencent/a/b/a;->a(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ne p2, v0, :cond_1

    :try_start_0
    const-string v0, "phone2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getITelephony"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    const-string v2, "phone2"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_1
.end method

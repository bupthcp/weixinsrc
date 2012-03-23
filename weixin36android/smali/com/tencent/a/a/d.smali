.class public final Lcom/tencent/a/a/d;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/Object;

.field private static f:Lcom/tencent/a/a/d;

.field private static synthetic g:[I


# instance fields
.field private a:Lcom/tencent/a/a/e;

.field private b:Lcom/tencent/a/a/b;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/a/a/d;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/a/a/d;->f:Lcom/tencent/a/a/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/a/a/b;->b:Lcom/tencent/a/a/b;

    iput-object v0, p0, Lcom/tencent/a/a/d;->b:Lcom/tencent/a/a/b;

    iput-boolean v1, p0, Lcom/tencent/a/a/d;->c:Z

    iput-boolean v1, p0, Lcom/tencent/a/a/d;->d:Z

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getManufaturer()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/qqpim/utils/TextUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "motorola"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/tencent/qqpim/utils/TextUtil;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xt800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/tencent/a/a/b;->a:Lcom/tencent/a/a/b;

    iput-object v0, p0, Lcom/tencent/a/a/d;->b:Lcom/tencent/a/a/b;

    :cond_0
    invoke-static {}, Lcom/tencent/a/a/d;->d()[I

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/a/a/d;->b:Lcom/tencent/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/a/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/tencent/a/a/f;

    invoke-direct {v0}, Lcom/tencent/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/a/d;->a:Lcom/tencent/a/a/e;

    :goto_0
    invoke-direct {p0}, Lcom/tencent/a/a/d;->c()V

    return-void

    :pswitch_0
    new-instance v0, Lcom/tencent/a/a/a;

    invoke-direct {v0}, Lcom/tencent/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/a/a/d;->a:Lcom/tencent/a/a/e;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)Lcom/android/internal/telephony/ITelephony;
    .locals 2

    iget-object v0, p0, Lcom/tencent/a/a/d;->a:Lcom/tencent/a/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/a/a/d;->a:Lcom/tencent/a/a/e;

    sget-object v1, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/tencent/a/a/e;->a(Landroid/content/Context;I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/tencent/a/a/d;
    .locals 2

    sget-object v0, Lcom/tencent/a/a/d;->f:Lcom/tencent/a/a/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/d;->f:Lcom/tencent/a/a/d;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/tencent/a/a/d;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/a/a/d;->f:Lcom/tencent/a/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/a/a/d;

    invoke-direct {v0}, Lcom/tencent/a/a/d;-><init>()V

    sput-object v0, Lcom/tencent/a/a/d;->f:Lcom/tencent/a/a/d;

    :cond_1
    sget-object v0, Lcom/tencent/a/a/d;->f:Lcom/tencent/a/a/d;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(I)Lcom/tencent/a/a/c;
    .locals 3

    invoke-direct {p0, p1}, Lcom/tencent/a/a/d;->a(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/c;

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/tencent/a/a/c;->b:Lcom/tencent/a/a/c;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v0

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/tencent/a/a/c;->a:Lcom/tencent/a/a/c;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/c;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    sget-object v0, Lcom/tencent/a/a/c;->c:Lcom/tencent/a/a/c;

    goto :goto_0
.end method

.method private c()V
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/a/a/d;->d()[I

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/a/a/d;->b:Lcom/tencent/a/a/b;

    invoke-virtual {v2}, Lcom/tencent/a/a/b;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_0

    return-void

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/tencent/a/a/d;->c(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/tencent/a/a/d;->b(I)Lcom/tencent/a/a/c;

    move-result-object v3

    sget-object v4, Lcom/tencent/a/a/c;->b:Lcom/tencent/a/a/c;

    if-ne v3, v4, :cond_2

    iput-boolean v1, p0, Lcom/tencent/a/a/d;->d:Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/tencent/a/a/c;->a:Lcom/tencent/a/a/c;

    if-ne v3, v4, :cond_1

    iput-boolean v1, p0, Lcom/tencent/a/a/d;->c:Z

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/a/a/d;->a(I)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/tencent/a/a/d;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/a/a/b;->values()[Lcom/tencent/a/a/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/tencent/a/a/b;->a:Lcom/tencent/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/tencent/a/a/b;->b:Lcom/tencent/a/a/b;

    invoke-virtual {v1}, Lcom/tencent/a/a/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/tencent/a/a/d;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final b()Lcom/android/internal/telephony/ISms;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/a/a/d;->a:Lcom/tencent/a/a/e;

    if-nez v0, :cond_0

    :cond_0
    return-object v1
.end method

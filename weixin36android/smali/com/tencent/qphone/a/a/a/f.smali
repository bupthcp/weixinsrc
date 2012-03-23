.class public final Lcom/tencent/qphone/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qphone/base/remote/f;


# static fields
.field private static d:I

.field private static e:I


# instance fields
.field private a:Lcom/tencent/qphone/base/remote/f;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private f:Ljava/util/concurrent/ConcurrentHashMap;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    sput v0, Lcom/tencent/qphone/a/a/a/f;->d:I

    const/4 v0, 0x0

    sput v0, Lcom/tencent/qphone/a/a/a/f;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/tencent/qphone/a/a/a/a;

    invoke-direct {v0, p0}, Lcom/tencent/qphone/a/a/a/a;-><init>(Lcom/tencent/qphone/a/a/a/f;)V

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/tencent/qphone/a/a/a/f;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qphone/a/a/a/f;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/tencent/qphone/a/a/a/f;->e:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/qphone/a/a/a/f;Lcom/tencent/qphone/base/remote/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qphone/a/a/a/f;->a:Lcom/tencent/qphone/base/remote/f;

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/tencent/qphone/a/a/a/f;->e:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/tencent/qphone/a/a/a/f;->d:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qphone/a/a/a/f;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qphone/a/a/a/f;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/qphone/a/a/a/f;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qphone/a/a/a/f;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final a(Lcom/tencent/qphone/base/remote/ToServiceMsg;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/tencent/qphone/a/a/a/f;->a(Lcom/tencent/qphone/base/remote/ToServiceMsg;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/qphone/base/remote/ToServiceMsg;Z)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->a:Lcom/tencent/qphone/base/remote/f;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qphone/a/a/a/f;->a()V

    if-nez p2, :cond_0

    new-instance v0, Lcom/tencent/qphone/a/a/a/b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qphone/a/a/a/b;-><init>(Lcom/tencent/qphone/a/a/a/f;Lcom/tencent/qphone/base/remote/ToServiceMsg;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qphone/a/a/a/f;->e:I

    new-instance v0, Lcom/tencent/qphone/base/remote/FromServiceMsg;

    invoke-virtual {p1}, Lcom/tencent/qphone/base/remote/ToServiceMsg;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/qphone/base/remote/ToServiceMsg;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/tencent/qphone/base/remote/ToServiceMsg;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/qphone/base/remote/ToServiceMsg;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/qphone/base/remote/FromServiceMsg;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/qphone/base/remote/FromServiceMsg;->b()V

    :try_start_0
    iget-object v1, p1, Lcom/tencent/qphone/base/remote/ToServiceMsg;->a:Lcom/tencent/qphone/base/remote/g;

    invoke-interface {v1, v0}, Lcom/tencent/qphone/base/remote/g;->a(Lcom/tencent/qphone/base/remote/FromServiceMsg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->a:Lcom/tencent/qphone/base/remote/f;

    invoke-interface {v0, p1}, Lcom/tencent/qphone/base/remote/f;->a(Lcom/tencent/qphone/base/remote/ToServiceMsg;)V

    goto :goto_0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->a:Lcom/tencent/qphone/base/remote/f;

    invoke-interface {v0}, Lcom/tencent/qphone/base/remote/f;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/f;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qphone/a/a/a/f;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

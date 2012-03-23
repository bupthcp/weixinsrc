.class public final Lcom/tencent/mm/network/MMPushCore;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/network/MMPushCore;


# instance fields
.field private b:Lcom/tencent/mm/network/NetService;

.field private c:Lcom/tencent/mm/network/NetworkEvent;

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;

.field private g:Lcom/tencent/mm/network/MMAutoAuth;

.field private h:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->h:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->d:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->e:Landroid/os/Handler;

    return-void
.end method

.method public static a(Lcom/tencent/mm/network/MMAutoAuth;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->g:Lcom/tencent/mm/network/MMAutoAuth;

    return-void
.end method

.method public static a(Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->f:Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;

    return-void
.end method

.method public static a(Lcom/tencent/mm/network/NetService;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->b:Lcom/tencent/mm/network/NetService;

    return-void
.end method

.method public static a(Lcom/tencent/mm/network/NetworkEvent;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->c:Lcom/tencent/mm/network/NetworkEvent;

    return-void
.end method

.method public static a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/network/MMPushCore;->h:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    return-void
.end method

.method public static b()Lcom/tencent/mm/network/NetService;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->b:Lcom/tencent/mm/network/NetService;

    return-object v0
.end method

.method public static c()Lcom/tencent/mm/network/NetworkEvent;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->c:Lcom/tencent/mm/network/NetworkEvent;

    return-object v0
.end method

.method public static d()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static e()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static f()Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->f:Lcom/tencent/mm/network/MMPushCore$INetworkAvailable;

    return-object v0
.end method

.method public static g()Lcom/tencent/mm/network/MMAutoAuth;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->h()Lcom/tencent/mm/network/MMPushCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/network/MMPushCore;->g:Lcom/tencent/mm/network/MMAutoAuth;

    return-object v0
.end method

.method private static h()Lcom/tencent/mm/network/MMPushCore;
    .locals 1

    sget-object v0, Lcom/tencent/mm/network/MMPushCore;->a:Lcom/tencent/mm/network/MMPushCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/network/MMPushCore;

    invoke-direct {v0}, Lcom/tencent/mm/network/MMPushCore;-><init>()V

    sput-object v0, Lcom/tencent/mm/network/MMPushCore;->a:Lcom/tencent/mm/network/MMPushCore;

    :cond_0
    sget-object v0, Lcom/tencent/mm/network/MMPushCore;->a:Lcom/tencent/mm/network/MMPushCore;

    return-object v0
.end method

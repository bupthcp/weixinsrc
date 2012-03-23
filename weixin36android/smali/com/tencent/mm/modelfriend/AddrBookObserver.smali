.class public Lcom/tencent/mm/modelfriend/AddrBookObserver;
.super Landroid/database/ContentObserver;

# interfaces
.implements Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;


# static fields
.field private static b:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

.field private static g:Z

.field private static h:Z


# instance fields
.field private final a:Landroid/content/Context;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

.field private f:Lcom/tencent/mm/platformtools/TimeLogger;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->g:Z

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;-><init>(Lcom/tencent/mm/modelfriend/AddrBookObserver;)V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->i:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c:Ljava/util/List;

    return-object v0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->h:Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e:Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/platformtools/TimeLogger;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->f:Lcom/tencent/mm/platformtools/TimeLogger;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/tencent/mm/modelfriend/AddrBookObserver;->g:Z

    if-eqz v2, :cond_0

    const-string v1, "MicroMsg.AddrBookObserver"

    const-string v2, "already syncing, skip"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    sput-boolean v1, Lcom/tencent/mm/modelfriend/AddrBookObserver;->g:Z

    sput-boolean v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->h:Z

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e:Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;-><init>(Landroid/content/Context;Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;)V

    sput-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    new-instance v0, Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v2, "MicroMsg.AddrBookObserver"

    const-string v3, "sync addrBook"

    invoke-direct {v0, v2, v3}, Lcom/tencent/mm/platformtools/TimeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->f:Lcom/tencent/mm/platformtools/TimeLogger;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->f:Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v2, "sync begin"

    invoke-virtual {v0, v2}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->start()V

    move v0, v1

    goto :goto_0
.end method

.method public onChange(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v1, "address book changed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelfriend/FriendLogic;->b()Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;->c:Lcom/tencent/mm/modelfriend/FriendLogic$BindOpMobileState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;)Z

    :cond_0
    return-void
.end method

.class public final Lcom/tencent/mm/network/NetworkEvent;
.super Lcom/tencent/mm/network/INetworkEvent_AIDL$Stub;


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private final d:Landroid/os/RemoteCallbackList;

.field private e:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/network/INetworkEvent_AIDL$Stub;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    iput v2, p0, Lcom/tencent/mm/network/NetworkEvent;->c:I

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->d:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/network/NetworkEvent$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/network/NetworkEvent$1;-><init>(Lcom/tencent/mm/network/NetworkEvent;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/NetworkEvent;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->d:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/network/NetworkEvent;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/tencent/mm/network/NetworkEvent;->b:J

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 5

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne v2, p1, :cond_2

    iget v2, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    if-ne v2, v4, :cond_0

    iput p1, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne v4, p1, :cond_3

    iget v2, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/tencent/mm/network/NetworkEvent;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/network/NetworkEvent;->c:I

    iget v0, p0, Lcom/tencent/mm/network/NetworkEvent;->c:I

    if-lez v0, :cond_4

    iput v4, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    move v0, v1

    goto :goto_0

    :cond_3
    if-ne v3, p1, :cond_4

    iput v0, p0, Lcom/tencent/mm/network/NetworkEvent;->c:I

    iput v3, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    move v0, v1

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/tencent/mm/network/NetworkEvent;->a:I

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v5, 0x1

    const-string v2, "MicroMsg.NetworkEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service out of band:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/network/NetworkEvent;->b:J

    :goto_0
    return-void

    :pswitch_0
    array-length v3, v2

    if-le v3, v5, :cond_0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    :cond_0
    iput-wide v0, p0, Lcom/tencent/mm/network/NetworkEvent;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/network/IOnNetworkChange_AIDL;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void
.end method

.method public final b(Lcom/tencent/mm/network/IOnNetworkChange_AIDL;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkEvent;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/network/NetworkEvent;->b:J

    return-wide v0
.end method

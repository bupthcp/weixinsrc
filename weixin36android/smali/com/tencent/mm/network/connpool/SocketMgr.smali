.class public Lcom/tencent/mm/network/connpool/SocketMgr;
.super Lcom/tencent/mm/network/connpool/ConnEvent;


# instance fields
.field private b:Lcom/tencent/mm/network/connpool/SocketEngine;

.field private final c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

.field private d:Ljava/util/Map;

.field private e:Ljava/util/Queue;

.field private f:Ljava/util/Map;

.field private final g:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private h:I

.field private i:J

.field private j:Z

.field private final k:Lcom/tencent/mm/platformtools/MAlarmHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/connpool/InAddrHost;Lcom/tencent/mm/network/connpool/IOnSocketRecv;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/tencent/mm/network/connpool/ConnEvent;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->i:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->j:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MAlarmHandler;

    new-instance v1, Lcom/tencent/mm/network/connpool/SocketMgr$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/network/connpool/SocketMgr$1;-><init>(Lcom/tencent/mm/network/connpool/SocketMgr;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;-><init>(Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->k:Lcom/tencent/mm/platformtools/MAlarmHandler;

    iput-object p2, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    const/16 v0, 0xb

    iput v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->h:I

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/IOnSocketRecv;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/network/connpool/SocketMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->d()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/network/connpool/SocketMgr;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    return-object v0
.end method

.method private d()V
    .locals 2

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "cancel all pending"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/network/connpool/SocketMgr;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->e:Ljava/util/Queue;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "cancel nooping"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->k:Lcom/tencent/mm/platformtools/MAlarmHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MAlarmHandler;->b()V

    return-void
.end method

.method static synthetic f(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    return-object v0
.end method


# virtual methods
.method public final a(I[BLcom/tencent/mm/network/connpool/IRecord;IZ)I
    .locals 3

    const-string v0, "MicroMsg.SocketMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    :goto_0
    const-string v0, "MicroMsg.SocketMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--> build send message: seqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    invoke-direct {v0, p4, p1, p2, p5}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;-><init>(II[BZ)V

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Z

    :goto_1
    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "<-- build send message"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :cond_0
    iget p4, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->h:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->h:I

    goto :goto_0

    :cond_1
    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "nooping failed, socket engine not connected"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->b()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->d()V

    :cond_4
    const-string v1, "MicroMsg.SocketMgr"

    const-string v2, "create new socket engine"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/network/connpool/SocketEngine;

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-direct {v1, v2, p0}, Lcom/tencent/mm/network/connpool/SocketEngine;-><init>(Lcom/tencent/mm/network/connpool/InAddrHost;Lcom/tencent/mm/network/connpool/ConnEvent;)V

    iput-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->start()V

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->c()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "MicroMsg.SocketMgr"

    const-string v2, "engine not connected, added to working queue"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->e:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Z

    goto :goto_1
.end method

.method public final a(I)V
    .locals 3

    const-string v0, "MicroMsg.SocketMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel message seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/network/connpool/SocketMgr$CanceledRecords;

    invoke-direct {v2}, Lcom/tencent/mm/network/connpool/SocketMgr$CanceledRecords;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/high16 v5, -0x8000

    const/4 v4, 0x0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "MicroMsg.SocketMgr"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusCallback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", m."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-nez v0, :cond_2

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "socket manager has been reset"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "MicroMsg.SocketMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    const-string v1, "long"

    invoke-interface {v0, p1, v4, v1, p2}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter;->a(IILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->g:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->b()Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddress;->c()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    const/16 v2, 0x8

    const-string v3, "long"

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v4, v3, v0}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter;->a(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    :goto_2
    if-eqz v0, :cond_3

    const-string v1, "MicroMsg.SocketMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending pending queue, req.cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->b()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req.len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->b()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Z

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    goto :goto_2

    :pswitch_1
    check-cast p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-boolean v0, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->a:Z

    if-nez v0, :cond_5

    iget v0, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    const-string v1, "MicroMsg.SocketMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start pending seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v2, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;

    invoke-direct {v2, p0}, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;-><init>(Lcom/tencent/mm/network/connpool/SocketMgr;)V

    invoke-direct {v1, v2, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "start nooping"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->k:Lcom/tencent/mm/platformtools/MAlarmHandler;

    const-wide/32 v1, 0x3a980

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MAlarmHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    iget v1, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    or-int/2addr v1, v5

    const-string v2, "long"

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter;->a(IILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    check-cast p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v1, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    const-string v0, "MicroMsg.SocketMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel pending seq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->f:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    iget v1, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    or-int/2addr v1, v5

    const-string v2, "long"

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter;->a(IILjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "MicroMsg.SocketMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusFailCallback err="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->e()V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->d()V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "socket manager has been reset"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    check-cast p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    if-eqz p3, :cond_1

    iget v0, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->e:Ljava/util/Queue;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->a(Ljava/util/Map;Ljava/util/Queue;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->b(Z)V

    goto :goto_0

    :cond_2
    iget v1, p3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->a(IILjava/lang/String;[BLjava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "reset start time"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->j:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->i:J

    return-void
.end method

.method protected final a([BLjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    check-cast p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    const-string v0, "MicroMsg.SocketMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusOkCallback cmdid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", totalLen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", bodyLen="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", seq="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    invoke-interface {v0, v2}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->b(Z)V

    iget v1, p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mm/network/connpool/IRecord;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_2

    iget v0, p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    const v3, 0x3b9aca06

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    iget v3, p2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    invoke-interface {v0, v1, v3, p1}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->a(II[B)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "socket manager has been reset"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, v5, Lcom/tencent/mm/network/connpool/SocketMgr$CanceledRecords;

    if-eqz v0, :cond_3

    const-string v0, "MicroMsg.SocketMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record has been canceled, seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/tencent/mm/network/connpool/IRecord;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    const-string v3, ""

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->a(IILjava/lang/String;[BLjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-boolean v0, Lcom/tencent/mm/test/Test;->d:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->j:Z

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->i:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-gtz v0, :cond_7

    move v2, v6

    :cond_6
    :goto_2
    if-eqz v2, :cond_0

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "no request left in touch mode, reset socket, stop nooping, start looping"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->e()V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    invoke-interface {v0, v6}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->b(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->d()V

    goto :goto_0

    :cond_7
    iget-wide v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->i:J

    const-wide/32 v3, 0x124f80

    add-long/2addr v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_6

    move v2, v6

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->e:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->c:Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->b(Z)V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->d()V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketMgr;->e()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->d()V

    :cond_0
    return-void
.end method

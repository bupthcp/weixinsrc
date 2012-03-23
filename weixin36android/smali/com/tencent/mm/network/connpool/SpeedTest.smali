.class public Lcom/tencent/mm/network/connpool/SpeedTest;
.super Lcom/tencent/mm/network/connpool/ConnEvent;


# instance fields
.field private b:Lcom/tencent/mm/network/connpool/SpeedTest$OnTestFinish;

.field private c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

.field private d:Ljava/util/HashMap;

.field private e:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private f:Lcom/tencent/mm/platformtools/FlowLimiter;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/mm/network/connpool/ConnEvent;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->d:Ljava/util/HashMap;

    new-instance v0, Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-direct {v0, v4, v4, v4}, Lcom/tencent/mm/network/connpool/InAddrHost;-><init>(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    new-instance v0, Lcom/tencent/mm/platformtools/FlowLimiter;

    const-wide/32 v1, 0x5265c00

    const v3, 0x32000

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/platformtools/FlowLimiter;-><init>(JI)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->f:Lcom/tencent/mm/platformtools/FlowLimiter;

    iput-object v4, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->b:Lcom/tencent/mm/network/connpool/SpeedTest$OnTestFinish;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/network/connpool/SpeedTest;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "MicroMsg.SpeedTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    instance-of v0, p2, Lcom/tencent/mm/network/connpool/InAddress;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    instance-of v0, p3, Ljava/lang/Long;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->b:Lcom/tencent/mm/network/connpool/SpeedTest$OnTestFinish;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->d:Ljava/util/HashMap;

    check-cast p2, Lcom/tencent/mm/network/connpool/InAddress;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    const/high16 v1, 0x4000

    const-string v2, "test"

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter;->a(IILjava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->f:Lcom/tencent/mm/platformtools/FlowLimiter;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/FlowLimiter;->a(I)I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const-string v0, "MicroMsg.SpeedTest"

    const-string v1, "speed test limited"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final a([BLjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    return-void
.end method

.method public final a([Lcom/tencent/mm/network/connpool/InAddress;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->f:Lcom/tencent/mm/platformtools/FlowLimiter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/FlowLimiter;->a(I)I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_1

    const-string v0, "MicroMsg.SpeedTest"

    const-string v1, "speed test limited"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([Lcom/tencent/mm/network/connpool/InAddress;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.SpeedTest"

    const-string v1, "already testing, update targets"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "MicroMsg.SpeedTest"

    const-string v1, "begin speed test"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->e:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-direct {v0, v1, p0}, Lcom/tencent/mm/network/connpool/SpeedTestEngine;-><init>(Lcom/tencent/mm/network/connpool/InAddrHost;Lcom/tencent/mm/network/connpool/ConnEvent;)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTest;->c:Lcom/tencent/mm/network/connpool/SpeedTestEngine;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->start()V

    goto :goto_0
.end method

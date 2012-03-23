.class public Lcom/tencent/mm/modelstat/NetStatMsgExtension;
.super Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub;

# interfaces
.implements Lcom/tencent/mm/modelbase/IMessageExtension;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "weixin"

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.NetStatMsgExtension"

    const-string v1, "skip ipxx stat while account not set"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelstat/NetStatWatchDog;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelstat/NetStatMsgExtension$LogHelper;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-direct {v2, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 9

    iget-object v8, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension;->a:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;-><init>(Lcom/tencent/mm/modelstat/NetStatMsgExtension;IILjava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

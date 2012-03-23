.class Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/connpool/SocketMgr;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/network/connpool/SocketMgr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;-><init>(Lcom/tencent/mm/network/connpool/SocketMgr;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/network/connpool/SocketMgr;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->b(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->b(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->c(Lcom/tencent/mm/network/connpool/SocketMgr;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v1}, Lcom/tencent/mm/network/connpool/SocketMgr;->d(Lcom/tencent/mm/network/connpool/SocketMgr;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/mm/network/connpool/SocketMgr$CanceledRecords;

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "MicroMsg.SocketMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network not responsed, disconnect, left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->b(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/IOnSocketRecv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v1}, Lcom/tencent/mm/network/connpool/SocketMgr;->d(Lcom/tencent/mm/network/connpool/SocketMgr;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v2}, Lcom/tencent/mm/network/connpool/SocketMgr;->e(Lcom/tencent/mm/network/connpool/SocketMgr;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/network/connpool/IOnSocketRecv;->a(Ljava/util/Map;Ljava/util/Queue;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->d()V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$PenderCallBack;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->f(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;

    :cond_2
    return v4
.end method

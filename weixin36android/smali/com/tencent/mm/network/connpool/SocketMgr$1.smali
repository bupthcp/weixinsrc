.class Lcom/tencent/mm/network/connpool/SocketMgr$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/connpool/SocketMgr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/connpool/SocketMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/SocketMgr$1;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "nooping"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$1;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$1;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(Lcom/tencent/mm/network/connpool/SocketMgr;)Lcom/tencent/mm/network/connpool/SocketEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.SocketMgr"

    const-string v1, "nooping failed, socket engine not connected"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketMgr$1;->a:Lcom/tencent/mm/network/connpool/SocketMgr;

    const/4 v1, 0x6

    new-array v2, v5, [B

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/network/connpool/SocketMgr;->a(I[BLcom/tencent/mm/network/connpool/IRecord;IZ)I

    goto :goto_0
.end method

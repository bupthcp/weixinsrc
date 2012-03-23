.class Lcom/tencent/mm/network/connpool/SocketEngine$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/connpool/SocketEngine;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/connpool/SocketEngine;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->c()[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/network/connpool/SocketEngine;->a(Lcom/tencent/mm/network/connpool/SocketEngine;[BLcom/tencent/mm/network/connpool/SocketEngine$Header;)I

    move-result v1

    if-eq v4, v1, :cond_1

    :cond_0
    const-string v1, "MicroMsg.SocketEngine"

    const-string v2, "request send failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->b(Lcom/tencent/mm/network/connpool/SocketEngine;)Lcom/tencent/mm/network/connpool/ConnEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v2}, Lcom/tencent/mm/network/connpool/SocketEngine;->a(Lcom/tencent/mm/network/connpool/SocketEngine;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->b()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->c(Lcom/tencent/mm/network/connpool/SocketEngine;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a()Lcom/tencent/mm/network/connpool/SocketEngine$Response;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->b(Lcom/tencent/mm/network/connpool/SocketEngine;)Lcom/tencent/mm/network/connpool/ConnEvent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Response;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$1;->a:Lcom/tencent/mm/network/connpool/SocketEngine;

    invoke-static {v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->b(Lcom/tencent/mm/network/connpool/SocketEngine;)Lcom/tencent/mm/network/connpool/ConnEvent;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->c()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(Ljava/lang/String;[BLjava/lang/Object;)V

    :cond_2
    return-void
.end method

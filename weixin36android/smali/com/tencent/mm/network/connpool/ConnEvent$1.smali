.class Lcom/tencent/mm/network/connpool/ConnEvent$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/connpool/ConnEvent;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/connpool/ConnEvent;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/ConnEvent$1;->a:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/ConnEvent$1;->a:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v3, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/ConnEvent$1;->a:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    invoke-virtual {v3, v1, v2, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/ConnEvent$1;->a:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v0, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/network/connpool/ConnEvent;->a([BLjava/lang/Object;)V

    :cond_3
    return-void
.end method

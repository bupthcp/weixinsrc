.class public abstract Lcom/tencent/mm/network/connpool/ConnEvent;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

.field private b:Landroid/os/Looper;

.field private final c:Landroid/os/Handler;


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->b:Landroid/os/Looper;

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$1;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->b:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/network/connpool/ConnEvent$1;-><init>(Lcom/tencent/mm/network/connpool/ConnEvent;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->b:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract a(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/ConnEvent$Param;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->a:Lcom/tencent/mm/network/connpool/IConnPoolMoniter;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/ConnEvent$Param;-><init>()V

    iput-object p1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    iput-object p3, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a([B)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/ConnEvent$Param;-><init>()V

    iput-object p1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected abstract a([BLjava/lang/Object;)V
.end method

.method public final b(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/ConnEvent$Param;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    iput-object p2, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    iput-object p3, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/ConnEvent$Param;-><init>()V

    iput-object p2, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    iput-object p3, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->b:Ljava/lang/Object;

    iput-object p1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->c:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b([B)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/ConnEvent$Param;-><init>()V

    iput-object p1, v0, Lcom/tencent/mm/network/connpool/ConnEvent$Param;->a:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/ConnEvent;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

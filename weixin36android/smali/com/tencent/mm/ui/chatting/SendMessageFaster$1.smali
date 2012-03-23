.class Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/SendMessageFaster;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/SendMessageFaster;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;->a:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;->a:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->a(Lcom/tencent/mm/ui/chatting/SendMessageFaster;)I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;->a:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SendMessageFaster$1;->a:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->a()V

    goto :goto_0
.end method

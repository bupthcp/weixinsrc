.class Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelfriend/AddrBookReadThread;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;->a:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;->a:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->c(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;->a:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->a(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;->a:Lcom/tencent/mm/modelfriend/AddrBookReadThread;

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->b(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

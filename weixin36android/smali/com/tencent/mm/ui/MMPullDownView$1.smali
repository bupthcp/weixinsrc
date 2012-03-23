.class Lcom/tencent/mm/ui/MMPullDownView$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMPullDownView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMPullDownView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPullDownView$1;->a:Lcom/tencent/mm/ui/MMPullDownView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView$1;->a:Lcom/tencent/mm/ui/MMPullDownView;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPullDownView;->a(Lcom/tencent/mm/ui/MMPullDownView;)Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView$1;->a:Lcom/tencent/mm/ui/MMPullDownView;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPullDownView;->a(Lcom/tencent/mm/ui/MMPullDownView;)Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView$1;->a:Lcom/tencent/mm/ui/MMPullDownView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/MMPullDownView$1;->a:Lcom/tencent/mm/ui/MMPullDownView;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMPullDownView;->b(Lcom/tencent/mm/ui/MMPullDownView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/MMPullDownView;->scrollTo(II)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPullDownView$1;->a:Lcom/tencent/mm/ui/MMPullDownView;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPullDownView;->c(Lcom/tencent/mm/ui/MMPullDownView;)Z

    return-void
.end method

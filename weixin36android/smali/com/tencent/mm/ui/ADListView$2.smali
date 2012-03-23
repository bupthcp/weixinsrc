.class Lcom/tencent/mm/ui/ADListView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/ADListView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/ADListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ADListView$2;->a:Lcom/tencent/mm/ui/ADListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView$2;->a:Lcom/tencent/mm/ui/ADListView;

    invoke-static {v0}, Lcom/tencent/mm/ui/ADListView;->a(Lcom/tencent/mm/ui/ADListView;)Lcom/tencent/mm/ui/ADListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView$2;->a:Lcom/tencent/mm/ui/ADListView;

    invoke-static {v0}, Lcom/tencent/mm/ui/ADListView;->b(Lcom/tencent/mm/ui/ADListView;)Lcom/tencent/mm/ui/ADListView$ADEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView$2;->a:Lcom/tencent/mm/ui/ADListView;

    invoke-static {v0}, Lcom/tencent/mm/ui/ADListView;->a(Lcom/tencent/mm/ui/ADListView;)Lcom/tencent/mm/ui/ADListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView$2;->a:Lcom/tencent/mm/ui/ADListView;

    invoke-static {v1}, Lcom/tencent/mm/ui/ADListView;->c(Lcom/tencent/mm/ui/ADListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ADListAdapter;->a(I)Lcom/tencent/mm/ui/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView$2;->a:Lcom/tencent/mm/ui/ADListView;

    invoke-static {v1}, Lcom/tencent/mm/ui/ADListView;->b(Lcom/tencent/mm/ui/ADListView;)Lcom/tencent/mm/ui/ADListView$ADEvent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Message;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Message;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/tencent/mm/ui/ADListView$ADEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

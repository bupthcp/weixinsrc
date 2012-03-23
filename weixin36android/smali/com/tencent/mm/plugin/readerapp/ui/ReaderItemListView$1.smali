.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    iput-object p2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0497

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;)V

    invoke-static {v0, v1, v4, v2, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

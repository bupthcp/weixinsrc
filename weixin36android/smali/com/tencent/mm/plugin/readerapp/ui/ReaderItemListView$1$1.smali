.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;

    iget-object v1, v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;

    iget-object v3, v3, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->b(JI)V

    return-void
.end method

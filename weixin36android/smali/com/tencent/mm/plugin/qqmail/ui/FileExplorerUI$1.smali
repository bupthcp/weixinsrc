.class Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->finish()V

    return-void
.end method

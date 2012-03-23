.class Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)Ljava/io/File;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/io/File;Ljava/io/File;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "choosed_file_path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->finish()V

    goto :goto_0
.end method

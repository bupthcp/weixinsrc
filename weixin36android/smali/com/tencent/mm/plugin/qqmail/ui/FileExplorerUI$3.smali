.class Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Ljava/io/File;

.field private synthetic b:Ljava/io/File;

.field private synthetic c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->notifyDataSetInvalidated()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->a:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;->b:Ljava/io/File;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f070149
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

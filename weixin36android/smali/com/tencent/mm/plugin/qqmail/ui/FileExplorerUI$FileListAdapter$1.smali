.class Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

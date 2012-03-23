.class public Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030062

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f07014a

    const v8, 0x7f070149

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0460

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->d(I)V

    const v0, 0x7f070147

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b:Landroid/widget/ListView;

    const v0, 0x7f070148

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v9}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {p0, v8}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v2, 0x7f0a0470

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->d:Ljava/lang/String;

    const v2, 0x7f0a046f

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->e:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    :goto_1
    new-instance v7, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-direct {v7, p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V

    iput-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-virtual {v7, v3, v4}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/io/File;Ljava/io/File;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    if-eqz v2, :cond_6

    move v3, v5

    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    if-eqz v4, :cond_7

    :goto_4
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;

    invoke-direct {v1, p0, v2, v4}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$3;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->e:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v4, v3

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v7, v9}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;

    invoke-virtual {v7, v3, v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a(Ljava/io/File;Ljava/io/File;)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    move v3, v6

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    return-void
.end method

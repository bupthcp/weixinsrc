.class Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Ljava/io/File;

.field private d:[Ljava/io/File;

.field private synthetic e:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->c:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    :cond_0
    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->c:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->c:Ljava/io/File;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    array-length v0, v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    if-eqz v2, :cond_1

    array-length v0, v2

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-ltz v0, :cond_1

    :goto_2
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ltz v0, :cond_4

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    if-ge v1, v0, :cond_5

    aget-object v3, v2, v1

    aget-object v4, v2, v0

    aput-object v4, v2, v1

    aput-object v3, v2, v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_6
    new-array v0, v1, [Ljava/io/File;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->a:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    array-length v1, v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subFile length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->d:[Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    if-nez v1, :cond_1

    :goto_1
    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->e:Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;

    invoke-direct {v1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI;)V

    const v0, 0x7f07014b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f07014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f07014d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$FileListAdapter;->b:Ljava/io/File;

    if-ne v1, v2, :cond_1

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->a:Landroid/widget/ImageView;

    const v2, 0x7f020111

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p2

    :cond_1
    iget-object v3, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f020114

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileExplorerUI$ViewHolder;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yyyy-MM-dd-hh-mm-ss"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAttachListLinearLayout;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v2, 0x7f020112

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAttachListLinearLayout;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f020115

    goto :goto_1

    :cond_4
    const v2, 0x7f020113

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

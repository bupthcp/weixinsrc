.class Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

.field private synthetic b:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    iput p2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    iget v1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/mm/plugin/album/model/AlbumComment;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->a(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->b(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->a(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->c(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "todo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumComment;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    invoke-static {v2}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->a(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->d(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;

    invoke-static {v4}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;->e(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0015

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1$1;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumCommentAdapter$1;)V

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method

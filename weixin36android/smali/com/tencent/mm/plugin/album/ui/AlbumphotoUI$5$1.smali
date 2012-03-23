.class Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5$1;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI$5;->a:Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;->g(Lcom/tencent/mm/plugin/album/ui/AlbumphotoUI;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

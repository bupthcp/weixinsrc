.class Lcom/tencent/mm/ui/video/VideoDownloadUI$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoDownloadUI$2;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoDownloadUI$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoDownloadUI$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI$2$1;->a:Lcom/tencent/mm/ui/video/VideoDownloadUI$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/video/VideoDownloadUI$2;->a:Lcom/tencent/mm/ui/video/VideoDownloadUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->finish()V

    return-void
.end method

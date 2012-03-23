.class Lcom/tencent/mm/ui/video/VideoPlayerUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI$2;->a:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI$2;->a:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->c(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Lcom/tencent/mm/ui/video/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoView;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI$2;->a:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    const v1, 0x7f0a0324

    const v2, 0x7f0a0155

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    const/4 v0, 0x0

    return v0
.end method

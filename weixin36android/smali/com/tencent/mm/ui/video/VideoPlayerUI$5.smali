.class Lcom/tencent/mm/ui/video/VideoPlayerUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI$5;->a:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI$5;->a:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->b(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoPlayerUI$5;->a:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->i(Lcom/tencent/mm/ui/video/VideoPlayerUI;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    return-void
.end method

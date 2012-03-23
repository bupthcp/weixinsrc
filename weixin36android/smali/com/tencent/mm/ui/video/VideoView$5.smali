.class Lcom/tencent/mm/ui/video/VideoView$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoView$5;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoView$5;->a:Lcom/tencent/mm/ui/video/VideoView;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/video/VideoView;->c(Lcom/tencent/mm/ui/video/VideoView;I)I

    return-void
.end method

.class Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;->a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;->a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;->a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)Lcom/tencent/mm/network/IDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;->a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->b(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;->a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;->b(Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "doScene failed"

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo$1;->a:Lcom/tencent/mm/modelvideo/NetSceneDownloadVideo;

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

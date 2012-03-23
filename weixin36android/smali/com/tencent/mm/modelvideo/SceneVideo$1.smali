.class Lcom/tencent/mm/modelvideo/SceneVideo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvideo/SceneVideo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvideo/SceneVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/16 v1, 0x64

    const/4 v0, -0x1

    invoke-static {}, Lcom/tencent/mm/modelvideo/vprotocal;->b()I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    if-gtz v3, :cond_2

    :cond_0
    :goto_0
    const-string v3, "MicroMsg.SceneVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sum:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v4}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v4

    iget v4, v4, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " thr:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v4}, Lcom/tencent/mm/modelvideo/SceneVideo;->b(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->isAlive()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->c(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->c(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;->a(I)V

    :cond_1
    if-ltz v0, :cond_4

    if-ge v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    if-gt v2, v3, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->b(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    mul-int/lit8 v0, v2, 0x5a

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    div-int/2addr v0, v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    if-lt v2, v3, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$1;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->b(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

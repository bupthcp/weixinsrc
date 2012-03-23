.class Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvideo/SceneVideo;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/modelvideo/SceneVideo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;-><init>(Lcom/tencent/mm/modelvideo/SceneVideo;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/modelvideo/SceneVideo;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MicroMsg.SceneVideo"

    const-string v1, "click stop"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.SceneVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YuvReocrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v2

    iget v2, v2, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rotate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v2

    iget v2, v2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/vprotocal;->a(Lcom/tencent/mm/modelvideo/RecordParams;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v1}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/modelvideo/RecordParams;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/modelvideo/RecordParams;->l:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/modelvideo/vprotocal;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/SceneVideo$ThreadPackVideo;->a:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;)Lcom/tencent/mm/modelvideo/RecordParams;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/modelvideo/RecordParams;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo;I)I

    goto :goto_0
.end method

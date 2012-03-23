.class public Lcom/tencent/mm/modelbase/SceneInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->e:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/modelbase/SceneInfo;->a(J)V

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/modelbase/SceneInfo;->b(J)V

    iput-wide v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->d:J

    iput p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->a:I

    return-void
.end method

.method private c()J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->c:J

    iget-wide v2, p0, Lcom/tencent/mm/modelbase/SceneInfo;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    const-wide/16 v5, 0x3e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->b:J

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/SceneInfo;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->d:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    div-long/2addr v0, v5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->d:J

    iget-wide v3, p0, Lcom/tencent/mm/modelbase/SceneInfo;->b:J

    sub-long/2addr v0, v3

    goto :goto_0
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->f:I

    iput p2, p0, Lcom/tencent/mm/modelbase/SceneInfo;->g:I

    return-void
.end method

.method public final a(J)V
    .locals 2

    iput-wide p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public final b(J)V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->c:J

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 4

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/modelbase/SceneInfo;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->d:J

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->h:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stTime(ms)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edTime(ms)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/modelbase/SceneInfo;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cost(ms)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/SceneInfo;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/tencent/mm/platformtools/FrequencyLimiter;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:I

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x668a0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->a:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->b:I

    iget v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->b:I

    iput v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->c:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-wide v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->c:J

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "MicroMsg.FrequncyLimiter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frequency limited, last="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retries="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->d:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->d:I

    :goto_1
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->c:J

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->b:I

    iput v0, p0, Lcom/tencent/mm/platformtools/FrequencyLimiter;->d:I

    goto :goto_1
.end method

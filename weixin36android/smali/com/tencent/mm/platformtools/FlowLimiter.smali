.class public Lcom/tencent/mm/platformtools/FlowLimiter;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:J

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(JI)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->a:J

    int-to-long v3, p3

    iput-wide v3, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    const-string v3, "FLOW_LIMTER > 0"

    iget-wide v4, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "FLOW_CAPACITY > 0"

    iget-wide v3, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->c:J

    iput-wide v6, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 10

    const-wide/16 v8, 0x64

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->c:J

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    iget-wide v4, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    iget-wide v6, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    mul-long/2addr v0, v6

    iget-wide v6, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->a:J

    div-long/2addr v0, v6

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    iget-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->c:J

    iget-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    iget-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const-string v0, "MicroMsg.FlowLimiter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flow push limited, current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flowCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    mul-long/2addr v2, v8

    iget-wide v4, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_2
    iget-wide v0, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const-string v0, "MicroMsg.FlowLimiter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flow push half limited, current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flowCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    mul-long/2addr v2, v8

    iget-wide v4, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x55

    goto :goto_0

    :cond_3
    const-string v0, "MicroMsg.FlowLimiter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flow push passed, current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flowCapacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", percentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->d:J

    mul-long/2addr v2, v8

    iget-wide v4, p0, Lcom/tencent/mm/platformtools/FlowLimiter;->b:J

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    goto/16 :goto_0
.end method

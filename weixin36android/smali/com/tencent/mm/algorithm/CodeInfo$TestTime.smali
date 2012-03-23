.class public Lcom/tencent/mm/algorithm/CodeInfo$TestTime;
.super Ljava/lang/Object;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->a:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->a:J

    return-void
.end method

.method public final b()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

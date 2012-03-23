.class Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;JJ)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    cmp-long v0, p5, p3

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p2, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->e:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    iput-wide p3, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->b:J

    iput-wide p5, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->c:J

    iput p1, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->d:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    return-void
.end method

.method public final a(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->c:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    return-wide v0
.end method

.method public final c()V
    .locals 4

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    iget-wide v2, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->a:J

    iget-wide v2, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfoStorage$MsgTable;->d:I

    return v0
.end method

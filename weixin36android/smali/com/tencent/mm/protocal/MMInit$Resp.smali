.class public Lcom/tencent/mm/protocal/MMInit$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private final b:Ljava/util/List;

.field private c:I

.field private d:[B

.field private e:[B

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->c:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->d:[B

    iput-object v1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->e:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->f:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->f:J

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->d:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->a:I

    return-void
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->e:[B

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->c:I

    return v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->d:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->d:[B

    goto :goto_0
.end method

.method public h()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->e:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->e:[B

    goto :goto_0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMInit$Resp;->f:J

    return-wide v0
.end method

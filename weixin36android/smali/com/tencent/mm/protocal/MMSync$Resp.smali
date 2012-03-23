.class public Lcom/tencent/mm/protocal/MMSync$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:J

.field private c:[B

.field private final d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->c:[B

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->b:J

    return-void
.end method

.method public a(Lcom/tencent/mm/protocal/MMSync$CmdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->c:[B

    return-void
.end method

.method public a_(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->a:I

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->d:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/tencent/mm/protocal/MMSync$CmdItem;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b_()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->a:I

    return v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->b:J

    return-wide v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->c:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$Resp;->c:[B

    goto :goto_0
.end method

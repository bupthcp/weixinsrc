.class public Lcom/tencent/mm/protocal/MMBase$Req;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->g:J

    iput v2, p0, Lcom/tencent/mm/protocal/MMBase$Req;->b:I

    iput v2, p0, Lcom/tencent/mm/protocal/MMBase$Req;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->e:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMBase$Req;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/tencent/mm/pointers/PByteArray;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->g:J

    return-void
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->b:I

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->c:I

    return-void
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->f:I

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->d:Ljava/lang/String;

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBase$Req;->e:Ljava/lang/String;

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->a:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->b:I

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->c:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->d:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->e:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->f:I

    return v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMBase$Req;->g:J

    return-wide v0
.end method

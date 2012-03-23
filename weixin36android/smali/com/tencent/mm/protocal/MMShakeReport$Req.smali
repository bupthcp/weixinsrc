.class public Lcom/tencent/mm/protocal/MMShakeReport$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->g:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->h:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->e:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->h:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->i:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->g:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->e:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->i:I

    return v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Req;->e:I

    return v0
.end method

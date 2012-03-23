.class public Lcom/tencent/mm/protocal/MMPickBottle$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->a:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->e:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->f:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->g:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->h:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->g:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->h:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->i:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->i:I

    return v0
.end method

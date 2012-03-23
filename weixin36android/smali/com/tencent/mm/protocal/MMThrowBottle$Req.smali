.class public Lcom/tencent/mm/protocal/MMThrowBottle$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->c:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->c:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->e:I

    return-void
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->c:[B

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMThrowBottle$Req;->g:I

    return v0
.end method

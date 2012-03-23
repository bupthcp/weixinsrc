.class public Lcom/tencent/mm/protocal/MMBindQQ$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->b:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->c:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->e:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->f:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->a:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->b:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->c:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->e:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->d:I

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->f:I

    return-void
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->b:[B

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->d:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBindQQ$Resp;->f:I

    return v0
.end method

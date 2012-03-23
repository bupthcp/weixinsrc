.class public Lcom/tencent/mm/protocal/MMUploadVideo$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:[B

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e:I

    iput-object v2, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h:I

    iput-object v2, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->k:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->l:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->m:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b:Ljava/lang/String;

    return-void
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i:[B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->d:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->e:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->m:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->k:I

    return-void
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->f:[B

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->g:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->l:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->h:I

    return v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->i:[B

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->j:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->m:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->k:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadVideo$Req;->l:I

    return v0
.end method

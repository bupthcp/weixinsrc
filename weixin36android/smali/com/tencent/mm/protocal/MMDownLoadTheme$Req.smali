.class public Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->b:I

    new-instance v0, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0, p1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;I)I

    return-void
.end method

.method public a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0, p1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0, p1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;[B)[B

    return-void
.end method

.method public b()Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0, p1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;I)I

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->a(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0, p1}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;I)I

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->b(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->a:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->c(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->b:I

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->d(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)I

    move-result v0

    return v0
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->c:Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;->e(Lcom/tencent/mm/protocal/MMDownLoadTheme$MMTheme;)[B

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownLoadTheme$Req;->b:I

    return v0
.end method

.class public Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->a:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->b:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->c:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lcom/tencent/mm/protocal/MMDownloadPackage$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:Ljava/util/List;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->a:Ljava/util/List;

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->b:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->c:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->b:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->a:Ljava/util/List;

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->d:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadPackage$Req;->d:I

    return v0
.end method

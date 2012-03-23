.class public Lcom/tencent/mm/protocal/MMDownloadVideo$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDownloadVideo$Req;->d:I

    return v0
.end method

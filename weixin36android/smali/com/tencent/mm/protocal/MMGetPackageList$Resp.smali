.class public Lcom/tencent/mm/protocal/MMGetPackageList$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->b:Ljava/util/List;

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->c:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->e:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->b:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->a:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->c:I

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->b:Ljava/util/List;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->c:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->e:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Resp;->e:I

    return v0
.end method

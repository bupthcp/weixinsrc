.class public Lcom/tencent/mm/protocal/MMGetPackageList$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->b:Ljava/util/List;

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->a:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->b:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->c:I

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetPackageList$Req;->c:I

    return v0
.end method

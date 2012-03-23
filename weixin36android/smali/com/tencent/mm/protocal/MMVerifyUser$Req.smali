.class public Lcom/tencent/mm/protocal/MMVerifyUser$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->a:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->c:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->b:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->a:I

    return v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->c:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMVerifyUser$Req;->c:Ljava/util/List;

    return-object v0
.end method

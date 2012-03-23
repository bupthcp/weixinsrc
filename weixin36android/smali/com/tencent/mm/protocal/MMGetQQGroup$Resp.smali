.class public Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->a:I

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp;->c:Ljava/util/List;

    return-object v0
.end method

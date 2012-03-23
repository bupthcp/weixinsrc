.class public Lcom/tencent/mm/protocal/MMGetQQGroup$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Req;->b:I

    return v0
.end method

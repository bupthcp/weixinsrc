.class public Lcom/tencent/mm/protocal/MMSynCheck$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSynCheck$Req;->a:[B

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSynCheck$Req;->a:[B

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSynCheck$Req;->a:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSynCheck$Req;->a:[B

    goto :goto_0
.end method

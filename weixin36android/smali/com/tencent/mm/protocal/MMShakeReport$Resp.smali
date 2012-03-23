.class public Lcom/tencent/mm/protocal/MMShakeReport$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->a:[B

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->a:[B

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->b:I

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->a:[B

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->b:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeReport$Resp;->d:I

    return v0
.end method

.class public Lcom/tencent/mm/protocal/MMShakeImg$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->b:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->d:[B

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->d:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->a:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->b:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->c:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->c:I

    return v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->d:[B

    return-object v0
.end method

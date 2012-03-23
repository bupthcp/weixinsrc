.class public Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->d:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->e:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g:[B

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->b:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->c:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->d:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->e:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->d:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->f:I

    return v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetMsgImg$Resp;->g:[B

    return-object v0
.end method

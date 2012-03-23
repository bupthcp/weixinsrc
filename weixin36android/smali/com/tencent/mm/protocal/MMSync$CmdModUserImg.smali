.class public Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:I

.field private b:I

.field private c:[B

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->a:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->b:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->c:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->d:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->c:[B

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->a:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->b:I

    return v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->c:[B

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->d:Ljava/lang/String;

    return-object v0
.end method

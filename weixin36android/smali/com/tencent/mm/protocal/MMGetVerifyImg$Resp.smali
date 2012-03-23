.class public Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:Ljava/lang/String;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;->b:[B

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;->a:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;->b:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Resp;->b:[B

    return-object v0
.end method

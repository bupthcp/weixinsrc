.class public Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[B

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->c:[B

    iput-object v1, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->d:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->c:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->d:[B

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->c:[B

    return-object v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->d:[B

    return-object v0
.end method

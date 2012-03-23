.class public Lcom/tencent/mm/protocal/MMSync$MsgImg;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[B

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->b:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->c:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->d:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->a:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->c:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->d:I

    return-void
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->c:[B

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$MsgImg;->d:I

    return v0
.end method

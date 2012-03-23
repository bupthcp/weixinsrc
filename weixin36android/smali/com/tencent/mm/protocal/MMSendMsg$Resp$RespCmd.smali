.class public Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->a:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->e:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->f:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->g:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->a:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->g:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->c:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->b:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->f:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMSendMsg$Resp$RespCmd;->g:J

    return-wide v0
.end method

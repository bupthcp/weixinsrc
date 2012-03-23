.class public Lcom/tencent/mm/protocal/MMBase$Resp;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->c:J

    const/16 v0, -0x63

    iput v0, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public I()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->c:J

    return-wide v0
.end method

.method public a_(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->a:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->c:J

    return-void
.end method

.method public b_()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->a:I

    return v0
.end method

.method public c_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBase$Resp;->b:Ljava/lang/String;

    return-void
.end method

.class public Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->e:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->f:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->a:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->c:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->e:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->d:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->f:I

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->g:I

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->e:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->f:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->g:I

    return v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMUploadMsgImg$Resp;->h:J

    return-wide v0
.end method

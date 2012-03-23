.class public Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/util/List;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->e:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->f:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->g:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->i:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->l:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->m:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->n:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->o:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->p:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->r:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->s:J

    iput-wide v2, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->t:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->u:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->e:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->s:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->u:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->n:Ljava/util/List;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->f:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->g:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->t:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->a:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->h:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->j:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->c:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->m:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->d:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->e:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->p:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->i:Ljava/lang/String;

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->q:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->k:Ljava/lang/String;

    return-void
.end method

.method public g()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->f:[B

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->g:I

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->l:Ljava/lang/String;

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->h:I

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->o:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->r:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->j:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->m:I

    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->n:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->o:Ljava/lang/String;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->p:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->q:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->r:Ljava/lang/String;

    return-object v0
.end method

.method public t()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->s:J

    return-wide v0
.end method

.method public u()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->t:J

    return-wide v0
.end method

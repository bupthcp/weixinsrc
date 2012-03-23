.class public Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:I

.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:[B

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->c:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g:I

    iput-object v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->h:[B

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->i:I

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->r:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->t:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->u:I

    iput-object v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->v:Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->w:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->x:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->y:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->z:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->A:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->B:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->C:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->u:I

    return v0
.end method

.method public B()Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->v:Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->x:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->A:J

    return-void
.end method

.method public a(Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->v:Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo$MMGmailList;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->B:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->n:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->h:[B

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->C:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->z:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->C:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->i:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->z:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->j:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->A:J

    return-wide v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->a:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->i:I

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->j:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->o:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->p:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->t:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->q:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->a:I

    return v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->s:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->y:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->u:I

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->x:I

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g:I

    return v0
.end method

.method public s()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->h:[B

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->n:Z

    return v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->o:I

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->p:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->q:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->s:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->r:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->t:Ljava/lang/String;

    return-object v0
.end method

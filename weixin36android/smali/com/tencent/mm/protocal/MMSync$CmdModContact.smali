.class public Lcom/tencent/mm/protocal/MMSync$CmdModContact;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private final o:Ljava/util/List;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->f:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->g:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->h:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->y:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->j:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->v:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->A:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->o:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->m:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->n:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->q:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->z:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->B:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->w:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->v:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->z:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->B:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->A:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->f:[B

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->q:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->k:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->A:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->n:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->l:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->q:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->r:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->m:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->e:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->g:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->s:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->m:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->h:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->t:Ljava/lang/String;

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->n:I

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->u:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->o:Ljava/util/List;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->y:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->a:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->j:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->b:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->w:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->c:Ljava/lang/String;

    return-void
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->r:I

    return v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->z:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->d:Ljava/lang/String;

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->s:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->v:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->t:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x:Ljava/lang/String;

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->u:Ljava/lang/String;

    return-object v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->B:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->a:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->b:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->c:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->d:Ljava/lang/String;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->e:I

    return v0
.end method

.method public u()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->f:[B

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->g:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->h:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->y:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->j:I

    return v0
.end method

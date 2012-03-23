.class public Lcom/tencent/mm/protocal/MMProfile$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:[B

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;

.field private u:Ljava/util/List;

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->g:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->i:Ljava/lang/String;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->j:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->m:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->n:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->p:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->q:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->s:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->t:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->u:Ljava/util/List;

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->v:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->y:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->z:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->A:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->v:I

    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->y:Ljava/lang/String;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->z:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->A:I

    return v0
.end method

.method public E()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->C:I

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->D:I

    return v0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->E:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->B:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->t:Ljava/util/List;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->j:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->B:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->w:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->u:Ljava/util/List;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->a:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->c:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->w:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->e:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->d:Ljava/lang/String;

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->a:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->h:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->x:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->n:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->f:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->o:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->g:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->q:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->i:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->x:Ljava/lang/String;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->r:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->k:Ljava/lang/String;

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->e:I

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->v:I

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->l:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->A:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->m:Ljava/lang/String;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public l(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->C:I

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->p:Ljava/lang/String;

    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->h:I

    return v0
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->D:I

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->s:Ljava/lang/String;

    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->y:Ljava/lang/String;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->z:Ljava/lang/String;

    return-void
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->j:[B

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->k:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->E:Ljava/lang/String;

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->l:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->m:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->n:I

    return v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->o:I

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->q:I

    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->r:I

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->s:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->t:Ljava/util/List;

    return-object v0
.end method

.method public z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMProfile$Resp;->u:Ljava/util/List;

    return-object v0
.end method

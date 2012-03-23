.class public Lcom/tencent/mm/modelstat/NetStatInfo;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->b:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->c:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    iput v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    return v0
.end method

.method public final B()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    return v0
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->c:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    return-void
.end method

.method public final a()Z
    .locals 2

    const/16 v1, 0x1000

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/modelstat/NetStatInfo;)Z
    .locals 2

    iget v0, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    iget v1, p1, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    invoke-virtual {p0}, Lcom/tencent/mm/modelstat/NetStatInfo;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/tencent/mm/modelstat/NetStatInfo;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->b:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->c:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    iput v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    return-object p0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->c:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    return-void
.end method

.method public final d()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "peroid"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    const-string v1, "textCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const-string v1, "textBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const-string v1, "imageCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    const-string v1, "imageBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const-string v1, "voiceCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    const-string v1, "voiceBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const-string v1, "videoCountIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const-string v1, "videoBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    const-string v1, "mobileBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    const-string v1, "wifiBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    const-string v1, "sysMobileBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    const-string v1, "sysWifiBytesIn"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_d

    const-string v1, "textCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    const-string v1, "textBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    const-string v1, "imageCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const-string v1, "imageBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    const-string v1, "voiceCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_12

    const-string v1, "voiceBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_13

    const-string v1, "videoCountOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    const-string v1, "videoBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_14
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x40

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    const-string v1, "mobileBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_15
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    const-string v1, "wifiBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_16
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x100

    and-int/2addr v1, v2

    if-eqz v1, :cond_17

    const-string v1, "sysMobileBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->a:I

    const/high16 v2, 0x200

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    const-string v1, "sysWifiBytesOut"

    iget v2, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_18
    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->c:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    return v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    return v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    return-void
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    return v0
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    return v0
.end method

.method public final m(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    return-void
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    return-void
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    return v0
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    return-void
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    return v0
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    return-void
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    return v0
.end method

.method public final q(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    return-void
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    return v0
.end method

.method public final r(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    return-void
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    return v0
.end method

.method public final s(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    return-void
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    return v0
.end method

.method public final t(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "NetStatInfo: \n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|- text in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|- image in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|- voice in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|- video in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|- mobile in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`- wifi in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B, out="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->s:I

    return v0
.end method

.method public final u(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    return-void
.end method

.method public final v()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->t:I

    return v0
.end method

.method public final v(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    return-void
.end method

.method public final w()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->u:I

    return v0
.end method

.method public final w(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    return-void
.end method

.method public final x()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->v:I

    return v0
.end method

.method public final x(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->y:I

    return-void
.end method

.method public final y()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->w:I

    return v0
.end method

.method public final y(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->z:I

    return-void
.end method

.method public final z()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->x:I

    return v0
.end method

.method public final z(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelstat/NetStatInfo;->A:I

    return-void
.end method

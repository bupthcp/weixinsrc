.class public Lcom/tencent/mm/modelshake/ShakeItem;
.super Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

# interfaces
.implements Lcom/tencent/mm/storagebase/MDBItem;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->f(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->m()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->a(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->b(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->k()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->n()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->g(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->h(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->d:I

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;->l()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->c:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->f(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->a(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->b(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->d:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e(I)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->e:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelshake/ShakeItem;->g(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->d:I

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->e:I

    return-void
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->d:I

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelshake/ShakeItem;->e:I

    return v0
.end method

.method public final s()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    const-string v1, "nickname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    const-string v1, "province"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const-string v1, "city"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    const-string v1, "signature"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    const-string v1, "distance"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_6

    const-string v1, "sex"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    const-string v1, "imgstatus"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const-string v1, "hasHDImg"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    const-string v1, "insertBatch"

    iget v2, p0, Lcom/tencent/mm/modelshake/ShakeItem;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    const-string v1, "reserved1"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_b

    const-string v1, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modelshake/ShakeItem;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v1, p0, Lcom/tencent/mm/modelshake/ShakeItem;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_c

    const-string v1, "reserved3"

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/ShakeItem;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-object v0
.end method

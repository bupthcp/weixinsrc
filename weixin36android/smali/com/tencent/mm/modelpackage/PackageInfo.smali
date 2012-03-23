.class public Lcom/tencent/mm/modelpackage/PackageInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->f:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->g:I

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->j:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->k:I

    iput v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->l:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const-string v0, "id"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const-string v0, "version"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    const-string v2, "name"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const-string v0, "size"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    const-string v2, "packname"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    const-string v0, "status"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    const-string v2, "reserved1"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->i:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const-string v2, "reserved2"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->j:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    const-string v0, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_a

    const-string v0, "reserved4"

    iget v2, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b

    const-string v0, "localId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->i:Ljava/lang/String;

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->j:Ljava/lang/String;

    goto :goto_3
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->m:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->e:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->g:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->j:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->l:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->k:I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->b:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->c:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->e:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->e:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->h:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->g:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/PackageInfo;->g:I

    return-void
.end method

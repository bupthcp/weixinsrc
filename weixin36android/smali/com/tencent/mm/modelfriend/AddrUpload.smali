.class public Lcom/tencent/mm/modelfriend/AddrUpload;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    iput v2, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->k:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->n:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->o:I

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "id"

    iget v2, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "md5"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "peopleid"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "uploadtime"

    iget-wide v2, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "realname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v2, "realnamepyinitial"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->f:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v2, "realnamequanpin"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->g:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "nickname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v2, "nicknamepyinitial"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->j:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "nicknamequanpin"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->k:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "moblie"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v2, "email"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->n:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->o:I

    if-nez v0, :cond_14

    const-string v0, "status"

    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    :goto_5
    return-object v1

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->g:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->j:Ljava/lang/String;

    goto :goto_2

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->k:Ljava/lang/String;

    goto :goto_3

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->n:Ljava/lang/String;

    goto :goto_4

    :cond_14
    const-string v2, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->p:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->d:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->d:J

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->k:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->l:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->m:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->n:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/high16 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->o:I

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->o:I

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->l:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->a:I

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->o:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->e:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->f:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->g:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->h:Ljava/lang/String;

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->o:I

    return v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->i:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->j:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->k:Ljava/lang/String;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->m:Ljava/lang/String;

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrUpload;->n:Ljava/lang/String;

    return-void
.end method

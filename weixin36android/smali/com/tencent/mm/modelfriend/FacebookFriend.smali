.class public Lcom/tencent/mm/modelfriend/FacebookFriend;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->b:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->c:I

    iput v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->h:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->i:I

    iput v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->n:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "fbid"

    iget-wide v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "fbname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "fbimgkey"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "status"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "nickname"

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FacebookFriend;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v2, "nicknamepyinitial"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->g:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v2, "nicknamequanpin"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->h:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "sex"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "personalcard"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "province"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->k:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v2, "city"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->l:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v2, "signature"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->m:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v2, "alias"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->n:Ljava/lang/String;

    if-nez v0, :cond_15

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    const-string v2, "email"

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->p:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_6
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-object v1

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->h:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->k:Ljava/lang/String;

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->l:Ljava/lang/String;

    goto :goto_3

    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->m:Ljava/lang/String;

    goto :goto_4

    :cond_15
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->n:Ljava/lang/String;

    goto :goto_5

    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->p:Ljava/lang/String;

    goto :goto_6
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->c:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->a:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->a:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->d:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->i:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->j:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->k:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->l:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->m:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->n:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->o:I

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->p:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->d:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->q:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->i:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->a:J

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->j:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->g:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->h:Ljava/lang/String;

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->d:I

    return v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->k:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->l:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->m:Ljava/lang/String;

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriend;->n:Ljava/lang/String;

    return-void
.end method

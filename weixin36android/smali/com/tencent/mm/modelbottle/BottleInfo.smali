.class public Lcom/tencent/mm/modelbottle/BottleInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:J

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->a:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->c:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->d:I

    iput v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->e:I

    iput v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->h:J

    iput v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->i:I

    iput v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v2, "parentclientid"

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "childcount"

    iget v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "bottleid"

    invoke-virtual {p0}, Lcom/tencent/mm/modelbottle/BottleInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "bottletype"

    iget v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "msgtype"

    iget v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "voicelen"

    iget v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "content"

    invoke-virtual {p0}, Lcom/tencent/mm/modelbottle/BottleInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "createtime"

    iget-wide v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->k:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->l:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->k:Ljava/lang/String;

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->l:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->h:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->b:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->d:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->e:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->f:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->h:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->i:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->j:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->k:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->l:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->m:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->d:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->e:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->d:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->f:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->f:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelbottle/BottleInfo;->h:J

    return-wide v0
.end method

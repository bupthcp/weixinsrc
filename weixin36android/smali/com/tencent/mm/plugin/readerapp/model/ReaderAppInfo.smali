.class public Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->b:J

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->h:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->i:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->o:I

    iput v1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const-string v0, "readerapp"

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    const-string v0, "blogapp"

    goto :goto_0

    :cond_1
    const-string v0, "INFO TYPE NEITHER NEWS NOR WEIBO"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "tweetid"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "time"

    iget-wide v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "name"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "title"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "url"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "shorturl"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v2, "longurl"

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->h:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "pubtime"

    iget-wide v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "sourcename"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v0, "sourceicon"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v0, "istop"

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "cover"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v0, "digest"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    const/high16 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->q:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    const/high16 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->r:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v1

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->h:Ljava/lang/String;

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->q:Ljava/lang/String;

    goto :goto_1

    :cond_14
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->r:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->b:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->b:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->i:J

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->l:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n:Ljava/lang/String;

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->o:I

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->p:I

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->q:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->s:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->c:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->i:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->b:J

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->c:I

    return v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m:Ljava/lang/String;

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->l:I

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->n:Ljava/lang/String;

    goto :goto_0
.end method

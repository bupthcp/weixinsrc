.class public Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

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

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b:I

    iput-wide v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c:J

    iput-wide v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o:I

    iput v1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "clientid"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "status"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "createtime"

    iget-wide v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "lastmodifytime"

    iget-wide v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "filename"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "thumbfilename"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "tolist"

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "tolistcount"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "msgtype"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "mediatime"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v0, "datanetoffset"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v0, "datalen"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "thumbnetoffset"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v0, "thumbtotallen"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    const/high16 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    const/high16 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->r:Ljava/lang/String;

    if-nez v0, :cond_13

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v1

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q:Ljava/lang/String;

    goto :goto_0

    :cond_13
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->r:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c:J

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d:J

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o:I

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->p:I

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->s:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->d:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->b:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c:J

    return-wide v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k:I

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l:I

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m:I

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n:I

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->l:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->n:I

    return v0
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o:I

    return-void
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->o:I

    return v0
.end method

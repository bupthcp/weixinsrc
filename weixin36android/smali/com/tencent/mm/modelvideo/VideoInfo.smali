.class public Lcom/tencent/mm/modelvideo/VideoInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->b:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->c:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->d:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->e:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->f:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->g:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->h:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->i:I

    iput-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->j:J

    iput-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->k:J

    iput-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->l:J

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->m:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->n:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->o:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->p:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->r:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->s:I

    iput v1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->v:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "filename"

    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v2, "clientid"

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->b:Ljava/lang/String;

    if-nez v0, :cond_16

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "msgsvrid"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "netoffset"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "filenowsize"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "totallen"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "thumbnetoffset"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "thumblen"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "status"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "createtime"

    iget-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v0, "lastmodifytime"

    iget-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v0, "downloadtime"

    iget-wide v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "videolength"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v0, "msglocalid"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    const-string v0, "nettimes"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_f

    const-string v0, "cameratype"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->p:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const/high16 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_10

    const-string v0, "user"

    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const/high16 v2, 0x2

    and-int/2addr v0, v2

    if-eqz v0, :cond_11

    const-string v0, "human"

    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const/high16 v2, 0x4

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->s:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const/high16 v2, 0x8

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->t:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const/high16 v2, 0x10

    and-int/2addr v0, v2

    if-eqz v0, :cond_14

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->u:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    const/high16 v2, 0x20

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->v:Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-object v1

    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->b:Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->u:Ljava/lang/String;

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->v:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->j:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->d:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->e:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->f:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->g:I

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->h:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->i:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->j:J

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->k:J

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->l:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->m:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->n:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->o:I

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->p:I

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->q:Ljava/lang/String;

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->r:Ljava/lang/String;

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->s:I

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->t:I

    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->u:Ljava/lang/String;

    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->v:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->w:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->c:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->k:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->q:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->d:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->l:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->r:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->c:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->e:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->u:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->d:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->f:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->e:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->g:I

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->f:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->h:I

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->g:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->i:I

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->h:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->m:I

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->i:I

    return v0
.end method

.method public final j(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->n:I

    return-void
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->j:J

    return-wide v0
.end method

.method public final k(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->o:I

    return-void
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->k:J

    return-wide v0
.end method

.method public final l(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->s:I

    return-void
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->m:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->n:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->o:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvideo/VideoInfo;->s:I

    return v0
.end method

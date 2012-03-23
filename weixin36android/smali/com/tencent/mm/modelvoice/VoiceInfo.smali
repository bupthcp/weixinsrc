.class public Lcom/tencent/mm/modelvoice/VoiceInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->e:I

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->f:I

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->g:I

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->h:I

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    iput-wide v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->j:J

    iput-wide v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->k:J

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->l:I

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->n:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->j:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->b:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->c:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->e:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->f:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->g:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->h:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->j:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->k:J

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->d:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->l:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->m:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->n:Ljava/lang/String;

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->o:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->p:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->n:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->m:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->k:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    if-le v1, v0, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->l:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "FileName"

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "User"

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "MsgId"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "NetOffset"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const-string v1, "FileNowSize"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string v1, "TotalLen"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const-string v1, "Status"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    const-string v1, "CreateTime"

    iget-wide v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_7
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const-string v1, "LastModifyTime"

    iget-wide v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    const-string v1, "ClientId"

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    const-string v1, "VoiceLength"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    const-string v1, "MsgLocalId"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    const-string v1, "Human"

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    const-string v1, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    iget v1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->a:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_e

    const-string v1, "reserved2"

    iget-object v2, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->e:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->f:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->m:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->g:I

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->l:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->h:I

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->o:I

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->e:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->f:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->g:I

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->h:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->i:I

    return v0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->j:J

    return-wide v0
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->k:J

    return-wide v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelvoice/VoiceInfo;->o:I

    return v0
.end method

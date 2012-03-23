.class public Lcom/tencent/mm/modelqmsg/QContact;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelqmsg/QContact;->d:I

    iput-wide v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->e:J

    iput-wide v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->f:J

    iput v1, p0, Lcom/tencent/mm/modelqmsg/QContact;->g:I

    iput v1, p0, Lcom/tencent/mm/modelqmsg/QContact;->h:I

    iput v1, p0, Lcom/tencent/mm/modelqmsg/QContact;->i:I

    iput v1, p0, Lcom/tencent/mm/modelqmsg/QContact;->j:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "qq"

    iget-wide v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "extinfo"

    invoke-virtual {p0}, Lcom/tencent/mm/modelqmsg/QContact;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "needupdate"

    iget v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "extupdateseq"

    iget-wide v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "imgupdateseq"

    iget-wide v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "reserved4"

    iget v2, p0, Lcom/tencent/mm/modelqmsg/QContact;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "reserved5"

    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->k:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v2, "reserved6"

    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->l:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v2, "reserved7"

    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->m:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v2, "reserved8"

    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->n:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object v1

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->k:Ljava/lang/String;

    goto :goto_0

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->l:Ljava/lang/String;

    goto :goto_1

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->m:Ljava/lang/String;

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->n:Ljava/lang/String;

    goto :goto_3
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->o:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->b:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->d:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->e:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->g:I

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->f:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->k:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->d:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->h:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->l:Ljava/lang/String;

    return-void
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->e:J

    return-wide v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->i:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->m:Ljava/lang/String;

    return-void
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelqmsg/QContact;->f:J

    return-wide v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->j:I

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelqmsg/QContact;->n:Ljava/lang/String;

    return-void
.end method

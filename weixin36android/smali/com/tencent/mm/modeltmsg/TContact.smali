.class public Lcom/tencent/mm/modeltmsg/TContact;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->b:J

    iput-wide v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->c:J

    iput v1, p0, Lcom/tencent/mm/modeltmsg/TContact;->d:I

    iput v1, p0, Lcom/tencent/mm/modeltmsg/TContact;->e:I

    iput v1, p0, Lcom/tencent/mm/modeltmsg/TContact;->f:I

    iput v1, p0, Lcom/tencent/mm/modeltmsg/TContact;->g:I

    iput v1, p0, Lcom/tencent/mm/modeltmsg/TContact;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modeltmsg/TContact;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "extupdateseq"

    iget-wide v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "imgupdateseq"

    iget-wide v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "needupdate"

    iget v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "reserved4"

    iget v2, p0, Lcom/tencent/mm/modeltmsg/TContact;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v2, "reserved5"

    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->i:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v2, "reserved6"

    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->j:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "reserved7"

    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->k:Ljava/lang/String;

    if-nez v0, :cond_e

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v2, "reserved8"

    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->l:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v1

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->i:Ljava/lang/String;

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->j:Ljava/lang/String;

    goto :goto_1

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->k:Ljava/lang/String;

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->l:Ljava/lang/String;

    goto :goto_3
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->m:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->b:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->d:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->c:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->i:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->b:J

    return-wide v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->e:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->j:Ljava/lang/String;

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modeltmsg/TContact;->c:J

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->f:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->k:Ljava/lang/String;

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->g:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->l:Ljava/lang/String;

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltmsg/TContact;->h:I

    return-void
.end method

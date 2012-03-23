.class public Lcom/tencent/mm/modelavatar/HDHeadImgInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->f:I

    iget v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b:I

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e:I

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->f:I

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->i:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->j:I

    iput v1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->k:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->c:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v2, "username"

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "imgwidth"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "imgheigth"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "imgformat"

    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "totallen"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "startpos"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "headimgtype"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v2, "reserved1"

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->h:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v2, "reserved2"

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->i:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v0, "reserved4"

    iget v2, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    return-object v1

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->h:Ljava/lang/String;

    goto :goto_1

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->i:Ljava/lang/String;

    goto :goto_2
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->l:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->f:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->b:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->g:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->c:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->j:I

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->k:I

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->e:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->f:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelavatar/HDHeadImgInfo;->g:I

    return v0
.end method

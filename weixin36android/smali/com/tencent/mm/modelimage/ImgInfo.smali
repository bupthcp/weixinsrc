.class public Lcom/tencent/mm/modelimage/ImgInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->j:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->b:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->c:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->f:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->g:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->h:I

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->i:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->j:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->k:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->j:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->k:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->k:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->h:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->h:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->i:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->i:I

    return v0
.end method

.method public final e(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->b:J

    return-void
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->b:J

    return-wide v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->c:I

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->c:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    return-void
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    return-void
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->c:I

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "id"

    iget-wide v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "msgSvrId"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "offset"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "totalLen"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const-string v1, "bigImgPath"

    iget-object v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string v1, "thumbImgPath"

    iget-object v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const-string v1, "createtime"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    const-string v1, "msglocalid"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const-string v1, "status"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v1, p0, Lcom/tencent/mm/modelimage/ImgInfo;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    const-string v1, "nettimes"

    iget v2, p0, Lcom/tencent/mm/modelimage/ImgInfo;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    return-object v0
.end method

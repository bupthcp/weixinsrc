.class public Lcom/tencent/mm/modeltheme/ThemeInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->a:I

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->b:I

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->c:I

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->d:I

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->g:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->h:I

    iput v1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "themeid"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "themever"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "themesize"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "offset"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "status"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "themename"

    invoke-virtual {p0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "packname"

    invoke-virtual {p0}, Lcom/tencent/mm/modeltheme/ThemeInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->j:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->k:Ljava/lang/String;

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v1

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->j:Ljava/lang/String;

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->k:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->a:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->b:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->d:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->e:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->h:I

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->i:I

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->l:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->a:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->a:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->b:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->b:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->c:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->c:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->d:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->d:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->e:I

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->e:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modeltheme/ThemeInfo;->g:Ljava/lang/String;

    goto :goto_0
.end method

.class public Lcom/tencent/mm/modelpackage/ChattingBgInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->e:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->f:I

    iput v1, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->g:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "bgflag"

    iget v2, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v2, "path"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v2, "reserved1"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v2, "reserved2"

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->e:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "reserved4"

    iget v2, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    return-object v1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->e:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->b:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->b:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->f:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->g:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->h:I

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->b:I

    return v0
.end method

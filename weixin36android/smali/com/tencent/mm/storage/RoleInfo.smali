.class public Lcom/tencent/mm/storage/RoleInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/mm/storage/RoleInfo$Parser;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x87

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    iput-object v2, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    iput v1, p0, Lcom/tencent/mm/storage/RoleInfo;->e:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x87

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    new-instance v0, Lcom/tencent/mm/storage/RoleInfo$Parser;

    invoke-direct {v0, p1}, Lcom/tencent/mm/storage/RoleInfo$Parser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    iput-object p1, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    iput p3, p0, Lcom/tencent/mm/storage/RoleInfo;->e:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/RoleInfo$Parser;

    iget-object v1, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/RoleInfo$Parser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    :cond_0
    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    :cond_1
    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->e:I

    :cond_2
    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    goto :goto_1
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/storage/RoleInfo;->e:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/tencent/mm/storage/RoleInfo$Parser;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/RoleInfo;->c:Lcom/tencent/mm/storage/RoleInfo$Parser;

    return-object v0
.end method

.method public final f()Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "name"

    iget-object v2, p0, Lcom/tencent/mm/storage/RoleInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    const-string v1, "status"

    iget v2, p0, Lcom/tencent/mm/storage/RoleInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v1, p0, Lcom/tencent/mm/storage/RoleInfo;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    const-string v1, "int_reserved1"

    iget v2, p0, Lcom/tencent/mm/storage/RoleInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    return-object v0
.end method

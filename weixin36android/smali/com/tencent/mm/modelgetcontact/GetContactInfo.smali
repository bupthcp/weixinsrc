.class public Lcom/tencent/mm/modelgetcontact/GetContactInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->b:J

    iput v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->c:I

    iput v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->d:I

    iput v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->e:I

    iput v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "username"

    invoke-virtual {p0}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "inserttime"

    iget-wide v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "lastgettime"

    iget v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "reserved1"

    iget v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "reserved2"

    iget v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v2, "reserved3"

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->g:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v2, "reserved4"

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->h:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v1

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->g:Ljava/lang/String;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->h:Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->b:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->b:J

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->d:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->e:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->f:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->g:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->i:I

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a:Ljava/lang/String;

    goto :goto_0
.end method

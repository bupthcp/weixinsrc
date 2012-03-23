.class public Lcom/tencent/mm/storage/Conversation;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/storage/Conversation;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "unReadCount"

    iget v2, p0, Lcom/tencent/mm/storage/Conversation;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "status"

    iget v2, p0, Lcom/tencent/mm/storage/Conversation;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "isSend"

    iget v2, p0, Lcom/tencent/mm/storage/Conversation;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "createTime"

    iget-wide v2, p0, Lcom/tencent/mm/storage/Conversation;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "username"

    iget-object v2, p0, Lcom/tencent/mm/storage/Conversation;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    iget-object v2, p0, Lcom/tencent/mm/storage/Conversation;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reserved"

    iget-object v2, p0, Lcom/tencent/mm/storage/Conversation;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/Conversation;->a:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/storage/Conversation;->d:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/Conversation;->a:I

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/Conversation;->b:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/Conversation;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/storage/Conversation;->d:J

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/Conversation;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/Conversation;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/Conversation;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/Conversation;->b:I

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/Conversation;->c:I

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/tencent/mm/storage/Conversation;->d:J

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/Conversation;->f:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/Conversation;->e:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/Conversation;->a:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/Conversation;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/Conversation;->b:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/Conversation;->g:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/Conversation;->c:I

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/storage/Conversation;->c:I

    return-void
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/storage/Conversation;->d:J

    return-wide v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/Conversation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/Conversation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/Conversation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/Conversation;->b:I

    iput v1, p0, Lcom/tencent/mm/storage/Conversation;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/Conversation;->f:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/storage/Conversation;->a:I

    return-void
.end method

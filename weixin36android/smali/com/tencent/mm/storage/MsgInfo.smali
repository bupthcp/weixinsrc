.class public Lcom/tencent/mm/storage/MsgInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->k:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "msgId"

    iget-wide v2, p0, Lcom/tencent/mm/storage/MsgInfo;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "msgSvrId"

    iget v2, p0, Lcom/tencent/mm/storage/MsgInfo;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "type"

    iget v2, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "status"

    iget v2, p0, Lcom/tencent/mm/storage/MsgInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const-string v1, "isSend"

    iget v2, p0, Lcom/tencent/mm/storage/MsgInfo;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string v1, "isShowTimer"

    iget v2, p0, Lcom/tencent/mm/storage/MsgInfo;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    const-string v1, "createTime"

    iget-wide v2, p0, Lcom/tencent/mm/storage/MsgInfo;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_6
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    const-string v1, "talker"

    iget-object v2, p0, Lcom/tencent/mm/storage/MsgInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const-string v1, "content"

    iget-object v2, p0, Lcom/tencent/mm/storage/MsgInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    const-string v1, "imgPath"

    iget-object v2, p0, Lcom/tencent/mm/storage/MsgInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    const-string v1, "reserved"

    iget-object v2, p0, Lcom/tencent/mm/storage/MsgInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/MsgInfo;->l:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/storage/MsgInfo;->a:J

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/storage/MsgInfo;->a:J

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->b:I

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->d:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->e:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/storage/MsgInfo;->f:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/storage/MsgInfo;->g:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->h:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->i:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->j:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/MsgInfo;->h:Ljava/lang/String;

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfo;->a:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/MsgInfo;->b:I

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/storage/MsgInfo;->g:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/MsgInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->b:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/MsgInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/MsgInfo;->d:I

    return-void
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->d:I

    return v0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/storage/MsgInfo;->e:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->e:I

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/storage/MsgInfo;->g:J

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/MsgInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_0
        0x17 -> :sswitch_0
        0x21 -> :sswitch_0
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_0
        0x15 -> :sswitch_0
        0x1f -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method

.method public final p()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/storage/MsgInfo;->c:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

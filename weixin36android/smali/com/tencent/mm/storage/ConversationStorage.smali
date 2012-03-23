.class public Lcom/tencent/mm/storage/ConversationStorage;
.super Lcom/tencent/mm/storagebase/MStorage;

# interfaces
.implements Lcom/tencent/mm/storage/IOnMsgChange;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/tencent/mm/storagebase/SqliteDB;

.field private c:Lcom/tencent/mm/storagebase/MStorageEvent;

.field private d:Lcom/tencent/mm/storagebase/MStorageEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS conversation ( unReadCount INTEGER, status INT, isSend INT, createTime LONG, username VARCHAR(40), content TEXT, reserved TEXT )"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE UNIQUE INDEX IF NOT EXISTS  conversationUsername ON conversation ( username )"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE TABLE IF NOT EXISTS bottleconversation ( unReadCount INTEGER, status INT, isSend INT, createTime LONG, username VARCHAR(40), content TEXT, reserved TEXT )"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE UNIQUE INDEX IF NOT EXISTS  btconversationUsername ON bottleconversation ( username )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/ConversationStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    new-instance v0, Lcom/tencent/mm/storage/ConversationStorage$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage$1;-><init>(Lcom/tencent/mm/storage/ConversationStorage;)V

    iput-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->c:Lcom/tencent/mm/storagebase/MStorageEvent;

    new-instance v0, Lcom/tencent/mm/storage/ConversationStorage$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage$2;-><init>(Lcom/tencent/mm/storage/ConversationStorage;)V

    iput-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->d:Lcom/tencent/mm/storagebase/MStorageEvent;

    iput-object p1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "MicroMsg.ConversationStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "talker :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bottleconversation"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "conversation"

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/Conversation;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const-string v1, "MicroMsg.ConversationStorage"

    const-string v2, "update conversation failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-static {p2}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->a()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "username=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object p2, v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/tencent/mm/storage/ConversationStorage;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/storage/Conversation;)J
    .locals 6

    const-wide/16 v0, -0x1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    const-string v2, "MicroMsg.ConversationStorage"

    const-string v3, "insert conversation failed, username empty"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v0

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-static {v2}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->a()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ConversationStorage;->b(Ljava/lang/String;)V

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select unReadCount, status, isSend, createTime, conversation.username, content, conversation.reserved, nickname from conversation,contact where conversation.username = contact.username"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and conversation.username != \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " order by createTime desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->d:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/tencent/mm/storage/MsgInfoStorage;Lcom/tencent/mm/storage/NotifyInfo;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/tencent/mm/storage/NotifyInfo;->a:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/tencent/mm/storage/Conversation;

    invoke-direct {v0, v4}, Lcom/tencent/mm/storage/Conversation;-><init>(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    iget-object v5, p0, Lcom/tencent/mm/storage/ConversationStorage;->c:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/tencent/mm/storage/ConversationStorage;->c:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v5}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "MicroMsg.ConversationStorage"

    const-string v1, "process message for conversation failed: inconsist username"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-object v1, p2, Lcom/tencent/mm/storage/NotifyInfo;->b:Ljava/lang/String;

    const-string v6, "insert"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/tencent/mm/storage/NotifyInfo;->c:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Conversation;->a(I)V

    :cond_1
    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/Conversation;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    invoke-virtual {v5}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Conversation;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-static {v4}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "username=?"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;)J

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->d:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->d:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v4}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v2, "MicroMsg.ConversationStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update null conversation with talker "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->j()V

    invoke-virtual {p0, v0, v4}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move v1, v3

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-static {p1}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "username=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "delete from conversation"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ConversationStorage;->c()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "delete from bottleconversation"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ConversationStorage;->c()V

    :cond_1
    return v0
.end method

.method public final b(Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->c:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "delete from bottleconversation"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/ConversationStorage;->c()V

    :cond_0
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where username like \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public final d()Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select * from bottleconversation order by createTime desc"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-static {p1}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "username=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, "MicroMsg.ConversationStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get null with username:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v0, Lcom/tencent/mm/storage/Conversation;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Conversation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Conversation;->a(Landroid/database/Cursor;)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final e()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "select count(*) from bottleconversation where unReadCount > 0"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.ConversationStorage"

    const-string v1, "update conversation failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unReadCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = 0 where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select unReadCount, status, isSend, createTime, conversation.username, content, conversation.reserved, nickname from conversation,contact where conversation.username = contact.username"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "createTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    invoke-static {p1}, Lcom/tencent/mm/storage/ConversationStorage;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "username=?"

    new-array v5, v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select sum(unReadCount) from conversation,contact where conversation.username = contact.username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public final i(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select count(conversation.username) from conversation,contact where conversation.username = contact.username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "unReadCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/storage/ConversationStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0
.end method

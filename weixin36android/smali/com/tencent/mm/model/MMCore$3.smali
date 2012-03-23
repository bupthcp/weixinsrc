.class Lcom/tencent/mm/model/MMCore$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;


# instance fields
.field private synthetic a:Lcom/tencent/mm/model/MMCore;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/MMCore;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore$3;->a:Lcom/tencent/mm/model/MMCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/Conversation;Lcom/tencent/mm/storage/ConversationStorage;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "floatbottle"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/mm/storage/Conversation;

    const-string v2, "floatbottle"

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/Conversation;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ConversationStorage;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/Conversation;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/Conversation;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/Conversation;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/Conversation;->c(Ljava/lang/String;)V

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;)J

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->j()V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "tmessage"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lcom/tencent/mm/storage/Conversation;

    const-string v2, "tmessage"

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/Conversation;-><init>(Ljava/lang/String;)V

    move v2, v1

    move-object v3, v0

    :goto_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v4, 0x3006

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_7

    move-wide v4, v6

    :goto_4
    invoke-virtual {v8, v10, v4, v5}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(IJ)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/Conversation;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v0, "qmessage"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/tencent/mm/storage/Conversation;

    const-string v2, "qmessage"

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/Conversation;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    :goto_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x3007

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_8

    move-wide v3, v6

    :goto_6
    invoke-virtual {v5, v9, v3, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(IJ)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Conversation;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    :goto_7
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_9

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Conversation;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Conversation;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Conversation;->c(Ljava/lang/String;)V

    :goto_8
    if-eqz v1, :cond_a

    invoke-virtual {p2, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;)J

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_6

    :cond_9
    invoke-virtual {v2}, Lcom/tencent/mm/storage/Conversation;->j()V

    goto :goto_8

    :cond_a
    invoke-virtual {v2}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/Conversation;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v1, v2

    move-object v2, v0

    goto/16 :goto_5

    :cond_c
    move v1, v2

    move-object v2, v3

    goto :goto_7

    :cond_d
    move-object v3, v0

    goto/16 :goto_3

    :cond_e
    move v1, v2

    goto/16 :goto_1
.end method

.class Lcom/tencent/mm/model/MMCore$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;


# instance fields
.field private synthetic a:Lcom/tencent/mm/model/MMCore;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/MMCore;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore$4;->a:Lcom/tencent/mm/model/MMCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/Conversation;Lcom/tencent/mm/storage/ConversationStorage;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "_USER_FOR_THROWBOTTLE_"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/tencent/mm/storage/Conversation;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/ConversationStorage;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

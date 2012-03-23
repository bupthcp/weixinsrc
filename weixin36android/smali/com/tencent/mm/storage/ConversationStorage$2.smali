.class Lcom/tencent/mm/storage/ConversationStorage$2;
.super Lcom/tencent/mm/storagebase/MStorageEvent;


# instance fields
.field private synthetic a:Lcom/tencent/mm/storage/ConversationStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/storage/ConversationStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/storage/ConversationStorage$2;->a:Lcom/tencent/mm/storage/ConversationStorage;

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorageEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

    check-cast p2, Lcom/tencent/mm/storage/Conversation;

    iget-object v0, p0, Lcom/tencent/mm/storage/ConversationStorage$2;->a:Lcom/tencent/mm/storage/ConversationStorage;

    invoke-interface {p1, p2, v0}, Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;->a(Lcom/tencent/mm/storage/Conversation;Lcom/tencent/mm/storage/ConversationStorage;)V

    return-void
.end method

.class Lcom/tencent/mm/ui/QConversationUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MListAdapter$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/storage/Contact;

.field private synthetic b:Lcom/tencent/mm/ui/QConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QConversationUI;Lcom/tencent/mm/storage/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QConversationUI$1;->b:Lcom/tencent/mm/ui/QConversationUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/QConversationUI$1;->a:Lcom/tencent/mm/storage/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationUI$1;->b:Lcom/tencent/mm/ui/QConversationUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QConversationUI$1;->a:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/model/ContactStorageLogic;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConversationStorage;->h(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/QConversationUI;->d(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationUI$1;->b:Lcom/tencent/mm/ui/QConversationUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/QConversationUI$1;->b:Lcom/tencent/mm/ui/QConversationUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QConversationUI;->a(Lcom/tencent/mm/ui/QConversationUI;)Lcom/tencent/mm/ui/MListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/QConversationUI;->a(Lcom/tencent/mm/ui/QConversationUI;I)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/QConversationUI;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

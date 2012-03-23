.class Lcom/tencent/mm/ui/MainUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/high16 v5, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p3, -0x1

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/MainUI;->b(Lcom/tencent/mm/ui/MainUI;)Lcom/tencent/mm/ui/ConversationAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/ConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Conversation;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v1, Lcom/tencent/mm/ui/TConversationUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v1, Lcom/tencent/mm/ui/QConversationUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->l(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->h()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v1, Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    if-lez v1, :cond_7

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->j()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v1, Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->n()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "Chat_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v3

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_c

    :goto_1
    if-eqz v1, :cond_d

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v2, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    goto :goto_1

    :cond_d
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->A(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v3

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    if-nez v3, :cond_f

    :goto_2
    if-eqz v1, :cond_10

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v2, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->m(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v3

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_13

    :goto_3
    if-eqz v1, :cond_14

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryUI;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_13
    move v1, v2

    goto :goto_3

    :cond_14
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MainUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    if-lez v1, :cond_16

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    :cond_16
    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$4;->a:Lcom/tencent/mm/ui/MainUI;

    const-class v2, Lcom/tencent/mm/ui/chatting/ChattingUI;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "Chat_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/MainUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.class Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Conversation;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    const-class v3, Lcom/tencent/mm/ui/bottle/BottleChattingUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "Chat_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

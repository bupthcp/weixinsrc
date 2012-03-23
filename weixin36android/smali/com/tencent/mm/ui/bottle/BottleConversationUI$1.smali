.class Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MListAdapter$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    const v2, 0x7f0a03ce

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ConversationStorage;->e()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->a(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
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

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->b(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleConversationUI;->c(Lcom/tencent/mm/ui/bottle/BottleConversationUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

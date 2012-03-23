.class Lcom/tencent/mm/ui/AddressUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v3, p3, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/AddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/AddressUI;->c(Lcom/tencent/mm/ui/AddressUI;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/AddressUI;->c(Lcom/tencent/mm/ui/AddressUI;)I

    move-result v4

    if-eq v4, v1, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/AddressUI;->c(Lcom/tencent/mm/ui/AddressUI;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/mm/ui/AddressAdapter;->a(I)V

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/AddressUI;->d(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/AddressUI;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/AddressAdapter;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/AddressUI;->b(Z)V

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/AddressUI;->b(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/AddressUI;->b(Z)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/AddressUI;->c(Lcom/tencent/mm/ui/AddressUI;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/AddressAdapter;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/AddressUI;->b(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/AddressUI;->c(Lcom/tencent/mm/ui/AddressUI;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/AddressUI;->e(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@chatroom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->e(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-class v0, Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-virtual {v6, v3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v7, "cardNameToSend is null"

    if-eqz v4, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v7, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "be_send_card_name"

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "received_card_name"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Is_Chatroom"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v6}, Lcom/tencent/mm/ui/AddressUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v3}, Lcom/tencent/mm/ui/AddressUI;->finish()V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/AddressUI;->e(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$4;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

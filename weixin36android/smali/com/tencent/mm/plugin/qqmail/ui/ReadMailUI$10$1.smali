.class Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 11

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    const-class v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "mailid"

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->j(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "subject"

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->k(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->l(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Z)[Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->c(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Z)[Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->d(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Z)[Ljava/lang/String;

    move-result-object v7

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "composeType"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "toList"

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$10;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "composeType"

    invoke-virtual {v4, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    array-length v1, v5

    array-length v2, v6

    add-int/2addr v1, v2

    new-array v8, v1, [Ljava/lang/String;

    array-length v9, v5

    move v2, v0

    move v1, v0

    :goto_2
    if-ge v2, v9, :cond_0

    aget-object v10, v5, v2

    add-int/lit8 v3, v1, 0x1

    aput-object v10, v8, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_0
    array-length v3, v6

    :goto_3
    if-ge v0, v3, :cond_1

    aget-object v5, v6, v0

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v8, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3

    :cond_1
    const-string v0, "toList"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ccList"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_2
    const-string v0, "composeType"

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

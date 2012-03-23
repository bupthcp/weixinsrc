.class Lcom/tencent/mm/ui/QQSyncUI$16;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/QQSyncUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->o(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->o(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->p(Lcom/tencent/mm/ui/QQSyncUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a038d

    :goto_0
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->o(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->o(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->q(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/ProgressDialog;

    :cond_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/QQSyncUI;->p(Lcom/tencent/mm/ui/QQSyncUI;)Z

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/QQSyncUI;->a(Landroid/content/Context;ZLcom/tencent/qqpim/interfaces/ISyncModel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v2, 0x10101

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v2, 0x10102

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/QQSyncUI;->a(Lcom/tencent/qqpim/interfaces/ISyncModel;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/QQSyncUI;->d(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/storage/Conversation;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/QQSyncUI;->r(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v3

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v3, v4, v5, v1, v6}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->s(Lcom/tencent/mm/ui/QQSyncUI;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->b(Lcom/tencent/qqpim/interfaces/ISyncModel;)V

    :cond_3
    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$16;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a0390

    const v2, 0x7f0a0010

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :cond_4
    return-void

    :cond_5
    const v0, 0x7f0a038e

    goto/16 :goto_0
.end method

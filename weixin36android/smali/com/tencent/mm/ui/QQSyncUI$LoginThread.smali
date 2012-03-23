.class Lcom/tencent/mm/ui/QQSyncUI$LoginThread;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private synthetic d:Lcom/tencent/mm/ui/QQSyncUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->d:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MicroMsg.QQSyncUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qqsync login with binduin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->d:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->b(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ILoginModel;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->o(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/interfaces/ILoginModel;->loginByMd5(Ljava/lang/String;[B)I

    move-result v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "autologin"

    iget-boolean v2, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->c:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->d:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->k(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->d:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->k(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->d:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->h(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$LoginThread;->d:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->h(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

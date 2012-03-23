.class Lcom/tencent/mm/ui/QQSyncUI$SyncThread;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/QQSyncUI;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/QQSyncUI$SyncThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->b:Z

    return v0
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/QQSyncUI$SyncThread$1;-><init>(Lcom/tencent/mm/ui/QQSyncUI$SyncThread;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    new-instance v1, Lcom/tencent/qqpim/model/SyncModel;

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpim/model/SyncModel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/QQSyncUI;->a(Lcom/tencent/mm/ui/QQSyncUI;Lcom/tencent/qqpim/interfaces/ISyncModel;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/QQSyncUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/ISyncModel;->addContactAdapter(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->p(Lcom/tencent/mm/ui/QQSyncUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->safeBackupAll()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    :goto_0
    iput-boolean v6, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->b:Z

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->t(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "progress"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/qqpim/interfaces/ISyncModel;->getProgressPrecent()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->SUCCEED:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    if-ne v0, v3, :cond_1

    const-string v0, "status"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->t(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$SyncThread;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->safeRestoreAll()Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;->FAIL:Lcom/tencent/qqpim/interfaces/ISyncModel$SyncResult;

    if-ne v0, v3, :cond_2

    const-string v0, "status"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const-string v0, "status"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.class Lcom/tencent/mm/ui/QQSyncUI$15$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/QQSyncUI$15;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI$15;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$15$2;->a:Lcom/tencent/mm/ui/QQSyncUI$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$2;->a:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$15$2;->a:Lcom/tencent/mm/ui/QQSyncUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/QQSyncUI$15;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->e(Lcom/tencent/mm/ui/QQSyncUI;)Lcom/tencent/qqpim/interfaces/ISyncModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qqpim/interfaces/ISyncModel;->clearLoginInformation()V

    :cond_0
    return-void
.end method

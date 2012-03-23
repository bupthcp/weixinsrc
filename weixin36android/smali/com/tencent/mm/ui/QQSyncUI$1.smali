.class Lcom/tencent/mm/ui/QQSyncUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/QQSyncUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$1;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$1;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const-class v2, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "title"

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$1;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v3, 0x7f0a0280

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "rawUrl"

    iget-object v2, p0, Lcom/tencent/mm/ui/QQSyncUI$1;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/QQSyncUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$1;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/QQSyncUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

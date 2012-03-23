.class Lcom/tencent/mm/ui/QQSyncUI$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/QQSyncUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/QQSyncUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/QQSyncUI$11;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$11;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/QQSyncUI;->f(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$11;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/QQSyncUI;->f(Lcom/tencent/mm/ui/QQSyncUI;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/QQSyncUI$11;->a:Lcom/tencent/mm/ui/QQSyncUI;

    const v1, 0x7f0a00b9

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/QQSyncUI$11$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/QQSyncUI$11$1;-><init>(Lcom/tencent/mm/ui/QQSyncUI$11;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/QQSyncUI$11;->a:Lcom/tencent/mm/ui/QQSyncUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/QQSyncUI;->a(Lcom/tencent/mm/ui/QQSyncUI;Ljava/lang/String;)V

    goto :goto_0
.end method

.class Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->a(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->b(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;->a:Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    const v5, 0x7f0a0419

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1$1;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1$1;-><init>(Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;Lcom/tencent/mm/modelsimple/NetSceneGmailOper;)V

    invoke-static {v2, v3, v4, v6, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->a(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method

.class Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v4, 0x7f0a0010

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    const v1, 0x7f0a02b5

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;->b(Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;

    const v5, 0x7f0a02b6

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1$1;

    invoke-direct {v6, p0, v1}, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1$1;-><init>(Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI$1;Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactVerifyUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method

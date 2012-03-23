.class Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const v7, 0x7f0a0010

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)I

    move-result v0

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)I

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_0
    new-instance v3, Lcom/tencent/mm/modelsimple/NetSceneSendCard;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v5}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v2, v1

    :cond_1
    invoke-direct {v3, v4, v0, v2}, Lcom/tencent/mm/modelsimple/NetSceneSendCard;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v3

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->c()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-virtual {v4, v7}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    const v6, 0x7f0a012d

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2$1;-><init>(Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;Lcom/tencent/mm/modelsimple/NetSceneSendCard;)V

    invoke-static {v3, v4, v5, v1, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :goto_2
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSendCard;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/mm/modelsimple/NetSceneSendCard;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;->a:Lcom/tencent/mm/ui/qrcode/ShareToQQUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02f9

    invoke-static {v0, v1, v7}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_2
.end method

.class Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->a(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneSendFeedBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/modelsimple/NetSceneSendFeedBack;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v2, 0x3b

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;->a:Lcom/tencent/mm/ui/setting/SendFeedBackUI;

    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2$1;

    invoke-direct {v6, p0, v1}, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2$1;-><init>(Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;Lcom/tencent/mm/modelsimple/NetSceneSendFeedBack;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->a(Lcom/tencent/mm/ui/setting/SendFeedBackUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

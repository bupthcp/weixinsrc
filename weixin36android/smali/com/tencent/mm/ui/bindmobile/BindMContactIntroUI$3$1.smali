.class Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v0, v0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v1, v1, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v2, v2, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->c()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v3, v3, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;

    iget-object v4, v4, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3;->a:Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    const v5, 0x7f0a02b9

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1$1;-><init>(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI$3$1;Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;->a(Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
